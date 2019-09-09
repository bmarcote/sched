!*  Schedule for VLBA_MK   *!
!*  Experiment hsaddc   *!
!* Schedule Version:       1.00 *!
!* Processed by SCHED version:  11.50 *!
!* PI:       Craig Walker *!
!* Address:  NRAO *!
!*           PO Box 0 *!
!*           Socorro, NM 87801 *!
!*  *!
!* Phone:    575 835 7247 *!
!* EMAIL:    cwalker@nrao.edu *!
!* Fax: *!
!* Phone during observation: 575 517 0680 *!
!* Observing mode: *!
!* Notes: *!
!*  *!
!*  *!
!*  *!
!*  Start at 17h00m00s     Wed, 2012 Apr 25  Day of year  116   *!
program=hsaddc  

diskformat=mark5c
media=(1,disk)

!* The first scan is preceeded by a setup scan *!
!* that ends at the start time of the first scan  *!

!* --- Scan from 17h00m00s to 17h09m00s   Wed, 2012 Apr 25 --- *!
sname='J0217+7349'  ra=02h17m30.813367s  dec= 73d49'32.62177"  qual=999  calib='V'
maxcaltime= 120
fe=(1,6cm),(3,6cm)
fexfer=(2,norm)
noise=(1,low-s),(2,low-s),(3,low-s),(4,low-s)
synth=( 1,13.6),( 2, 4.1),( 3,13.6)
logging=STANDARD
nchan= 4
format=VLBA1:4
ifdistr=(1,0),(2,0),(3,0),(4,0)
baseband=(1,1),(2,2),(3,3),(4,4)
ifchan=(1,A),(2,C),(3,A),(4,C)
sideband=(1,U),(2,U),(3,U),(4,U)
bits=(1,2),(2,2),(3,2),(4,2)
period=(1,1),(2,1),(3,1),(4,1)
level=(1,-1),(2,-1),(3,-1),(4,-1)
azcolim=   0.00  elcolim=   0.00
bbsynth=( 1,824.25),( 2,824.25),( 3,952.25),( 4,952.25)
bbfilter=(1,16M),(2,16M),(3,16M),(4,16M)
pcal=1MHZ
pcalxbit1=(1,S1),(2,S3),(3,S1),(4,S3),(5,S1),(6,S2),(7,S3),(8,S4)
pcalxbit2=(1,S2),(2,S4),(3,S2),(4,S4),(5,M1),(6,M2),(7,M3),(8,M4)
pcalxfreq1=(1,750),(2,750),(3,13750),(4,13750),(5,0),(6,0),(7,0),(8,0)
pcalxfreq2=(1,750),(2,750),(3,13750),(4,13750),(5,0),(6,0),(7,0),(8,0)
samplerate=32M
disk=off
  date = 2012Apr25
stop=17h00m00s   !NEXT!        
qual=  0
disk=off
stop=17h09m00s   !NEXT!

!* --- Scan from 17h10m12s to 17h15m12s   Wed, 2012 Apr 25 --- *!
sname='J0217+7349'  ra=02h17m30.813367s  dec= 73d49'32.62177"  qual=999  calib='V'
disk=off
stop=17h10m12s   !NEXT!        
qual=  0
disk=off
stop=17h15m12s   !NEXT!

!* --- Scan from 17h15m59s to 17h20m59s   Wed, 2012 Apr 25 --- *!
sname='J0243+7120'  ra=02h43m30.891349s  dec= 71d20'17.90421"  qual=999  calib='V'
disk=off
stop=17h15m59s   !NEXT!        
qual=  0
disk=off
stop=17h20m59s   !NEXT!

!* --- Scan from 17h21m47s to 17h26m47s   Wed, 2012 Apr 25 --- *!
sname='J0217+7349'  ra=02h17m30.813367s  dec= 73d49'32.62177"  qual=999  calib='V'
disk=off
stop=17h21m47s   !NEXT!        
qual=  0
disk=off
stop=17h26m47s   !NEXT!

!* --- Scan from 17h27m34s to 17h32m34s   Wed, 2012 Apr 25 --- *!
sname='J0243+7120'  ra=02h43m30.891349s  dec= 71d20'17.90421"  qual=999  calib='V'
disk=off
stop=17h27m34s   !NEXT!        
qual=  0
disk=off
stop=17h32m34s   !NEXT!

