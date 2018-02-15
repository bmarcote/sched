#!/usr/bin/env python3
import numpy.f2py as f2py

import platform
import argparse
import sys
import os
import collections

# this relies on this file being in $SCHED/src
sched_srcdir = os.path.split(os.path.realpath(__file__))[0]

parser = argparse.ArgumentParser(
    description="Wrapper around f2py. Builds a list of source file depending "
    "on the system architecture. Other arguments will be forwarded to f2py.",
    add_help=False)
parser.add_argument("-h", "--help", help="show this help and f2py's",
                    action="store_true")
parser.add_argument("--schedarch",  
                    choices=["linux", "unix", "sun", "hp"],
                    default=None, 
                    help="Operating system for machine dependent fortran "
                    "routines. Defaults to linux.")
args, other_args = parser.parse_known_args()
if args.help:
    parser.print_help()
    print(f2py.f2py2e.__usage__)
    sys.exit(0)

if args.schedarch is None:
    arch = "linux"
    system = platform.system()
    # FIX: extent
    if system not in ["Linux", "MacOS"]:
        print("Warning: unknown architecture '{}'. Will fall back to '{}'.".\
              format(system, arch))
else:
    arch = args.schedarch

def to_paths(text):
    return [line.split("/") for line in text.split()]

# source files to compile
sources = to_paths("""
Cit/geoid.f
Cit/geoxyz.f
Cit/julda.f
Cit/len1.f
Cit/pangle.f
Cit/tdatecw.f
Cit/tform.f
Cit/upcase.f
Jpl/const.f
Jpl/findt.f
Jpl/fsizer2.f
Jpl/interp.f
Jpl/jplep2.f
Jpl/jplpo2.f
Jpl/jplver.f
Jpl/pleph.f
Jpl/pvobs.f
Jpl/split.f
Jpl/state.f
Jpl/transp.f
Plot/plbeam.f
Plot/plfft.f
Plot/pltran.f
Plot/plver.f
Plot/plweig.f
Plotstub/pgqinf.f
Satstub/satep.f
Satstub/sattle.f
Sched/accsrc.f
Sched/addgeo.f
Sched/addpeak.f
Sched/antpos.f
Sched/autodown.f
Sched/azelxyew.f
Sched/azelxyns.f
Sched/badlo.f
Sched/bbcalt.f
Sched/bbccdas.f
Sched/bbcdbbc.f
Sched/bbcgeo.f
Sched/bbckvsr.f
Sched/bbclba.f
Sched/bbcm4.f
Sched/bbcrdbe.f
Sched/bbcvlba.f
Sched/bbcvs2.f
Sched/bbcwidar.f
Sched/chars.f
Sched/chkcdas.f
Sched/chkcode.f
Sched/chkcor.f
Sched/chkdbbc.f
Sched/chkdbfq.f
Sched/chkdisk.f
Sched/chkfirm.f
Sched/chkgdar.f
Sched/chkif.f
Sched/chkrdbe.f
Sched/chkrdfq.f
Sched/chksc1.f
Sched/chkscn.f
Sched/chkset.f
Sched/chksfil.f
Sched/chkspd.f
Sched/chkvdar.f
Sched/chkvdifx.f
Sched/chkvla.f
Sched/chkvlba.f
Sched/chkwidar.f
Sched/cordef.f
Sched/corlst.f
Sched/corsoc.f
Sched/crdwrt.f
Sched/defaults.f
Sched/defset.f
Sched/delscr.f
Sched/dequal.f
Sched/diskpos.f
Sched/dopcrd.f
Sched/dopfq.f
Sched/dwcase.f
Sched/errlog.f
Sched/errset.f
Sched/fcompare.f
Sched/fileopen.f
Sched/flags.f
Sched/flagwrt.f
Sched/flush.f
Sched/fmatch.f
Sched/fmtmkiii.f
Sched/fmtmkiv.f
Sched/fmtpick.f
Sched/fmts2.f
Sched/fmtvlba.f
Sched/frchar.f
Sched/fsfreq.f
Sched/fsmatch.f
Sched/fspread.f
Sched/fsvlba.f
Sched/geochk.f
Sched/geomake.f
Sched/geoqual.f
Sched/getcrdn.f
Sched/getfset.f
Sched/getpairs.f
Sched/getsun.f
Sched/glstday.f
Sched/gmkscn.f
Sched/gnset.f
Sched/haavai.f
Sched/halim.f
Sched/harmwarn.f
Sched/headpos.f
Sched/horchk.f
Sched/ifdbbc.f
Sched/inarray.f
Sched/jplgot.f
Sched/listfreq.f
Sched/lsqfit.f
Sched/lst2ut.f
Sched/lstfreq.f
Sched/makeptg.f
Sched/makescn.f
Sched/makeseg.f
Sched/maxbas.f
Sched/mtaltaz.f
Sched/mtequat.f
Sched/mtxyew.f
Sched/mtxyns.f
Sched/omscor.f
Sched/omsfreq.f
Sched/omsout.f
Sched/omsset.f
Sched/omssrc.f
Sched/omssta.f
Sched/optcells.f
Sched/optcsar.f
Sched/optcspt.f
Sched/optcsub.f
Sched/opthas.f
Sched/opthiel.f
Sched/optnone.f
Sched/optsch.f
Sched/optskd.f
Sched/opttim.f
Sched/optupt.f
Sched/pcalfq.f
Sched/phint.f
Sched/pkfinish.f
Sched/pn3db.f
Sched/protect.f
Sched/prtfreq.f
Sched/prtsch.f
Sched/prtscn.f
Sched/prtset.f
Sched/ptpat.f
Sched/ptvlba.f
Sched/ran5.f
Sched/rdbelevt.f
Sched/rdbemtch.f
Sched/recctl.f
Sched/reconfig.f
Sched/resync.f
Sched/rotvlba.f
Sched/sameset.f
Sched/satgot.f
Sched/sattim.f
Sched/sbhours.f
Sched/sbpair.f
Sched/scanid.f
Sched/sch24.f
Sched/schday.f
Sched/schgeo.f
Sched/schopt.f
Sched/schpre.f
Sched/schsum.f
Sched/schtim.f
Sched/scndup.f
Sched/scngeo.f
Sched/scnrange.f
Sched/scramble.f
Sched/sdopincr.f
Sched/setband.f
Sched/setbbc.f
Sched/setchan.f
Sched/setcop.f
Sched/setdefs.f
Sched/setexpnd.f
Sched/setfcat.f
Sched/setfirm.f
Sched/setfmt.f
Sched/setform.f
Sched/setfreq.f
Sched/sethw1.f
Sched/setnorec.f
Sched/setrec.f
Sched/setstdef.f
Sched/settps.f
Sched/settrk.f
Sched/setusyn.f
Sched/sfinfo.f
Sched/shortn.f
Sched/sidtim.f
Sched/slew.f
Sched/socdef.f
Sched/srcflg.f
Sched/srcloc.f
Sched/srclst.f
Sched/srcwrt.f
Sched/srfinish.f
Sched/srinsert.f
Sched/srlist.f
Sched/srlpre.f
Sched/stafiles.f
Sched/stafrd.f
Sched/stageo.f
Sched/stalst.f
Sched/stano.f
Sched/stauv.f
Sched/stmsg.f
Sched/stsum.f
Sched/sumdat.f
Sched/sumdesc.f
Sched/sumope.f
Sched/sumscn.f
Sched/sunpos.f
Sched/sunwarn.f
Sched/suvopt.f
Sched/tavlba.f
Sched/timej.f
Sched/tpmfix.f
Sched/tpsum.f
Sched/tptpns.f
Sched/twohdset.f
Sched/uvopt.f
Sched/uvqual.f
Sched/v2dout.f
Sched/versched.f
Sched/vexout.f
Sched/vlascns.f
Sched/vlba.f
Sched/vlbabws.f
Sched/vlbachar.f
Sched/vlbadk.f
Sched/vlbaend.f
Sched/vlbaini.f
Sched/vlbaint.f
Sched/vlbareal.f
Sched/vlbast.f
Sched/vlbastop.f
Sched/vlbasu.f
Sched/vsopwrt.f
Sched/wlog.f
Sched/wrap.f
Sched/wrapzone.f
Sched/wrtcov.f
Sched/wrtfreq.f
Sched/wrtmsg.f
Sla/amp.f
Sla/ampqk.f
Sla/calyd.f
Sla/cldj.f
Sla/clyd.f
Sla/cs2c.f
Sla/dat.f
Sla/dcc2s.f
Sla/dcs2c.f
Sla/deuler.f
Sla/dimxv.f
Sla/djcl.f
Sla/dmxm.f
Sla/dmxv.f
Sla/dranrm.f
Sla/dsep.f
Sla/dsepv.f
Sla/dt.f
Sla/dvdv.f
Sla/dvn.f
Sla/dvxv.f
Sla/earth.f
Sla/ecor.f
Sla/epb2d.f
Sla/epj.f
Sla/eqeqx.f
Sla/evp.f
Sla/fk45z.f
Sla/fk524.f
Sla/fk54z.f
Sla/gmst.f
Sla/map.f
Sla/mappa.f
Sla/mapqk.f
Sla/mapqkz.f
Sla/nut.f
Sla/nutc.f
Sla/pm.f
Sla/prebn.f
Sla/prec.f
Sla/preces.f
Sla/precl.f
Sla/prenut.f
Sla/rvlsrk.f
Sla/vdv.f
Vex/chk4dar.f
Vex/chkjive.f
Vex/chkv4dar.f
Vex/vxcfan.f
Vex/vxcfbb.f
Vex/vxcfda.f
Vex/vxcffq.f
Vex/vxcfhp.f
Vex/vxcfif.f
Vex/vxcfph.f
Vex/vxcfpo.f
Vex/vxcfrl.f
Vex/vxcfsi.f
Vex/vxcftr.f
Vex/vxcovr.f
Vex/vxdefs.f
Vex/vxfqvx.f
Vex/vxgtst.f
Vex/vxmode.f
Vex/vxnhds.f
Vex/vxnman.f
Vex/vxnmbb.f
Vex/vxnmda.f
Vex/vxnmfq.f
Vex/vxnmhp.f
Vex/vxnmif.f
Vex/vxnmph.f
Vex/vxnmpo.f
Vex/vxnmpr.f
Vex/vxnmrl.f
Vex/vxnmsi.f
Vex/vxnmtr.f
Vex/vxnmxx.f
Vex/vxrl16.f
Vex/vxrl8.f
Vex/vxs2df.f
Vex/vxs2md.f
Vex/vxs2vl.f
Vex/vxsch.f
Vex/vxschk.f
Vex/vxscns.f
Vex/vxsort.f
Vex/vxstky.f
Vex/vxstli.f
Vex/vxstnm.f
Vex/vxsudt.f
Vex/vxtels.f
Vex/vxton2.f
Vex/vxtone.f
Vex/vxtrafq.f
Vex/vxtraif.f
Vex/vxtramd.f
Vex/vxtran.f
Vex/vxtraph.f
Vex/vxunql.f
Vex/vxvbrx.f
Vex/vxvers.f
Vex/vxwran.f
Vex/vxwrbb.f
Vex/vxwrda.f
Vex/vxwrex.f
Vex/vxwrfq.f
Vex/vxwrgl.f
Vex/vxwrhp.f
Vex/vxwrif.f
Vex/vxwrmd.f
Vex/vxwrph.f
Vex/vxwrpo.f
Vex/vxwrpr.f
Vex/vxwrrl.f
Vex/vxwrsi.f
Vex/vxwrst.f
Vex/vxwrsu.f
Vex/vxwrt.f
Vex/vxwrtr.f
python/f2pyinc.f
python/tformwrp.f
""")

