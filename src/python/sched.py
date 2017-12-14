#!/usr/bin/env python3

from sched import input_, parameter
import vex
from util import f2str
import key

from bottle import SimpleTemplate
import schedlib as s

import argparse
import sys
import io

parser = argparse.ArgumentParser(
    description="Python wrapper around SCHED")
parser.add_argument(
    "-t", "--template", nargs="?", const="", default=None, metavar="FILE",
    help="Input is a template which renders to KEYIN text using the following "
    "syntax: "
    "Expressions between {{...}} will be evaluated to strings. "
    "Python code lines start with %% and code blocks are surrounded by "
    "<%% and %%> tokens. All other text will be copied verbatim to the output. "
    "See http://bottlepy.org/docs/dev/stpl.html for the complete "
    "documentation. The rendered KEYIN text is then processed by "
    "SCHED. Since the template is rendered after all input is read, "
    "SCHED is non-interactive in this mode. If a parameter value is given, "
    "the resulting KEYIN text is written to that file. Warning: "
    "do not run an untrusted template, since it can contain arbitrary code.")
args = parser.parse_args()

if args.template is None:
    stdin = sys.stdin
else:
    keyin_text = SimpleTemplate(sys.stdin.read()).render()
    stdin = io.StringIO(keyin_text)
    if args.template != "":
        with open(args.template, "w") as f:
            f.write(keyin_text)
        stdin.name = args.template
    else:
        stdin.name = "Rendered template"

# workaround for https://github.com/numpy/numpy/issues/9370
# summary of the different views of strings
# python: strings are a type of their own, which includes an encoding
# f2py: returns bytes when fortran would return character*, 
#       but when assigning a bytes variable to a character*, 
#       f2py will interpret it as a array of integers, convert each of those 
#       integers to a string, and then trim that string to 1 character,
#       for example b"az" -> [97, 122] -> ["97", "122"] -> "91".
#       assigning a python string to an f2py generated fortran string gives
#       to correct result
# fortran: strings are fixed length character arrays, fortran doesn't have a
#          end-of-string marker, it will just append blanks (spaces) in any
#          string operation, eg "foo   " == "foo" evaluates to true.
#          to mimic this behaviour, extend strings with spaces to fortran length
s.vern.vernum, version = s.versched()
s.verc.version = bytes(version).decode().ljust(s.verc.version.itemsize)
s.stmsg()

restart = False

while True:
    
    s.setn1.nset = 0
    s.srlis.srln = 0

    input_(stdin)
    # with open("/tmp/common_blocks.python", "wb") as f:
    #     import util; util.dump_common_blocks(f)

    # s.input()
    # with open("/tmp/common_blocks.fortran", "wb") as f:
    #     import util; util.dump_common_blocks(f)
    s.defaults()
    s.schpre()
    s.chksc1()
    s.schopt()
    s.dopfq()
    s.getsun()
    s.chkscn()
    s.schsum(restart)
    s.fluxh(parameter.ilog, s.schsco.logfile)
    mkfiles, restart = s.plotter(restart)

    if restart:
        s.delscr(restart)
        s.wlog(0, " ")
        s.wlog(0, " ===================  RESTART  ===================== ")
        s.wlog(0, " ")
    else:
        break

if mkfiles and bytes(s.schsco.optmode).decode().strip() != "UPTIME" and \
   not s.schcon.noset:
    s.scnrange()
    s.omsout(restart)
    s.vexout()

    with open("{}.vex2".format(f2str(s.schc1.expcode).lower()), "w") \
         as vex_file:
        vex.write(vex_file)
    
    if s.schcon.dovsop:
        s.vsopwrt()

    s.flags()
    s.stafiles()
    

s.delscr(False)
s.putout(" -------  Finished  ----------- ")