!* --- Scan from 17h33m22s to 17h38m22s   Wed, 2012 Apr 25 --- *!
sname='J0217+7349'  ra=02h17m30.813367s  dec= 73d49'32.62177"  qual=999  calib='V'
disk=off
stop=17h33m22s   !NEXT!        
qual=  0
disk=off
stop=17h38m22s   !NEXT!

!* --- Scan from 17h38m42s to 17h39m42s   Wed, 2012 Apr 25 --- *!
sname='J0217+7349'  ra=02h17m30.813367s  dec= 73d49'32.62177"  qual=999  calib='V'
disk=off
stop=17h38m42s   !NEXT!        
qual=  0
disk=off
stop=17h39m42s   !NEXT!

!* --- Scan from 17h40m02s to 17h45m02s   Wed, 2012 Apr 25 --- *!
sname='J0217+7349'  ra=02h17m30.813367s  dec= 73d49'32.62177"  qual=999  calib='V'
disk=off
stop=17h40m02s   !NEXT!        
qual=  0
disk=off
stop=17h45m02s   !NEXT!

!* --- Scan from 17h45m49s to 17h50m49s   Wed, 2012 Apr 25 --- *!
sname='J0243+7120'  ra=02h43m30.891349s  dec= 71d20'17.90421"  qual=999  calib='V'
disk=off
stop=17h45m49s   !NEXT!        
qual=  0
disk=off
stop=17h50m49s   !NEXT!

!* --- Scan from 17h51m37s to 17h56m37s   Wed, 2012 Apr 25 --- *!
sname='J0217+7349'  ra=02h17m30.813367s  dec= 73d49'32.62177"  qual=999  calib='V'
disk=off
stop=17h51m37s   !NEXT!        
qual=  0
disk=off
stop=17h56m37s   !NEXT!

!* --- Scan from 17h57m24s to 18h02m24s   Wed, 2012 Apr 25 --- *!
sname='J0243+7120'  ra=02h43m30.891349s  dec= 71d20'17.90421"  qual=999  calib='V'
disk=off
stop=17h57m24s   !NEXT!        
qual=  0
disk=off
stop=18h02m24s   !NEXT!

!* --- Scan from 18h03m11s to 18h08m11s   Wed, 2012 Apr 25 --- *!
sname='J0217+7349'  ra=02h17m30.813367s  dec= 73d49'32.62177"  qual=999  calib='V'
disk=off
stop=18h03m11s   !NEXT!        
qual=  0
disk=off
stop=18h08m11s   !NEXT!

!* --- Scan from 18h24m11s to 18h29m11s   Wed, 2012 Apr 25 --- *!
sname='J0217+7349'  ra=02h17m30.813367s  dec= 73d49'32.62177"  qual=999  calib='V'
fe=(1,7mm),(3,7mm)
synth=( 1, 3.9),( 2, 7.6),( 3,11.6)
disk=off
stop=18h24m11s   !NEXT!        
qual=  0
disk=off
stop=18h29m11s   !NEXT!

!* --- Scan from 18h29m58s to 18h34m58s   Wed, 2012 Apr 25 --- *!
sname='J0243+7120'  ra=02h43m30.891349s  dec= 71d20'17.90421"  qual=999  calib='V'
disk=off
stop=18h29m58s   !NEXT!        
qual=  0
disk=off
stop=18h34m58s   !NEXT!

!* --- Scan from 18h35m46s to 18h40m46s   Wed, 2012 Apr 25 --- *!
sname='J0217+7349'  ra=02h17m30.813367s  dec= 73d49'32.62177"  qual=999  calib='V'
disk=off
stop=18h35m46s   !NEXT!        
qual=  0
disk=off
stop=18h40m46s   !NEXT!

!* --- Scan from 18h41m33s to 18h46m33s   Wed, 2012 Apr 25 --- *!
sname='J0243+7120'  ra=02h43m30.891349s  dec= 71d20'17.90421"  qual=999  calib='V'
disk=off
stop=18h41m33s   !NEXT!        
qual=  0
disk=off
stop=18h46m33s   !NEXT!

!* --- Scan from 18h47m20s to 18h52m20s   Wed, 2012 Apr 25 --- *!
sname='J0217+7349'  ra=02h17m30.813367s  dec= 73d49'32.62177"  qual=999  calib='V'
disk=off
stop=18h47m20s   !NEXT!        
qual=  0
disk=off
stop=18h52m20s   !NEXT!