if arch in ["hp", "linux", "sun", "unix"]:
    sources += to_paths("""
Cit/sys_unix/envir.f
Cit/sys_unix/krdlin.f
Cit/sys_unix/prognm.f
Cit/sys_unix/putout.f
Cit/sys_unix/schdefs.f
Cit/sys_unix/symsub.f
Cit/sys_unix/tsttty.f
Cit/sys_unix/vmshlp.f
""")

if arch == "linux":
    sources += to_paths("""
Cit/sys_linux/error.f
Cit/sys_linux/exit.c
Cit/sys_linux/gerror.c
Cit/sys_linux/idate.c
Cit/sys_linux/isatty.c
Cit/sys_linux/vlbope.f
""")
elif arch in ["sun", "hp"]:
    sources += to_paths("""
Cit/sys_sun/error.f
Cit/sys_sun/vlbope.f
""")

# fortran function to create a python interface for
functions = """
accsrc 
chkcode 
chkcor 
chksc1 
chkscn 
cordef 
defaults 
delscr 
dopfq 
errlog 
flags 
fluxh 
geoxyz 
getsun 
jplver 
listfreq 
lst2ut 
omsout 
plbeam 
plver 
putout 
sattim 
schdefs 
schopt 
schpre 
schsum 
scnrange 
sidtim 
sla_calyd 
sla_cldj 
sla_dat 
socdef 
srcflg 
srlist 
stafiles 
stano 
stauv 
stmsg 
tdatecw 
tformwrp 
timej 
tptpns 
versched 
vexout 
vsopwrt 
vxton2 
wlog 
wrtmsg
""".split()

# F2py assumes a Fortran dialect from the file name. For F77, it only accepts
# comments starting with a 'C'. But Sched uses '!' for comments too. This hack
# forces f2py to scan for those too.
f2py.crackfortran.is_f_file = lambda _: False

# Call f2py, it reads arguments from sys.argv, so fill that
sys.argv[1:] = "-c -m schedlib only: {functions} : {sources}".format(
    functions=" ".join(functions), 
    sources=" ".join((os.path.join(sched_srcdir, *s) for s in sources))).split()
sys.argv.extend(other_args)
os.chdir(os.path.join(sched_srcdir, "python"))
try:
    f2py.f2py2e.main()
except:
    import traceback
    traceback.print_exc()
    sys.exit(1)