!* --- Scan from 19h03m00s to 19h08m00s   Wed, 2012 Apr 25 --- *!
sname='J0217+7349'  ra=02h17m30.813367s  dec= 73d49'32.62177"  qual=999  calib='V'
disk=off
stop=19h03m00s   !NEXT!        
qual=  0
disk=off
stop=19h08m00s   !NEXT!

!* --- Scan from 19h08m46s to 19h13m46s   Wed, 2012 Apr 25 --- *!
sname='J0243+7120'  ra=02h43m30.891349s  dec= 71d20'17.90421"  qual=999  calib='V'
disk=off
stop=19h08m46s   !NEXT!        
qual=  0
disk=off
stop=19h13m46s   !NEXT!

!* --- Scan from 19h14m33s to 19h19m33s   Wed, 2012 Apr 25 --- *!
sname='J0217+7349'  ra=02h17m30.813367s  dec= 73d49'32.62177"  qual=999  calib='V'
disk=off
stop=19h14m33s   !NEXT!        
qual=  0
disk=off
stop=19h19m33s   !NEXT!

!* --- Scan from 19h19m53s to 19h24m53s   Wed, 2012 Apr 25 --- *!
sname='J0217+7349'  ra=02h17m30.813367s  dec= 73d49'32.62177"  qual=999  calib='V'
disk=off
stop=19h19m53s   !NEXT!        
qual=  0
disk=off
stop=19h24m53s   !NEXT!

!* --- Scan from 19h25m40s to 19h30m40s   Wed, 2012 Apr 25 --- *!
sname='J0243+7120'  ra=02h43m30.891349s  dec= 71d20'17.90421"  qual=999  calib='V'
disk=off
stop=19h25m40s   !NEXT!        
qual=  0
disk=off
stop=19h30m40s   !NEXT!

!* --- Scan from 19h31m26s to 19h36m26s   Wed, 2012 Apr 25 --- *!
sname='J0217+7349'  ra=02h17m30.813367s  dec= 73d49'32.62177"  qual=999  calib='V'
disk=off
stop=19h31m26s   !NEXT!        
qual=  0
disk=off
stop=19h36m26s   !NEXT!

!* --- Scan from 19h48m29s to 19h50m29s   Wed, 2012 Apr 25 --- *!
sname='J0303+4716'  ra=03h03m35.242226s  dec= 47d16'16.27551"  qual=999  calib='V'
format=VLBA1:1
bbsynth=( 1,726.25),( 2,726.25),( 3,776.25),( 4,776.25)
bbfilter=(1,2M),(2,2M),(3,2M),(4,2M)
pcalxfreq1=(3,1750),(4,1750)
pcalxfreq2=(3,1750),(4,1750)
samplerate=4M
disk=off
stop=19h48m29s   !NEXT!        
qual=  0
disk=off
stop=19h50m29s   !NEXT!

!* --- Scan from 19h51m40s to 19h56m40s   Wed, 2012 Apr 25 --- *!
sname='P-SPER'  ra=02h22m51.713000s  dec= 58d35'11.50000"  qual=999  calib='L'
disk=off
stop=19h51m40s   !NEXT!        
qual=  0
disk=off
stop=19h56m40s   !NEXT!

!* --- Scan from 19h57m50s to 19h59m50s   Wed, 2012 Apr 25 --- *!
sname='J0303+4716'  ra=03h03m35.242226s  dec= 47d16'16.27551"  qual=999  calib='V'
disk=off
stop=19h57m50s   !NEXT!        
qual=  0
disk=off
stop=19h59m50s   !NEXT!

!* --- Scan from 20h01m01s to 20h06m01s   Wed, 2012 Apr 25 --- *!
sname='P-SPER'  ra=02h22m51.713000s  dec= 58d35'11.50000"  qual=999  calib='L'
disk=off
stop=20h01m01s   !NEXT!        
qual=  0
disk=off
stop=20h06m01s   !NEXT!

!* --- Scan from 20h07m16s to 20h09m16s   Wed, 2012 Apr 25 --- *!
sname='J0303+4716'  ra=03h03m35.242226s  dec= 47d16'16.27551"  qual=999  calib='V'
disk=off
stop=20h07m16s   !NEXT!        
qual=  0
disk=off
stop=20h09m16s   !NEXT!

!* --- Scan from 20h38m40s to 20h39m40s   Wed, 2012 Apr 25 --- *!
!*  Following scan added by Sched for reference pointing  *!
sname='P-TXCAM'  ra=05h00m51.127000s  dec= 56d10'53.98000"  qual=999  calib='L'
bbsynth=( 1,717.25),( 2,717.25),( 3,817.25),( 4,817.25)
pcal=OFF
pcalxbit1=(2,S2),(3,S3),(4,S4),(5,OFF),(6,OFF),(7,OFF),(8,OFF)
pcalxbit2=(1,M1),(2,M2),(3,M3),(4,M4),(5,OFF),(6,OFF),(7,OFF),(8,OFF)
pcalxfreq1=(1,0),(2,0),(3,0),(4,0)
pcalxfreq2=(1,0),(2,0),(3,0),(4,0)
disk=off
stop=20h38m40s   !NEXT!        
qual=  0
peakchan =  1
disk=off
stop=20h39m40s   !NEXT!

!* --- Scan from 20h39m46s to 20h40m46s   Wed, 2012 Apr 25 --- *!
!*  Following scan added by Sched for reference pointing  *!
sname='P-TXCAM'  ra=05h00m51.127000s  dec= 56d10'53.98000"  qual=999  calib='L'
disk=off
stop=20h39m46s   !NEXT!        
qual=  0
peakchan =  1
disk=off
stop=20h40m46s   !NEXT!

!* --- Scan from 20h41m38s to 20h46m38s   Wed, 2012 Apr 25 --- *!
sname='J0217+7349'  ra=02h17m30.813367s  dec= 73d49'32.62177"  qual=999  calib='V'
fe=(2,3mm),(4,3mm)
synth=( 1,12.9),( 2, 4.9),( 3,12.1)
format=VLBA1:4
ifchan=(1,B),(2,D),(3,B),(4,D)
bbsynth=( 1,696.25),( 2,696.25),( 3,824.25),( 4,824.25)
bbfilter=(1,16M),(2,16M),(3,16M),(4,16M)
pcal=1MHZ
pcalxbit1=(2,S3),(3,S1),(4,S3),(5,S1),(6,S2),(7,S3),(8,S4)
pcalxbit2=(1,S2),(2,S4),(3,S2),(4,S4),(5,M1),(6,M2),(7,M3),(8,M4)
pcalxfreq1=(1,750),(2,750),(3,13750),(4,13750)
pcalxfreq2=(1,750),(2,750),(3,13750),(4,13750)
samplerate=32M
disk=off
stop=20h41m38s   !NEXT!        
qual=  0
disk=off
stop=20h46m38s   !NEXT!

!* --- Scan from 20h47m23s to 20h52m23s   Wed, 2012 Apr 25 --- *!
sname='J0243+7120'  ra=02h43m30.891349s  dec= 71d20'17.90421"  qual=999  calib='V'
disk=off
stop=20h47m23s   !NEXT!        
qual=  0
disk=off
stop=20h52m23s   !NEXT!

!* --- Scan from 20h53m08s to 20h58m08s   Wed, 2012 Apr 25 --- *!
sname='J0217+7349'  ra=02h17m30.813367s  dec= 73d49'32.62177"  qual=999  calib='V'
disk=off
stop=20h53m08s   !NEXT!        
qual=  0
disk=off
stop=20h58m08s   !NEXT!

!* --- Scan from 20h58m52s to 21h03m52s   Wed, 2012 Apr 25 --- *!
sname='J0243+7120'  ra=02h43m30.891349s  dec= 71d20'17.90421"  qual=999  calib='V'
disk=off
stop=20h58m52s   !NEXT!        
qual=  0
disk=off
stop=21h03m52s   !NEXT!

!* --- Scan from 21h04m37s to 21h09m37s   Wed, 2012 Apr 25 --- *!
sname='J0217+7349'  ra=02h17m30.813367s  dec= 73d49'32.62177"  qual=999  calib='V'
disk=off
stop=21h04m37s   !NEXT!        
qual=  0
disk=off
stop=21h09m37s   !NEXT!

!* --- Scan from 21h17m21s to 21h18m21s   Wed, 2012 Apr 25 --- *!
!*  Following scan added by Sched for reference pointing  *!
sname='SIO-RCAS'  ra=23h58m24.734000s  dec= 51d23'19.57000"  qual=999  calib='L'
fe=(1,7mm),(3,7mm)
synth=( 1, 3.9),( 2, 7.6),( 3,11.6)
format=VLBA1:1
ifchan=(1,A),(2,C),(3,A),(4,C)
bbsynth=( 1,719.25),( 2,719.25),( 3,819.25),( 4,819.25)
bbfilter=(1,2M),(2,2M),(3,2M),(4,2M)
pcal=OFF
pcalxbit1=(2,S2),(3,S3),(4,S4),(5,OFF),(6,OFF),(7,OFF),(8,OFF)
pcalxbit2=(1,M1),(2,M2),(3,M3),(4,M4),(5,OFF),(6,OFF),(7,OFF),(8,OFF)
pcalxfreq1=(1,0),(2,0),(3,0),(4,0)
pcalxfreq2=(1,0),(2,0),(3,0),(4,0)
samplerate=4M
disk=off
stop=21h17m21s   !NEXT!        
qual=  0
peakchan =  1
disk=off
stop=21h18m21s   !NEXT!

!* --- Scan from 21h18m27s to 21h19m27s   Wed, 2012 Apr 25 --- *!
!*  Following scan added by Sched for reference pointing  *!
sname='SIO-RCAS'  ra=23h58m24.734000s  dec= 51d23'19.57000"  qual=999  calib='L'
disk=off
stop=21h18m27s   !NEXT!        
qual=  0
peakchan =  1
disk=off
stop=21h19m27s   !NEXT!

!* --- Scan from 21h20m17s to 21h25m17s   Wed, 2012 Apr 25 --- *!
sname='J0217+7349'  ra=02h17m30.813367s  dec= 73d49'32.62177"  qual=999  calib='V'
fe=(2,3mm),(4,3mm)
synth=( 1,12.9),( 2, 4.9),( 3,12.1)
format=VLBA1:4
ifchan=(1,B),(2,D),(3,B),(4,D)
bbsynth=( 1,696.25),( 2,696.25),( 3,824.25),( 4,824.25)
bbfilter=(1,16M),(2,16M),(3,16M),(4,16M)
pcal=1MHZ
pcalxbit1=(2,S3),(3,S1),(4,S3),(5,S1),(6,S2),(7,S3),(8,S4)
pcalxbit2=(1,S2),(2,S4),(3,S2),(4,S4),(5,M1),(6,M2),(7,M3),(8,M4)
pcalxfreq1=(1,750),(2,750),(3,13750),(4,13750)
pcalxfreq2=(1,750),(2,750),(3,13750),(4,13750)
samplerate=32M
disk=off
stop=21h20m17s   !NEXT!        
qual=  0
disk=off
stop=21h25m17s   !NEXT!

!* --- Scan from 21h26m01s to 21h31m01s   Wed, 2012 Apr 25 --- *!
sname='J0243+7120'  ra=02h43m30.891349s  dec= 71d20'17.90421"  qual=999  calib='V'
disk=off
stop=21h26m01s   !NEXT!        
qual=  0
disk=off
stop=21h31m01s   !NEXT!

!* --- Scan from 21h31m45s to 21h36m45s   Wed, 2012 Apr 25 --- *!
sname='J0217+7349'  ra=02h17m30.813367s  dec= 73d49'32.62177"  qual=999  calib='V'
disk=off
stop=21h31m45s   !NEXT!        
qual=  0
disk=off
stop=21h36m45s   !NEXT!

!* --- Scan from 21h37m28s to 21h42m28s   Wed, 2012 Apr 25 --- *!
sname='J0243+7120'  ra=02h43m30.891349s  dec= 71d20'17.90421"  qual=999  calib='V'
disk=off
stop=21h37m28s   !NEXT!        
qual=  0
disk=off
stop=21h42m28s   !NEXT!

!* --- Scan from 21h43m12s to 21h48m12s   Wed, 2012 Apr 25 --- *!
sname='J0217+7349'  ra=02h17m30.813367s  dec= 73d49'32.62177"  qual=999  calib='V'
disk=off
stop=21h43m12s   !NEXT!        
qual=  0
disk=off
stop=21h48m12s   !NEXT!
disk=off
stop=21h48m17s   !NEXT!
     !QUIT! 
