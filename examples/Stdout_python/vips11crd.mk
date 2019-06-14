!*  Schedule for VLBA_MK   *!
!*  Experiment VIPS11   *!
!* Schedule Version:       2.00 *!
!* Processed by SCHED version:  11.50 *!
!* PI:       Greg Taylor *!
!* Address:  University of New Mexico *!
!*           Department of Physics and Astronomy *!
!*           800 Yale Blvd NE *!
!*           Albuquerque NM 87131 *!
!* Phone:    505-277-5238 *!
!* EMAIL:    gbtaylor@unm.edu *!
!* Fax:      505-277-1520 *!
!* Phone during observation: 505-838-7411 *!
!* Observing mode: continuum *!
!* Notes:    Fringe finder and pol. EVPA cal #1: 3C279 *!
!*           Pol. EVPA cal #2: J0854+2006 *!
!*           Pol. EVPA cal #3: J1310+3220 *!
!*           Pol. D-term cal: OQ208 *!
!*  Start at 00h29m01s     Thu, 2006 Feb 16  Day of year   47   *!
program=VIPS11  

diskformat=mark5c
media=(1,disk)

!* The first scan is preceeded by a setup scan *!
!* that ends at the start time of the first scan  *!

!* --- Scan from 00h29m01s to 00h31m00s   Thu, 2006 Feb 16 --- *!
sname='DA193'  ra=05h55m30.805611s  dec= 39d48'49.16496"  qual=999  calib='V'
maxcaltime= 120
fe=(1,6cm),(2,6cm),(3,6cm),(4,6cm)
fexfer=(2,norm)
noise=(1,low-s),(2,low-s),(3,low-s),(4,low-s)
synth=( 1,-5.9),( 2, 3.9),( 3,15.6)
logging=STANDARD
nchan= 4
format=VLBA1:2
ifdistr=(1,0),(2,0),(3,0),(4,0)
baseband=(1,1),(2,2),(3,3),(4,4)
ifchan=(1,A),(2,C),(3,B),(4,D)
sideband=(1,U),(2,U),(3,L),(4,L)
bits=(1,2),(2,2),(3,2),(4,2)
period=(1,1),(2,1),(3,1),(4,1)
level=(1,-1),(2,-1),(3,-1),(4,-1)
azcolim=   0.00  elcolim=   0.00
bbsynth=( 1,775.75),( 2,775.75),( 3,808.25),( 4,808.25)
bbfilter=(1,8M),(2,8M),(3,8M),(4,8M)
pcal=1MHZ
pcalxbit1=(1,S1),(2,S3),(3,S1),(4,S3),(5,S1),(6,S2),(7,S3),(8,S4)
pcalxbit2=(1,S2),(2,S4),(3,S2),(4,S4),(5,M1),(6,M2),(7,M3),(8,M4)
pcalxfreq1=(1,250),(2,250),(3,6250),(4,6250),(5,0),(6,0),(7,0),(8,0)
pcalxfreq2=(1,250),(2,250),(3,6250),(4,6250),(5,0),(6,0),(7,0),(8,0)
samplerate=16M
disk=off
  date = 2006Feb16
stop=00h29m01s   !NEXT!        
qual=  0
disk=off
stop=00h31m00s   !NEXT!

!* --- Scan from 01h50m23s to 01h52m23s   Thu, 2006 Feb 16 --- *!
sname='DA193'  ra=05h55m30.805611s  dec= 39d48'49.16496"  qual=999  calib='V'
disk=off
stop=01h50m23s   !NEXT!        
qual=  0
disk=off
stop=01h52m23s   !NEXT!

!* --- Scan from 02h02m08s to 02h02m56s   Thu, 2006 Feb 16 --- *!
sname='J07486+2400'  ra=07h48m36.110000s  dec= 24d00'24.15000"  qual=999  calib=' '
disk=off
stop=02h02m08s   !NEXT!        
qual=  0
disk=off
stop=02h02m56s   !NEXT!

!* --- Scan from 02h03m07s to 02h03m55s   Thu, 2006 Feb 16 --- *!
sname='J07437+2328'  ra=07h43m44.970000s  dec= 23d28'39.00000"  qual=999  calib=' '
disk=off
stop=02h03m07s   !NEXT!        
qual=  0
disk=off
stop=02h03m55s   !NEXT!

!* --- Scan from 02h04m08s to 02h04m56s   Thu, 2006 Feb 16 --- *!
sname='J07464+2549'  ra=07h46m25.870000s  dec= 25d49'02.15000"  qual=999  calib=' '
disk=off
stop=02h04m08s   !NEXT!        
qual=  0
disk=off
stop=02h04m56s   !NEXT!

!* --- Scan from 02h05m07s to 02h05m55s   Thu, 2006 Feb 16 --- *!
sname='J07466+2734'  ra=07h46m40.430000s  dec= 27d34'59.06000"  qual=999  calib=' '
disk=off
stop=02h05m07s   !NEXT!        
qual=  0
disk=off
stop=02h05m55s   !NEXT!

!* --- Scan from 02h06m07s to 02h06m55s   Thu, 2006 Feb 16 --- *!
sname='J07414+2557'  ra=07h41m29.740000s  dec= 25d57'32.27000"  qual=999  calib=' '
disk=off
stop=02h06m07s   !NEXT!        
qual=  0
disk=off
stop=02h06m55s   !NEXT!

!* --- Scan from 02h07m05s to 02h07m53s   Thu, 2006 Feb 16 --- *!
sname='J07414+2706'  ra=07h41m25.730000s  dec= 27d06'45.42000"  qual=999  calib=' '
disk=off
stop=02h07m05s   !NEXT!        
qual=  0
disk=off
stop=02h07m53s   !NEXT!

!* --- Scan from 02h08m04s to 02h08m52s   Thu, 2006 Feb 16 --- *!
sname='J07369+2604'  ra=07h36m58.070000s  dec= 26d04'49.89000"  qual=999  calib=' '
disk=off
stop=02h08m04s   !NEXT!        
qual=  0
disk=off
stop=02h08m52s   !NEXT!

!* --- Scan from 02h09m06s to 02h09m53s   Thu, 2006 Feb 16 --- *!
sname='J07365+2840'  ra=07h36m31.200000s  dec= 28d40'36.84000"  qual=999  calib=' '
disk=off
stop=02h09m06s   !NEXT!        
qual=  0
disk=off
stop=02h09m53s   !NEXT!

!* --- Scan from 02h10m04s to 02h10m52s   Thu, 2006 Feb 16 --- *!
sname='J07362+2954'  ra=07h36m13.660000s  dec= 29d54'22.20000"  qual=999  calib=' '
disk=off
stop=02h10m04s   !NEXT!        
qual=  0
disk=off
stop=02h10m52s   !NEXT!

!* --- Scan from 02h11m03s to 02h11m51s   Thu, 2006 Feb 16 --- *!
sname='J07405+2852'  ra=07h40m33.540000s  dec= 28d52'47.27000"  qual=999  calib=' '
disk=off
stop=02h11m03s   !NEXT!        
qual=  0
disk=off
stop=02h11m51s   !NEXT!

!* --- Scan from 02h12m02s to 02h12m50s   Thu, 2006 Feb 16 --- *!
sname='J07448+2920'  ra=07h44m51.370000s  dec= 29d20'06.05000"  qual=999  calib=' '
disk=off
stop=02h12m02s   !NEXT!        
qual=  0
disk=off
stop=02h12m50s   !NEXT!

!* --- Scan from 02h13m00s to 02h13m48s   Thu, 2006 Feb 16 --- *!
sname='J07481+3006'  ra=07h48m09.470000s  dec= 30d06'30.54000"  qual=999  calib=' '
disk=off
stop=02h13m00s   !NEXT!        
qual=  0
disk=off
stop=02h13m48s   !NEXT!

!* --- Scan from 02h14m03s to 02h14m51s   Thu, 2006 Feb 16 --- *!
sname='J07516+2657'  ra=07h51m37.130000s  dec= 26d57'08.02000"  qual=999  calib=' '
disk=off
stop=02h14m03s   !NEXT!        
qual=  0
disk=off
stop=02h14m51s   !NEXT!

!* --- Scan from 02h22m27s to 02h23m15s   Thu, 2006 Feb 16 --- *!
sname='J08130+2542'  ra=08h13m03.840000s  dec= 25d42'11.09000"  qual=999  calib=' '
disk=off
stop=02h22m27s   !NEXT!        
qual=  0
disk=off
stop=02h23m15s   !NEXT!

!* --- Scan from 02h35m24s to 02h36m12s   Thu, 2006 Feb 16 --- *!
sname='J08086+2646'  ra=08h08m36.770000s  dec= 26d46'36.78000"  qual=999  calib=' '
disk=off
stop=02h35m24s   !NEXT!        
qual=  0
disk=off
stop=02h36m12s   !NEXT!

!* --- Scan from 02h36m25s to 02h37m13s   Thu, 2006 Feb 16 --- *!
sname='J08026+2509'  ra=08h02m41.590000s  dec= 25d09'10.91000"  qual=999  calib=' '
disk=off
stop=02h36m25s   !NEXT!        
qual=  0
disk=off
stop=02h37m13s   !NEXT!

!* --- Scan from 02h37m27s to 02h38m15s   Thu, 2006 Feb 16 --- *!
sname='J07576+2528'  ra=07h57m38.080000s  dec= 25d28'12.75000"  qual=999  calib=' '
disk=off
stop=02h37m27s   !NEXT!        
qual=  0
disk=off
stop=02h38m15s   !NEXT!

!* --- Scan from 02h38m28s to 02h39m16s   Thu, 2006 Feb 16 --- *!
sname='J07516+2657'  ra=07h51m37.130000s  dec= 26d57'08.02000"  qual=999  calib=' '
disk=off
stop=02h38m28s   !NEXT!        
qual=  0
disk=off
stop=02h39m16s   !NEXT!

!* --- Scan from 02h39m27s to 02h40m15s   Thu, 2006 Feb 16 --- *!
sname='J07466+2734'  ra=07h46m40.430000s  dec= 27d34'59.06000"  qual=999  calib=' '
disk=off
stop=02h39m27s   !NEXT!        
qual=  0
disk=off
stop=02h40m15s   !NEXT!

!* --- Scan from 02h40m26s to 02h41m14s   Thu, 2006 Feb 16 --- *!
sname='J07464+2549'  ra=07h46m25.870000s  dec= 25d49'02.15000"  qual=999  calib=' '
disk=off
stop=02h40m26s   !NEXT!        
qual=  0
disk=off
stop=02h41m14s   !NEXT!

!* --- Scan from 02h41m26s to 02h42m14s   Thu, 2006 Feb 16 --- *!
sname='J07414+2557'  ra=07h41m29.740000s  dec= 25d57'32.27000"  qual=999  calib=' '
disk=off
stop=02h41m26s   !NEXT!        
qual=  0
disk=off
stop=02h42m14s   !NEXT!

!* --- Scan from 02h42m24s to 02h43m12s   Thu, 2006 Feb 16 --- *!
sname='J07369+2604'  ra=07h36m58.070000s  dec= 26d04'49.89000"  qual=999  calib=' '
disk=off
stop=02h42m24s   !NEXT!        
qual=  0
disk=off
stop=02h43m12s   !NEXT!

!* --- Scan from 02h43m25s to 02h44m13s   Thu, 2006 Feb 16 --- *!
sname='J07414+2706'  ra=07h41m25.730000s  dec= 27d06'45.42000"  qual=999  calib=' '
disk=off
stop=02h43m25s   !NEXT!        
qual=  0
disk=off
stop=02h44m13s   !NEXT!

!* --- Scan from 02h44m25s to 02h45m13s   Thu, 2006 Feb 16 --- *!
sname='J07365+2840'  ra=07h36m31.200000s  dec= 28d40'36.84000"  qual=999  calib=' '
disk=off
stop=02h44m25s   !NEXT!        
qual=  0
disk=off
stop=02h45m13s   !NEXT!

!* --- Scan from 02h45m23s to 02h46m11s   Thu, 2006 Feb 16 --- *!
sname='J07405+2852'  ra=07h40m33.540000s  dec= 28d52'47.27000"  qual=999  calib=' '
disk=off
stop=02h45m23s   !NEXT!        
qual=  0
disk=off
stop=02h46m11s   !NEXT!

!* --- Scan from 02h52m49s to 02h54m49s   Thu, 2006 Feb 16 --- *!
sname='DA193'  ra=05h55m30.805611s  dec= 39d48'49.16496"  qual=999  calib='V'
disk=off
stop=02h52m49s   !NEXT!        
qual=  0
disk=off
stop=02h54m49s   !NEXT!

!* --- Scan from 02h59m39s to 03h00m27s   Thu, 2006 Feb 16 --- *!
sname='J07462+1807'  ra=07h46m16.670000s  dec= 18d07'19.66000"  qual=999  calib=' '
disk=off
stop=02h59m39s   !NEXT!        
qual=  0
disk=off
stop=03h00m27s   !NEXT!

!* --- Scan from 03h00m37s to 03h01m25s   Thu, 2006 Feb 16 --- *!
sname='J07500+1823'  ra=07h50m00.330000s  dec= 18d23'11.40000"  qual=999  calib=' '
disk=off
stop=03h00m37s   !NEXT!        
qual=  0
disk=off
stop=03h01m25s   !NEXT!

!* --- Scan from 03h01m39s to 03h02m27s   Thu, 2006 Feb 16 --- *!
sname='J08028+1809'  ra=08h02m48.030000s  dec= 18d09'49.27000"  qual=999  calib=' '
disk=off
stop=03h01m39s   !NEXT!        
qual=  0
disk=off
stop=03h02m27s   !NEXT!

!* --- Scan from 03h02m51s to 03h03m39s   Thu, 2006 Feb 16 --- *!
sname='J07538+2146'  ra=07h53m53.290000s  dec= 21d46'01.74000"  qual=999  calib=' '
disk=off
stop=03h02m51s   !NEXT!        
qual=  0
disk=off
stop=03h03m39s   !NEXT!

!* --- Scan from 03h03m53s to 03h04m41s   Thu, 2006 Feb 16 --- *!
sname='J07437+2328'  ra=07h43m44.970000s  dec= 23d28'39.00000"  qual=999  calib=' '
disk=off
stop=03h03m53s   !NEXT!        
qual=  0
disk=off
stop=03h04m41s   !NEXT!

!* --- Scan from 03h04m52s to 03h05m40s   Thu, 2006 Feb 16 --- *!
sname='J07486+2400'  ra=07h48m36.110000s  dec= 24d00'24.15000"  qual=999  calib=' '
disk=off
stop=03h04m52s   !NEXT!        
qual=  0
disk=off
stop=03h05m40s   !NEXT!

!* --- Scan from 03h05m58s to 03h06m46s   Thu, 2006 Feb 16 --- *!
sname='J08056+2106'  ra=08h05m38.530000s  dec= 21d06'51.51000"  qual=999  calib=' '
disk=off
stop=03h05m58s   !NEXT!        
qual=  0
disk=off
stop=03h06m46s   !NEXT!

!* --- Scan from 03h07m00s to 03h07m48s   Thu, 2006 Feb 16 --- *!
sname='J08170+1958'  ra=08h17m05.490000s  dec= 19d58'42.93000"  qual=999  calib=' '
disk=off
stop=03h07m00s   !NEXT!        
qual=  0
disk=off
stop=03h07m48s   !NEXT!

!* --- Scan from 03h08m30s to 03h09m18s   Thu, 2006 Feb 16 --- *!
sname='J08257+2704'  ra=08h25m47.390000s  dec= 27d04'22.04000"  qual=999  calib=' '
disk=off
stop=03h08m30s   !NEXT!        
qual=  0
disk=off
stop=03h09m18s   !NEXT!

!* --- Scan from 03h09m30s to 03h10m18s   Thu, 2006 Feb 16 --- *!
sname='J08281+2920'  ra=08h28m09.380000s  dec= 29d20'19.57000"  qual=999  calib=' '
disk=off
stop=03h09m30s   !NEXT!        
qual=  0
disk=off
stop=03h10m18s   !NEXT!

!* --- Scan from 03h10m32s to 03h11m20s   Thu, 2006 Feb 16 --- *!
sname='J08363+2728'  ra=08h36m22.890000s  dec= 27d28'52.54000"  qual=999  calib=' '
disk=off
stop=03h10m32s   !NEXT!        
qual=  0
disk=off
stop=03h11m20s   !NEXT!

!* --- Scan from 03h11m31s to 03h12m19s   Thu, 2006 Feb 16 --- *!
sname='J08392+2850'  ra=08h39m15.830000s  dec= 28d50'38.76000"  qual=999  calib=' '
disk=off
stop=03h11m31s   !NEXT!        
qual=  0
disk=off
stop=03h12m19s   !NEXT!

!* --- Scan from 03h12m37s to 03h13m25s   Thu, 2006 Feb 16 --- *!
sname='J08367+2355'  ra=08h36m46.310000s  dec= 23d55'31.65000"  qual=999  calib=' '
disk=off
stop=03h12m37s   !NEXT!        
qual=  0
disk=off
stop=03h13m25s   !NEXT!

!* --- Scan from 03h13m38s to 03h14m25s   Thu, 2006 Feb 16 --- *!
sname='J08362+2139'  ra=08h36m16.220000s  dec= 21d39'03.60000"  qual=999  calib=' '
disk=off
stop=03h13m38s   !NEXT!        
qual=  0
disk=off
stop=03h14m25s   !NEXT!

!* --- Scan from 03h14m44s to 03h15m32s   Thu, 2006 Feb 16 --- *!
sname='J08245+2438'  ra=08h24m33.010000s  dec= 24d38'43.12000"  qual=999  calib=' '
disk=off
stop=03h14m44s   !NEXT!        
qual=  0
disk=off
stop=03h15m32s   !NEXT!

!* --- Scan from 03h15m47s to 03h16m35s   Thu, 2006 Feb 16 --- *!
sname='J08130+2542'  ra=08h13m03.840000s  dec= 25d42'11.09000"  qual=999  calib=' '
disk=off
stop=03h15m47s   !NEXT!        
qual=  0
disk=off
stop=03h16m35s   !NEXT!

!* --- Scan from 03h16m45s to 03h17m33s   Thu, 2006 Feb 16 --- *!
sname='J08137+2435'  ra=08h13m47.140000s  dec= 24d35'59.21000"  qual=999  calib=' '
disk=off
stop=03h16m45s   !NEXT!        
qual=  0
disk=off
stop=03h17m33s   !NEXT!

!* --- Scan from 03h17m43s to 03h18m31s   Thu, 2006 Feb 16 --- *!
sname='J08171+2352'  ra=08h17m10.550000s  dec= 23d52'23.95000"  qual=999  calib=' '
disk=off
stop=03h17m43s   !NEXT!        
qual=  0
disk=off
stop=03h18m31s   !NEXT!

!* --- Scan from 03h18m43s to 03h19m31s   Thu, 2006 Feb 16 --- *!
sname='J08234+2223'  ra=08h23m24.760000s  dec= 22d23'03.30000"  qual=999  calib=' '
disk=off
stop=03h18m43s   !NEXT!        
qual=  0
disk=off
stop=03h19m31s   !NEXT!

!* --- Scan from 03h19m51s to 03h20m39s   Thu, 2006 Feb 16 --- *!
sname='J08086+2646'  ra=08h08m36.770000s  dec= 26d46'36.78000"  qual=999  calib=' '
disk=off
stop=03h19m51s   !NEXT!        
qual=  0
disk=off
stop=03h20m39s   !NEXT!

!* --- Scan from 03h20m55s to 03h21m43s   Thu, 2006 Feb 16 --- *!
sname='J08193+2747'  ra=08h19m18.860000s  dec= 27d47'30.72000"  qual=999  calib=' '
disk=off
stop=03h20m55s   !NEXT!        
qual=  0
disk=off
stop=03h21m43s   !NEXT!

!* --- Scan from 03h21m54s to 03h22m42s   Thu, 2006 Feb 16 --- *!
sname='J08219+2857'  ra=08h21m54.070000s  dec= 28d57'39.57000"  qual=999  calib=' '
disk=off
stop=03h21m54s   !NEXT!        
qual=  0
disk=off
stop=03h22m42s   !NEXT!

!* --- Scan from 03h22m52s to 03h23m40s   Thu, 2006 Feb 16 --- *!
sname='J08236+2928'  ra=08h23m41.130000s  dec= 29d28'28.17000"  qual=999  calib=' '
disk=off
stop=03h22m52s   !NEXT!        
qual=  0
disk=off
stop=03h23m40s   !NEXT!

!* --- Scan from 03h24m32s to 03h25m20s   Thu, 2006 Feb 16 --- *!
sname='J08290+1754'  ra=08h29m04.830000s  dec= 17d54'15.86000"  qual=999  calib=' '
disk=off
stop=03h24m32s   !NEXT!        
qual=  0
disk=off
stop=03h25m20s   !NEXT!

!* --- Scan from 03h25m32s to 03h26m20s   Thu, 2006 Feb 16 --- *!
sname='J08324+1821'  ra=08h32m24.880000s  dec= 18d21'22.00000"  qual=999  calib=' '
disk=off
stop=03h25m32s   !NEXT!        
qual=  0
disk=off
stop=03h26m20s   !NEXT!

!* --- Scan from 03h26m29s to 03h27m17s   Thu, 2006 Feb 16 --- *!
sname='J08322+1832'  ra=08h32m16.040000s  dec= 18d32'12.12000"  qual=999  calib=' '
disk=off
stop=03h26m29s   !NEXT!        
qual=  0
disk=off
stop=03h27m17s   !NEXT!

!* --- Scan from 03h27m43s to 03h28m31s   Thu, 2006 Feb 16 --- *!
sname='J08391+2002'  ra=08h39m10.900000s  dec= 20d02'07.34000"  qual=999  calib=' '
disk=off
stop=03h27m43s   !NEXT!        
qual=  0
disk=off
stop=03h28m31s   !NEXT!

!* --- Scan from 03h29m16s to 03h30m04s   Thu, 2006 Feb 16 --- *!
sname='J07362+2954'  ra=07h36m13.660000s  dec= 29d54'22.20000"  qual=999  calib=' '
disk=off
stop=03h29m16s   !NEXT!        
qual=  0
disk=off
stop=03h30m04s   !NEXT!

!* --- Scan from 03h30m17s to 03h31m04s   Thu, 2006 Feb 16 --- *!
sname='J07448+2920'  ra=07h44m51.370000s  dec= 29d20'06.05000"  qual=999  calib=' '
disk=off
stop=03h30m17s   !NEXT!        
qual=  0
disk=off
stop=03h31m04s   !NEXT!

!* --- Scan from 03h31m15s to 03h32m03s   Thu, 2006 Feb 16 --- *!
sname='J07481+3006'  ra=07h48m09.470000s  dec= 30d06'30.54000"  qual=999  calib=' '
disk=off
stop=03h31m15s   !NEXT!        
qual=  0
disk=off
stop=03h32m03s   !NEXT!

!* --- Scan from 03h32m46s to 03h33m33s   Thu, 2006 Feb 16 --- *!
sname='J08420+1835'  ra=08h42m05.090000s  dec= 18d35'40.98000"  qual=999  calib=' '
disk=off
stop=03h32m46s   !NEXT!        
qual=  0
disk=off
stop=03h33m33s   !NEXT!

!* --- Scan from 03h37m39s to 03h38m26s   Thu, 2006 Feb 16 --- *!
sname='J08328+1554'  ra=08h32m49.400000s  dec= 15d54'08.61000"  qual=999  calib=' '
disk=off
stop=03h37m39s   !NEXT!        
qual=  0
disk=off
stop=03h38m26s   !NEXT!

!* --- Scan from 03h38m50s to 03h39m38s   Thu, 2006 Feb 16 --- *!
sname='J08028+1809'  ra=08h02m48.030000s  dec= 18d09'49.27000"  qual=999  calib=' '
disk=off
stop=03h38m50s   !NEXT!        
qual=  0
disk=off
stop=03h39m38s   !NEXT!

!* --- Scan from 03h39m53s to 03h40m41s   Thu, 2006 Feb 16 --- *!
sname='J07500+1823'  ra=07h50m00.330000s  dec= 18d23'11.40000"  qual=999  calib=' '
disk=off
stop=03h39m53s   !NEXT!        
qual=  0
disk=off
stop=03h40m41s   !NEXT!

!* --- Scan from 03h40m50s to 03h41m38s   Thu, 2006 Feb 16 --- *!
sname='J07462+1807'  ra=07h46m16.670000s  dec= 18d07'19.66000"  qual=999  calib=' '
disk=off
stop=03h40m50s   !NEXT!        
qual=  0
disk=off
stop=03h41m38s   !NEXT!

!* --- Scan from 03h41m55s to 03h42m43s   Thu, 2006 Feb 16 --- *!
sname='J07538+2146'  ra=07h53m53.290000s  dec= 21d46'01.74000"  qual=999  calib=' '
disk=off
stop=03h41m55s   !NEXT!        
qual=  0
disk=off
stop=03h42m43s   !NEXT!

!* --- Scan from 03h42m57s to 03h43m45s   Thu, 2006 Feb 16 --- *!
sname='J07437+2328'  ra=07h43m44.970000s  dec= 23d28'39.00000"  qual=999  calib=' '
disk=off
stop=03h42m57s   !NEXT!        
qual=  0
disk=off
stop=03h43m45s   !NEXT!

!* --- Scan from 03h44m32s to 03h45m20s   Thu, 2006 Feb 16 --- *!
sname='J09052+2052'  ra=09h05m14.340000s  dec= 20d52'13.29000"  qual=999  calib=' '
disk=off
stop=03h44m32s   !NEXT!        
qual=  0
disk=off
stop=03h45m20s   !NEXT!

!* --- Scan from 03h47m22s to 03h49m22s   Thu, 2006 Feb 16 --- *!
sname='DA193'  ra=05h55m30.805611s  dec= 39d48'49.16496"  qual=999  calib='V'
disk=off
stop=03h47m22s   !NEXT!        
qual=  0
disk=off
stop=03h49m22s   !NEXT!

!* --- Scan from 03h51m30s to 03h52m18s   Thu, 2006 Feb 16 --- *!
sname='J08569+1739'  ra=08h56m56.690000s  dec= 17d39'47.77000"  qual=999  calib=' '
disk=off
stop=03h51m30s   !NEXT!        
qual=  0
disk=off
stop=03h52m18s   !NEXT!

!* --- Scan from 03h52m38s to 03h53m26s   Thu, 2006 Feb 16 --- *!
sname='J08324+1821'  ra=08h32m24.880000s  dec= 18d21'22.00000"  qual=999  calib=' '
disk=off
stop=03h52m38s   !NEXT!        
qual=  0
disk=off
stop=03h53m26s   !NEXT!

!* --- Scan from 03h53m34s to 03h54m22s   Thu, 2006 Feb 16 --- *!
sname='J08322+1832'  ra=08h32m16.040000s  dec= 18d32'12.12000"  qual=999  calib=' '
disk=off
stop=03h53m34s   !NEXT!        
qual=  0
disk=off
stop=03h54m22s   !NEXT!

!* --- Scan from 03h54m32s to 03h55m20s   Thu, 2006 Feb 16 --- *!
sname='J08290+1754'  ra=08h29m04.830000s  dec= 17d54'15.86000"  qual=999  calib=' '
disk=off
stop=03h54m32s   !NEXT!        
qual=  0
disk=off
stop=03h55m20s   !NEXT!

!* --- Scan from 03h55m35s to 03h56m23s   Thu, 2006 Feb 16 --- *!
sname='J08170+1958'  ra=08h17m05.490000s  dec= 19d58'42.93000"  qual=999  calib=' '
disk=off
stop=03h55m35s   !NEXT!        
qual=  0
disk=off
stop=03h56m23s   !NEXT!

!* --- Scan from 03h56m37s to 03h57m25s   Thu, 2006 Feb 16 --- *!
sname='J08056+2106'  ra=08h05m38.530000s  dec= 21d06'51.51000"  qual=999  calib=' '
disk=off
stop=03h56m37s   !NEXT!        
qual=  0
disk=off
stop=03h57m25s   !NEXT!

!* --- Scan from 03h57m43s to 03h58m31s   Thu, 2006 Feb 16 --- *!
sname='J07486+2400'  ra=07h48m36.110000s  dec= 24d00'24.15000"  qual=999  calib=' '
disk=off
stop=03h57m43s   !NEXT!        
qual=  0
disk=off
stop=03h58m31s   !NEXT!

!* --- Scan from 03h58m43s to 03h59m31s   Thu, 2006 Feb 16 --- *!
sname='J07464+2549'  ra=07h46m25.870000s  dec= 25d49'02.15000"  qual=999  calib=' '
disk=off
stop=03h58m43s   !NEXT!        
qual=  0
disk=off
stop=03h59m31s   !NEXT!

!* --- Scan from 03h59m42s to 04h00m30s   Thu, 2006 Feb 16 --- *!
sname='J07414+2557'  ra=07h41m29.740000s  dec= 25d57'32.27000"  qual=999  calib=' '
disk=off
stop=03h59m42s   !NEXT!        
qual=  0
disk=off
stop=04h00m30s   !NEXT!

!* --- Scan from 04h00m40s to 04h01m28s   Thu, 2006 Feb 16 --- *!
sname='J07369+2604'  ra=07h36m58.070000s  dec= 26d04'49.89000"  qual=999  calib=' '
disk=off
stop=04h00m40s   !NEXT!        
qual=  0
disk=off
stop=04h01m28s   !NEXT!

!* --- Scan from 04h01m41s to 04h02m28s   Thu, 2006 Feb 16 --- *!
sname='J07414+2706'  ra=07h41m25.730000s  dec= 27d06'45.42000"  qual=999  calib=' '
disk=off
stop=04h01m41s   !NEXT!        
qual=  0
disk=off
stop=04h02m28s   !NEXT!

!* --- Scan from 04h02m41s to 04h03m29s   Thu, 2006 Feb 16 --- *!
sname='J07365+2840'  ra=07h36m31.200000s  dec= 28d40'36.84000"  qual=999  calib=' '
disk=off
stop=04h02m41s   !NEXT!        
qual=  0
disk=off
stop=04h03m29s   !NEXT!

!* --- Scan from 04h03m39s to 04h04m27s   Thu, 2006 Feb 16 --- *!
sname='J07405+2852'  ra=07h40m33.540000s  dec= 28d52'47.27000"  qual=999  calib=' '
disk=off
stop=04h03m39s   !NEXT!        
qual=  0
disk=off
stop=04h04m27s   !NEXT!

!* --- Scan from 04h04m38s to 04h05m26s   Thu, 2006 Feb 16 --- *!
sname='J07362+2954'  ra=07h36m13.660000s  dec= 29d54'22.20000"  qual=999  calib=' '
disk=off
stop=04h04m38s   !NEXT!        
qual=  0
disk=off
stop=04h05m26s   !NEXT!

!* --- Scan from 04h05m40s to 04h06m28s   Thu, 2006 Feb 16 --- *!
sname='J07448+2920'  ra=07h44m51.370000s  dec= 29d20'06.05000"  qual=999  calib=' '
disk=off
stop=04h05m40s   !NEXT!        
qual=  0
disk=off
stop=04h06m28s   !NEXT!

!* --- Scan from 04h06m39s to 04h07m27s   Thu, 2006 Feb 16 --- *!
sname='J07481+3006'  ra=07h48m09.470000s  dec= 30d06'30.54000"  qual=999  calib=' '
disk=off
stop=04h06m39s   !NEXT!        
qual=  0
disk=off
stop=04h07m27s   !NEXT!

!* --- Scan from 04h07m44s to 04h08m32s   Thu, 2006 Feb 16 --- *!
sname='J07466+2734'  ra=07h46m40.430000s  dec= 27d34'59.06000"  qual=999  calib=' '
disk=off
stop=04h07m44s   !NEXT!        
qual=  0
disk=off
stop=04h08m32s   !NEXT!

!* --- Scan from 04h08m43s to 04h09m31s   Thu, 2006 Feb 16 --- *!
sname='J07516+2657'  ra=07h51m37.130000s  dec= 26d57'08.02000"  qual=999  calib=' '
disk=off
stop=04h08m43s   !NEXT!        
qual=  0
disk=off
stop=04h09m31s   !NEXT!

!* --- Scan from 04h09m43s to 04h10m31s   Thu, 2006 Feb 16 --- *!
sname='J07576+2528'  ra=07h57m38.080000s  dec= 25d28'12.75000"  qual=999  calib=' '
disk=off
stop=04h09m43s   !NEXT!        
qual=  0
disk=off
stop=04h10m31s   !NEXT!

!* --- Scan from 04h10m41s to 04h11m29s   Thu, 2006 Feb 16 --- *!
sname='J08026+2509'  ra=08h02m41.590000s  dec= 25d09'10.91000"  qual=999  calib=' '
disk=off
stop=04h10m41s   !NEXT!        
qual=  0
disk=off
stop=04h11m29s   !NEXT!

!* --- Scan from 04h11m51s to 04h12m39s   Thu, 2006 Feb 16 --- *!
sname='J08257+2704'  ra=08h25m47.390000s  dec= 27d04'22.04000"  qual=999  calib=' '
disk=off
stop=04h11m51s   !NEXT!        
qual=  0
disk=off
stop=04h12m39s   !NEXT!

!* --- Scan from 04h12m52s to 04h13m40s   Thu, 2006 Feb 16 --- *!
sname='J08363+2728'  ra=08h36m22.890000s  dec= 27d28'52.54000"  qual=999  calib=' '
disk=off
stop=04h12m52s   !NEXT!        
qual=  0
disk=off
stop=04h13m40s   !NEXT!

!* --- Scan from 04h13m52s to 04h14m39s   Thu, 2006 Feb 16 --- *!
sname='J08392+2850'  ra=08h39m15.830000s  dec= 28d50'38.76000"  qual=999  calib=' '
disk=off
stop=04h13m52s   !NEXT!        
qual=  0
disk=off
stop=04h14m39s   !NEXT!

!* --- Scan from 04h14m55s to 04h15m43s   Thu, 2006 Feb 16 --- *!
sname='J08520+2833'  ra=08h52m05.170000s  dec= 28d33'59.75000"  qual=999  calib=' '
disk=off
stop=04h14m55s   !NEXT!        
qual=  0
disk=off
stop=04h15m43s   !NEXT!

!* --- Scan from 04h15m51s to 04h16m39s   Thu, 2006 Feb 16 --- *!
sname='J08532+2813'  ra=08h53m17.830000s  dec= 28d13'50.02000"  qual=999  calib=' '
disk=off
stop=04h15m51s   !NEXT!        
qual=  0
disk=off
stop=04h16m39s   !NEXT!

!* --- Scan from 04h16m59s to 04h17m47s   Thu, 2006 Feb 16 --- *!
sname='J08374+2501'  ra=08h37m25.880000s  dec= 25d01'39.85000"  qual=999  calib=' '
disk=off
stop=04h16m59s   !NEXT!        
qual=  0
disk=off
stop=04h17m47s   !NEXT!

!* --- Scan from 04h17m54s to 04h18m42s   Thu, 2006 Feb 16 --- *!
sname='J08376+2454'  ra=08h37m40.250000s  dec= 24d54'23.12000"  qual=999  calib=' '
disk=off
stop=04h17m54s   !NEXT!        
qual=  0
disk=off
stop=04h18m42s   !NEXT!

!* --- Scan from 04h18m53s to 04h19m40s   Thu, 2006 Feb 16 --- *!
sname='J08367+2355'  ra=08h36m46.310000s  dec= 23d55'31.65000"  qual=999  calib=' '
disk=off
stop=04h18m53s   !NEXT!        
qual=  0
disk=off
stop=04h19m40s   !NEXT!

!* --- Scan from 04h19m54s to 04h20m42s   Thu, 2006 Feb 16 --- *!
sname='J08245+2438'  ra=08h24m33.010000s  dec= 24d38'43.12000"  qual=999  calib=' '
disk=off
stop=04h19m54s   !NEXT!        
qual=  0
disk=off
stop=04h20m42s   !NEXT!

!* --- Scan from 04h20m54s to 04h21m42s   Thu, 2006 Feb 16 --- *!
sname='J08171+2352'  ra=08h17m10.550000s  dec= 23d52'23.95000"  qual=999  calib=' '
disk=off
stop=04h20m54s   !NEXT!        
qual=  0
disk=off
stop=04h21m42s   !NEXT!

!* --- Scan from 04h21m52s to 04h22m40s   Thu, 2006 Feb 16 --- *!
sname='J08137+2435'  ra=08h13m47.140000s  dec= 24d35'59.21000"  qual=999  calib=' '
disk=off
stop=04h21m52s   !NEXT!        
qual=  0
disk=off
stop=04h22m40s   !NEXT!

!* --- Scan from 04h22m51s to 04h23m39s   Thu, 2006 Feb 16 --- *!
sname='J08130+2542'  ra=08h13m03.840000s  dec= 25d42'11.09000"  qual=999  calib=' '
disk=off
stop=04h22m51s   !NEXT!        
qual=  0
disk=off
stop=04h23m39s   !NEXT!

!* --- Scan from 04h23m50s to 04h24m37s   Thu, 2006 Feb 16 --- *!
sname='J08086+2646'  ra=08h08m36.770000s  dec= 26d46'36.78000"  qual=999  calib=' '
disk=off
stop=04h23m50s   !NEXT!        
qual=  0
disk=off
stop=04h24m37s   !NEXT!

!* --- Scan from 04h24m52s to 04h25m40s   Thu, 2006 Feb 16 --- *!
sname='J08193+2747'  ra=08h19m18.860000s  dec= 27d47'30.72000"  qual=999  calib=' '
disk=off
stop=04h24m52s   !NEXT!        
qual=  0
disk=off
stop=04h25m40s   !NEXT!

!* --- Scan from 04h25m52s to 04h26m39s   Thu, 2006 Feb 16 --- *!
sname='J08219+2857'  ra=08h21m54.070000s  dec= 28d57'39.57000"  qual=999  calib=' '
disk=off
stop=04h25m52s   !NEXT!        
qual=  0
disk=off
stop=04h26m39s   !NEXT!

!* --- Scan from 04h26m49s to 04h27m37s   Thu, 2006 Feb 16 --- *!
sname='J08236+2928'  ra=08h23m41.130000s  dec= 29d28'28.17000"  qual=999  calib=' '
disk=off
stop=04h26m49s   !NEXT!        
qual=  0
disk=off
stop=04h27m37s   !NEXT!

!* --- Scan from 04h27m47s to 04h28m35s   Thu, 2006 Feb 16 --- *!
sname='J08281+2920'  ra=08h28m09.380000s  dec= 29d20'19.57000"  qual=999  calib=' '
disk=off
stop=04h27m47s   !NEXT!        
qual=  0
disk=off
stop=04h28m35s   !NEXT!

!* --- Scan from 04h29m03s to 04h29m51s   Thu, 2006 Feb 16 --- *!
sname='J08391+2002'  ra=08h39m10.900000s  dec= 20d02'07.34000"  qual=999  calib=' '
disk=off
stop=04h29m03s   !NEXT!        
qual=  0
disk=off
stop=04h29m51s   !NEXT!

!* --- Scan from 04h30m02s to 04h30m50s   Thu, 2006 Feb 16 --- *!
sname='J08420+1835'  ra=08h42m05.090000s  dec= 18d35'40.98000"  qual=999  calib=' '
disk=off
stop=04h30m02s   !NEXT!        
qual=  0
disk=off
stop=04h30m50s   !NEXT!

!* --- Scan from 04h31m00s to 04h31m47s   Thu, 2006 Feb 16 --- *!
sname='J08395+1802'  ra=08h39m30.720000s  dec= 18d02'47.14000"  qual=999  calib=' '
disk=off
stop=04h31m00s   !NEXT!        
qual=  0
disk=off
stop=04h31m47s   !NEXT!

!* --- Scan from 04h32m03s to 04h34m02s   Thu, 2006 Feb 16 --- *!
sname='J0854+2006'  ra=08h54m48.874924s  dec= 20d06'30.64088"  qual=999  calib='N'
disk=off
stop=04h32m03s   !NEXT!        
qual=  0
disk=off
stop=04h34m02s   !NEXT!

!* --- Scan from 04h34m20s to 04h35m08s   Thu, 2006 Feb 16 --- *!
sname='J08362+2139'  ra=08h36m16.220000s  dec= 21d39'03.60000"  qual=999  calib=' '
disk=off
stop=04h34m20s   !NEXT!        
qual=  0
disk=off
stop=04h35m08s   !NEXT!

!* --- Scan from 04h35m22s to 04h36m10s   Thu, 2006 Feb 16 --- *!
sname='J08234+2223'  ra=08h23m24.760000s  dec= 22d23'03.30000"  qual=999  calib=' '
disk=off
stop=04h35m22s   !NEXT!        
qual=  0
disk=off
stop=04h36m10s   !NEXT!

!* --- Scan from 04h36m45s to 04h37m32s   Thu, 2006 Feb 16 --- *!
sname='J09056+2849'  ra=09h05m41.770000s  dec= 28d49'28.25000"  qual=999  calib=' '
disk=off
stop=04h36m45s   !NEXT!        
qual=  0
disk=off
stop=04h37m32s   !NEXT!

!* --- Scan from 04h37m55s to 04h38m43s   Thu, 2006 Feb 16 --- *!
sname='J08392+2850'  ra=08h39m15.830000s  dec= 28d50'38.76000"  qual=999  calib=' '
disk=off
stop=04h37m55s   !NEXT!        
qual=  0
disk=off
stop=04h38m43s   !NEXT!

!* --- Scan from 04h39m18s to 04h40m06s   Thu, 2006 Feb 16 --- *!
sname='J08328+1554'  ra=08h32m49.400000s  dec= 15d54'08.61000"  qual=999  calib=' '
disk=off
stop=04h39m18s   !NEXT!        
qual=  0
disk=off
stop=04h40m06s   !NEXT!

!* --- Scan from 04h40m18s to 04h41m06s   Thu, 2006 Feb 16 --- *!
sname='J08290+1754'  ra=08h29m04.830000s  dec= 17d54'15.86000"  qual=999  calib=' '
disk=off
stop=04h40m18s   !NEXT!        
qual=  0
disk=off
stop=04h41m06s   !NEXT!

!* --- Scan from 04h41m16s to 04h42m04s   Thu, 2006 Feb 16 --- *!
sname='J08324+1821'  ra=08h32m24.880000s  dec= 18d21'22.00000"  qual=999  calib=' '
disk=off
stop=04h41m16s   !NEXT!        
qual=  0
disk=off
stop=04h42m04s   !NEXT!

!* --- Scan from 04h42m28s to 04h43m16s   Thu, 2006 Feb 16 --- *!
sname='J09052+2052'  ra=09h05m14.340000s  dec= 20d52'13.29000"  qual=999  calib=' '
disk=off
stop=04h42m28s   !NEXT!        
qual=  0
disk=off
stop=04h43m16s   !NEXT!

!* --- Scan from 04h43m28s to 04h44m15s   Thu, 2006 Feb 16 --- *!
sname='J08569+2111'  ra=08h56m57.240000s  dec= 21d11'43.64000"  qual=999  calib=' '
disk=off
stop=04h43m28s   !NEXT!        
qual=  0
disk=off
stop=04h44m15s   !NEXT!

!* --- Scan from 04h44m24s to 04h45m11s   Thu, 2006 Feb 16 --- *!
sname='J08566+2057'  ra=08h56m39.740000s  dec= 20d57'43.43000"  qual=999  calib=' '
disk=off
stop=04h44m24s   !NEXT!        
qual=  0
disk=off
stop=04h45m11s   !NEXT!

!* --- Scan from 04h45m19s to 04h46m07s   Thu, 2006 Feb 16 --- *!
sname='J08569+2111'  ra=08h56m57.240000s  dec= 21d11'43.64000"  qual=999  calib=' '
disk=off
stop=04h45m19s   !NEXT!        
qual=  0
disk=off
stop=04h46m07s   !NEXT!

!* --- Scan from 04h46m23s to 04h47m11s   Thu, 2006 Feb 16 --- *!
sname='J08569+1739'  ra=08h56m56.690000s  dec= 17d39'47.77000"  qual=999  calib=' '
disk=off
stop=04h46m23s   !NEXT!        
qual=  0
disk=off
stop=04h47m11s   !NEXT!

!* --- Scan from 04h47m55s to 04h48m43s   Thu, 2006 Feb 16 --- *!
sname='J07462+1807'  ra=07h46m16.670000s  dec= 18d07'19.66000"  qual=999  calib=' '
disk=off
stop=04h47m55s   !NEXT!        
qual=  0
disk=off
stop=04h48m43s   !NEXT!

!* --- Scan from 04h48m53s to 04h49m41s   Thu, 2006 Feb 16 --- *!
sname='J07500+1823'  ra=07h50m00.330000s  dec= 18d23'11.40000"  qual=999  calib=' '
disk=off
stop=04h48m53s   !NEXT!        
qual=  0
disk=off
stop=04h49m41s   !NEXT!

!* --- Scan from 04h49m57s to 04h50m45s   Thu, 2006 Feb 16 --- *!
sname='J07538+2146'  ra=07h53m53.290000s  dec= 21d46'01.74000"  qual=999  calib=' '
disk=off
stop=04h49m57s   !NEXT!        
qual=  0
disk=off
stop=04h50m45s   !NEXT!

!* --- Scan from 04h50m58s to 04h51m46s   Thu, 2006 Feb 16 --- *!
sname='J07486+2400'  ra=07h48m36.110000s  dec= 24d00'24.15000"  qual=999  calib=' '
disk=off
stop=04h50m58s   !NEXT!        
qual=  0
disk=off
stop=04h51m46s   !NEXT!

!* --- Scan from 04h51m57s to 04h52m45s   Thu, 2006 Feb 16 --- *!
sname='J07464+2549'  ra=07h46m25.870000s  dec= 25d49'02.15000"  qual=999  calib=' '
disk=off
stop=04h51m57s   !NEXT!        
qual=  0
disk=off
stop=04h52m45s   !NEXT!

!* --- Scan from 04h53m02s to 04h53m50s   Thu, 2006 Feb 16 --- *!
sname='J07437+2328'  ra=07h43m44.970000s  dec= 23d28'39.00000"  qual=999  calib=' '
disk=off
stop=04h53m02s   !NEXT!        
qual=  0
disk=off
stop=04h53m50s   !NEXT!

!* --- Scan from 04h54m03s to 04h54m51s   Thu, 2006 Feb 16 --- *!
sname='J07414+2557'  ra=07h41m29.740000s  dec= 25d57'32.27000"  qual=999  calib=' '
disk=off
stop=04h54m03s   !NEXT!        
qual=  0
disk=off
stop=04h54m51s   !NEXT!

!* --- Scan from 04h55m03s to 04h55m50s   Thu, 2006 Feb 16 --- *!
sname='J07414+2706'  ra=07h41m25.730000s  dec= 27d06'45.42000"  qual=999  calib=' '
disk=off
stop=04h55m03s   !NEXT!        
qual=  0
disk=off
stop=04h55m50s   !NEXT!

!* --- Scan from 04h56m06s to 04h56m54s   Thu, 2006 Feb 16 --- *!
sname='J07369+2604'  ra=07h36m58.070000s  dec= 26d04'49.89000"  qual=999  calib=' '
disk=off
stop=04h56m06s   !NEXT!        
qual=  0
disk=off
stop=04h56m54s   !NEXT!

!* --- Scan from 04h57m18s to 04h58m06s   Thu, 2006 Feb 16 --- *!
sname='J07365+2840'  ra=07h36m31.200000s  dec= 28d40'36.84000"  qual=999  calib=' '
disk=off
stop=04h57m18s   !NEXT!        
qual=  0
disk=off
stop=04h58m06s   !NEXT!

!* --- Scan from 04h58m22s to 04h59m10s   Thu, 2006 Feb 16 --- *!
sname='J07405+2852'  ra=07h40m33.540000s  dec= 28d52'47.27000"  qual=999  calib=' '
disk=off
stop=04h58m22s   !NEXT!        
qual=  0
disk=off
stop=04h59m10s   !NEXT!

!* --- Scan from 04h59m30s to 05h00m18s   Thu, 2006 Feb 16 --- *!
sname='J07448+2920'  ra=07h44m51.370000s  dec= 29d20'06.05000"  qual=999  calib=' '
disk=off
stop=04h59m30s   !NEXT!        
qual=  0
disk=off
stop=05h00m18s   !NEXT!

!* --- Scan from 05h00m39s to 05h01m27s   Thu, 2006 Feb 16 --- *!
sname='J07481+3006'  ra=07h48m09.470000s  dec= 30d06'30.54000"  qual=999  calib=' '
disk=off
stop=05h00m39s   !NEXT!        
qual=  0
disk=off
stop=05h01m27s   !NEXT!

!* --- Scan from 05h01m49s to 05h02m37s   Thu, 2006 Feb 16 --- *!
sname='J07466+2734'  ra=07h46m40.430000s  dec= 27d34'59.06000"  qual=999  calib=' '
disk=off
stop=05h01m49s   !NEXT!        
qual=  0
disk=off
stop=05h02m37s   !NEXT!

!* --- Scan from 05h02m58s to 05h03m46s   Thu, 2006 Feb 16 --- *!
sname='J07516+2657'  ra=07h51m37.130000s  dec= 26d57'08.02000"  qual=999  calib=' '
disk=off
stop=05h02m58s   !NEXT!        
qual=  0
disk=off
stop=05h03m46s   !NEXT!

!* --- Scan from 05h04m04s to 05h04m52s   Thu, 2006 Feb 16 --- *!
sname='J07576+2528'  ra=07h57m38.080000s  dec= 25d28'12.75000"  qual=999  calib=' '
disk=off
stop=05h04m04s   !NEXT!        
qual=  0
disk=off
stop=05h04m52s   !NEXT!

!* --- Scan from 05h05m07s to 05h05m55s   Thu, 2006 Feb 16 --- *!
sname='J08026+2509'  ra=08h02m41.590000s  dec= 25d09'10.91000"  qual=999  calib=' '
disk=off
stop=05h05m07s   !NEXT!        
qual=  0
disk=off
stop=05h05m55s   !NEXT!

!* --- Scan from 05h06m11s to 05h06m59s   Thu, 2006 Feb 16 --- *!
sname='J08056+2106'  ra=08h05m38.530000s  dec= 21d06'51.51000"  qual=999  calib=' '
disk=off
stop=05h06m11s   !NEXT!        
qual=  0
disk=off
stop=05h06m59s   !NEXT!

!* --- Scan from 05h07m13s to 05h08m01s   Thu, 2006 Feb 16 --- *!
sname='J08028+1809'  ra=08h02m48.030000s  dec= 18d09'49.27000"  qual=999  calib=' '
disk=off
stop=05h07m13s   !NEXT!        
qual=  0
disk=off
stop=05h08m01s   !NEXT!

!* --- Scan from 05h08m21s to 05h09m09s   Thu, 2006 Feb 16 --- *!
sname='J08170+1958'  ra=08h17m05.490000s  dec= 19d58'42.93000"  qual=999  calib=' '
disk=off
stop=05h08m21s   !NEXT!        
qual=  0
disk=off
stop=05h09m09s   !NEXT!

!* --- Scan from 05h09m25s to 05h10m13s   Thu, 2006 Feb 16 --- *!
sname='J08171+2352'  ra=08h17m10.550000s  dec= 23d52'23.95000"  qual=999  calib=' '
disk=off
stop=05h09m25s   !NEXT!        
qual=  0
disk=off
stop=05h10m13s   !NEXT!

!* --- Scan from 05h10m23s to 05h11m11s   Thu, 2006 Feb 16 --- *!
sname='J08137+2435'  ra=08h13m47.140000s  dec= 24d35'59.21000"  qual=999  calib=' '
disk=off
stop=05h10m23s   !NEXT!        
qual=  0
disk=off
stop=05h11m11s   !NEXT!

!* --- Scan from 05h11m21s to 05h12m09s   Thu, 2006 Feb 16 --- *!
sname='J08130+2542'  ra=08h13m03.840000s  dec= 25d42'11.09000"  qual=999  calib=' '
disk=off
stop=05h11m21s   !NEXT!        
qual=  0
disk=off
stop=05h12m09s   !NEXT!

!* --- Scan from 05h12m21s to 05h13m08s   Thu, 2006 Feb 16 --- *!
sname='J08086+2646'  ra=08h08m36.770000s  dec= 26d46'36.78000"  qual=999  calib=' '
disk=off
stop=05h12m21s   !NEXT!        
qual=  0
disk=off
stop=05h13m08s   !NEXT!

!* --- Scan from 05h13m41s to 05h14m29s   Thu, 2006 Feb 16 --- *!
sname='J08257+2704'  ra=08h25m47.390000s  dec= 27d04'22.04000"  qual=999  calib=' '
disk=off
stop=05h13m41s   !NEXT!        
qual=  0
disk=off
stop=05h14m29s   !NEXT!

!* --- Scan from 05h14m44s to 05h15m32s   Thu, 2006 Feb 16 --- *!
sname='J08374+2501'  ra=08h37m25.880000s  dec= 25d01'39.85000"  qual=999  calib=' '
disk=off
stop=05h14m44s   !NEXT!        
qual=  0
disk=off
stop=05h15m32s   !NEXT!

!* --- Scan from 05h15m39s to 05h16m27s   Thu, 2006 Feb 16 --- *!
sname='J08376+2454'  ra=08h37m40.250000s  dec= 24d54'23.12000"  qual=999  calib=' '
disk=off
stop=05h15m39s   !NEXT!        
qual=  0
disk=off
stop=05h16m27s   !NEXT!

!* --- Scan from 05h16m39s to 05h17m27s   Thu, 2006 Feb 16 --- *!
sname='J08367+2355'  ra=08h36m46.310000s  dec= 23d55'31.65000"  qual=999  calib=' '
disk=off
stop=05h16m39s   !NEXT!        
qual=  0
disk=off
stop=05h17m27s   !NEXT!

!* --- Scan from 05h17m48s to 05h18m36s   Thu, 2006 Feb 16 --- *!
sname='J08363+2728'  ra=08h36m22.890000s  dec= 27d28'52.54000"  qual=999  calib=' '
disk=off
stop=05h17m48s   !NEXT!        
qual=  0
disk=off
stop=05h18m36s   !NEXT!

!* --- Scan from 05h18m52s to 05h19m40s   Thu, 2006 Feb 16 --- *!
sname='J08392+2850'  ra=08h39m15.830000s  dec= 28d50'38.76000"  qual=999  calib=' '
disk=off
stop=05h18m52s   !NEXT!        
qual=  0
disk=off
stop=05h19m40s   !NEXT!

!* --- Scan from 05h19m57s to 05h20m44s   Thu, 2006 Feb 16 --- *!
sname='J08520+2833'  ra=08h52m05.170000s  dec= 28d33'59.75000"  qual=999  calib=' '
disk=off
stop=05h19m57s   !NEXT!        
qual=  0
disk=off
stop=05h20m44s   !NEXT!

!* --- Scan from 05h20m53s to 05h21m41s   Thu, 2006 Feb 16 --- *!
sname='J08532+2813'  ra=08h53m17.830000s  dec= 28d13'50.02000"  qual=999  calib=' '
disk=off
stop=05h20m53s   !NEXT!        
qual=  0
disk=off
stop=05h21m41s   !NEXT!

!* --- Scan from 05h24m00s to 05h25m59s   Thu, 2006 Feb 16 --- *!
sname='DA193'  ra=05h55m30.805611s  dec= 39d48'49.16496"  qual=999  calib='V'
disk=off
stop=05h24m00s   !NEXT!        
qual=  0
disk=off
stop=05h25m59s   !NEXT!

!* --- Scan from 05h28m46s to 05h29m34s   Thu, 2006 Feb 16 --- *!
sname='J08395+1802'  ra=08h39m30.720000s  dec= 18d02'47.14000"  qual=999  calib=' '
disk=off
stop=05h28m46s   !NEXT!        
qual=  0
disk=off
stop=05h29m34s   !NEXT!

!* --- Scan from 05h29m44s to 05h30m32s   Thu, 2006 Feb 16 --- *!
sname='J08420+1835'  ra=08h42m05.090000s  dec= 18d35'40.98000"  qual=999  calib=' '
disk=off
stop=05h29m44s   !NEXT!        
qual=  0
disk=off
stop=05h30m32s   !NEXT!

!* --- Scan from 05h30m47s to 05h31m35s   Thu, 2006 Feb 16 --- *!
sname='J08322+1832'  ra=08h32m16.040000s  dec= 18d32'12.12000"  qual=999  calib=' '
disk=off
stop=05h30m47s   !NEXT!        
qual=  0
disk=off
stop=05h31m35s   !NEXT!

!* --- Scan from 05h31m52s to 05h32m40s   Thu, 2006 Feb 16 --- *!
sname='J08234+2223'  ra=08h23m24.760000s  dec= 22d23'03.30000"  qual=999  calib=' '
disk=off
stop=05h31m52s   !NEXT!        
qual=  0
disk=off
stop=05h32m40s   !NEXT!

!* --- Scan from 05h32m53s to 05h33m41s   Thu, 2006 Feb 16 --- *!
sname='J08245+2438'  ra=08h24m33.010000s  dec= 24d38'43.12000"  qual=999  calib=' '
disk=off
stop=05h32m53s   !NEXT!        
qual=  0
disk=off
stop=05h33m41s   !NEXT!

!* --- Scan from 05h34m00s to 05h34m47s   Thu, 2006 Feb 16 --- *!
sname='J08362+2139'  ra=08h36m16.220000s  dec= 21d39'03.60000"  qual=999  calib=' '
disk=off
stop=05h34m00s   !NEXT!        
qual=  0
disk=off
stop=05h34m47s   !NEXT!

!* --- Scan from 05h35m07s to 05h35m55s   Thu, 2006 Feb 16 --- *!
sname='J08328+1554'  ra=08h32m49.400000s  dec= 15d54'08.61000"  qual=999  calib=' '
disk=off
stop=05h35m07s   !NEXT!        
qual=  0
disk=off
stop=05h35m55s   !NEXT!

!* --- Scan from 05h36m49s to 05h37m37s   Thu, 2006 Feb 16 --- *!
sname='J09048+2729'  ra=09h04m53.760000s  dec= 27d29'53.87000"  qual=999  calib=' '
disk=off
stop=05h36m49s   !NEXT!        
qual=  0
disk=off
stop=05h37m37s   !NEXT!

!* --- Scan from 05h37m46s to 05h38m34s   Thu, 2006 Feb 16 --- *!
sname='J09050+2748'  ra=09h05m04.050000s  dec= 27d48'17.69000"  qual=999  calib=' '
disk=off
stop=05h37m46s   !NEXT!        
qual=  0
disk=off
stop=05h38m34s   !NEXT!

!* --- Scan from 05h38m46s to 05h39m34s   Thu, 2006 Feb 16 --- *!
sname='J09056+2849'  ra=09h05m41.770000s  dec= 28d49'28.25000"  qual=999  calib=' '
disk=off
stop=05h38m46s   !NEXT!        
qual=  0
disk=off
stop=05h39m34s   !NEXT!

!* --- Scan from 05h40m09s to 05h40m57s   Thu, 2006 Feb 16 --- *!
sname='J09052+2052'  ra=09h05m14.340000s  dec= 20d52'13.29000"  qual=999  calib=' '
disk=off
stop=05h40m09s   !NEXT!        
qual=  0
disk=off
stop=05h40m57s   !NEXT!

!* --- Scan from 05h42m39s to 05h43m26s   Thu, 2006 Feb 16 --- *!
sname='J07362+2954'  ra=07h36m13.660000s  dec= 29d54'22.20000"  qual=999  calib=' '
disk=off
stop=05h42m39s   !NEXT!        
qual=  0
disk=off
stop=05h43m26s   !NEXT!

!* --- Scan from 05h44m59s to 05h45m47s   Thu, 2006 Feb 16 --- *!
sname='J08569+1739'  ra=08h56m56.690000s  dec= 17d39'47.77000"  qual=999  calib=' '
disk=off
stop=05h44m59s   !NEXT!        
qual=  0
disk=off
stop=05h45m47s   !NEXT!

!* --- Scan from 05h46m00s to 05h48m00s   Thu, 2006 Feb 16 --- *!
sname='J0854+2006'  ra=08h54m48.874924s  dec= 20d06'30.64088"  qual=999  calib='N'
disk=off
stop=05h46m00s   !NEXT!        
qual=  0
disk=off
stop=05h48m00s   !NEXT!

!* --- Scan from 05h49m03s to 05h49m51s   Thu, 2006 Feb 16 --- *!
sname='J08193+2747'  ra=08h19m18.860000s  dec= 27d47'30.72000"  qual=999  calib=' '
disk=off
stop=05h49m03s   !NEXT!        
qual=  0
disk=off
stop=05h49m51s   !NEXT!

!* --- Scan from 05h50m09s to 05h50m57s   Thu, 2006 Feb 16 --- *!
sname='J08219+2857'  ra=08h21m54.070000s  dec= 28d57'39.57000"  qual=999  calib=' '
disk=off
stop=05h50m09s   !NEXT!        
qual=  0
disk=off
stop=05h50m57s   !NEXT!

!* --- Scan from 05h51m11s to 05h51m59s   Thu, 2006 Feb 16 --- *!
sname='J08236+2928'  ra=08h23m41.130000s  dec= 29d28'28.17000"  qual=999  calib=' '
disk=off
stop=05h51m11s   !NEXT!        
qual=  0
disk=off
stop=05h51m59s   !NEXT!

!* --- Scan from 05h52m14s to 05h53m02s   Thu, 2006 Feb 16 --- *!
sname='J08281+2920'  ra=08h28m09.380000s  dec= 29d20'19.57000"  qual=999  calib=' '
disk=off
stop=05h52m14s   !NEXT!        
qual=  0
disk=off
stop=05h53m02s   !NEXT!

!* --- Scan from 05h54m10s to 05h54m57s   Thu, 2006 Feb 16 --- *!
sname='J07462+1807'  ra=07h46m16.670000s  dec= 18d07'19.66000"  qual=999  calib=' '
disk=off
stop=05h54m10s   !NEXT!        
qual=  0
disk=off
stop=05h54m57s   !NEXT!

!* --- Scan from 05h55m07s to 05h55m55s   Thu, 2006 Feb 16 --- *!
sname='J07500+1823'  ra=07h50m00.330000s  dec= 18d23'11.40000"  qual=999  calib=' '
disk=off
stop=05h55m07s   !NEXT!        
qual=  0
disk=off
stop=05h55m55s   !NEXT!

!* --- Scan from 05h56m10s to 05h56m58s   Thu, 2006 Feb 16 --- *!
sname='J07538+2146'  ra=07h53m53.290000s  dec= 21d46'01.74000"  qual=999  calib=' '
disk=off
stop=05h56m10s   !NEXT!        
qual=  0
disk=off
stop=05h56m58s   !NEXT!

!* --- Scan from 05h57m15s to 05h58m03s   Thu, 2006 Feb 16 --- *!
sname='J07486+2400'  ra=07h48m36.110000s  dec= 24d00'24.15000"  qual=999  calib=' '
disk=off
stop=05h57m15s   !NEXT!        
qual=  0
disk=off
stop=05h58m03s   !NEXT!

!* --- Scan from 05h58m14s to 05h59m02s   Thu, 2006 Feb 16 --- *!
sname='J07437+2328'  ra=07h43m44.970000s  dec= 23d28'39.00000"  qual=999  calib=' '
disk=off
stop=05h58m14s   !NEXT!        
qual=  0
disk=off
stop=05h59m02s   !NEXT!

!* --- Scan from 05h59m15s to 06h00m02s   Thu, 2006 Feb 16 --- *!
sname='J07464+2549'  ra=07h46m25.870000s  dec= 25d49'02.15000"  qual=999  calib=' '
disk=off
stop=05h59m15s   !NEXT!        
qual=  0
disk=off
stop=06h00m02s   !NEXT!

!* --- Scan from 06h00m14s to 06h01m02s   Thu, 2006 Feb 16 --- *!
sname='J07414+2557'  ra=07h41m29.740000s  dec= 25d57'32.27000"  qual=999  calib=' '
disk=off
stop=06h00m14s   !NEXT!        
qual=  0
disk=off
stop=06h01m02s   !NEXT!

!* --- Scan from 06h01m14s to 06h02m02s   Thu, 2006 Feb 16 --- *!
sname='J07369+2604'  ra=07h36m58.070000s  dec= 26d04'49.89000"  qual=999  calib=' '
disk=off
stop=06h01m14s   !NEXT!        
qual=  0
disk=off
stop=06h02m02s   !NEXT!

!* --- Scan from 06h02m13s to 06h03m01s   Thu, 2006 Feb 16 --- *!
sname='J07414+2706'  ra=07h41m25.730000s  dec= 27d06'45.42000"  qual=999  calib=' '
disk=off
stop=06h02m13s   !NEXT!        
qual=  0
disk=off
stop=06h03m01s   !NEXT!

!* --- Scan from 06h03m13s to 06h04m00s   Thu, 2006 Feb 16 --- *!
sname='J07466+2734'  ra=07h46m40.430000s  dec= 27d34'59.06000"  qual=999  calib=' '
disk=off
stop=06h03m13s   !NEXT!        
qual=  0
disk=off
stop=06h04m00s   !NEXT!

!* --- Scan from 06h04m14s to 06h05m02s   Thu, 2006 Feb 16 --- *!
sname='J07516+2657'  ra=07h51m37.130000s  dec= 26d57'08.02000"  qual=999  calib=' '
disk=off
stop=06h04m14s   !NEXT!        
qual=  0
disk=off
stop=06h05m02s   !NEXT!

!* --- Scan from 06h05m20s to 06h06m07s   Thu, 2006 Feb 16 --- *!
sname='J07576+2528'  ra=07h57m38.080000s  dec= 25d28'12.75000"  qual=999  calib=' '
disk=off
stop=06h05m20s   !NEXT!        
qual=  0
disk=off
stop=06h06m07s   !NEXT!

!* --- Scan from 06h06m21s to 06h07m09s   Thu, 2006 Feb 16 --- *!
sname='J08026+2509'  ra=08h02m41.590000s  dec= 25d09'10.91000"  qual=999  calib=' '
disk=off
stop=06h06m21s   !NEXT!        
qual=  0
disk=off
stop=06h07m09s   !NEXT!

!* --- Scan from 06h07m27s to 06h08m15s   Thu, 2006 Feb 16 --- *!
sname='J08056+2106'  ra=08h05m38.530000s  dec= 21d06'51.51000"  qual=999  calib=' '
disk=off
stop=06h07m27s   !NEXT!        
qual=  0
disk=off
stop=06h08m15s   !NEXT!

!* --- Scan from 06h08m29s to 06h09m17s   Thu, 2006 Feb 16 --- *!
sname='J08028+1809'  ra=08h02m48.030000s  dec= 18d09'49.27000"  qual=999  calib=' '
disk=off
stop=06h08m29s   !NEXT!        
qual=  0
disk=off
stop=06h09m17s   !NEXT!

!* --- Scan from 06h09m34s to 06h10m22s   Thu, 2006 Feb 16 --- *!
sname='J08170+1958'  ra=08h17m05.490000s  dec= 19d58'42.93000"  qual=999  calib=' '
disk=off
stop=06h09m34s   !NEXT!        
qual=  0
disk=off
stop=06h10m22s   !NEXT!

!* --- Scan from 06h10m35s to 06h11m23s   Thu, 2006 Feb 16 --- *!
sname='J08234+2223'  ra=08h23m24.760000s  dec= 22d23'03.30000"  qual=999  calib=' '
disk=off
stop=06h10m35s   !NEXT!        
qual=  0
disk=off
stop=06h11m23s   !NEXT!

!* --- Scan from 06h11m39s to 06h12m27s   Thu, 2006 Feb 16 --- *!
sname='J08171+2352'  ra=08h17m10.550000s  dec= 23d52'23.95000"  qual=999  calib=' '
disk=off
stop=06h11m39s   !NEXT!        
qual=  0
disk=off
stop=06h12m27s   !NEXT!

!* --- Scan from 06h12m43s to 06h13m30s   Thu, 2006 Feb 16 --- *!
sname='J08245+2438'  ra=08h24m33.010000s  dec= 24d38'43.12000"  qual=999  calib=' '
disk=off
stop=06h12m43s   !NEXT!        
qual=  0
disk=off
stop=06h13m30s   !NEXT!

!* --- Scan from 06h13m51s to 06h14m39s   Thu, 2006 Feb 16 --- *!
sname='J08137+2435'  ra=08h13m47.140000s  dec= 24d35'59.21000"  qual=999  calib=' '
disk=off
stop=06h13m51s   !NEXT!        
qual=  0
disk=off
stop=06h14m39s   !NEXT!

!* --- Scan from 06h14m50s to 06h15m38s   Thu, 2006 Feb 16 --- *!
sname='J08130+2542'  ra=08h13m03.840000s  dec= 25d42'11.09000"  qual=999  calib=' '
disk=off
stop=06h14m50s   !NEXT!        
qual=  0
disk=off
stop=06h15m38s   !NEXT!

!* --- Scan from 06h15m59s to 06h16m47s   Thu, 2006 Feb 16 --- *!
sname='J08257+2704'  ra=08h25m47.390000s  dec= 27d04'22.04000"  qual=999  calib=' '
disk=off
stop=06h15m59s   !NEXT!        
qual=  0
disk=off
stop=06h16m47s   !NEXT!

!* --- Scan from 06h17m04s to 06h17m52s   Thu, 2006 Feb 16 --- *!
sname='J08281+2920'  ra=08h28m09.380000s  dec= 29d20'19.57000"  qual=999  calib=' '
disk=off
stop=06h17m04s   !NEXT!        
qual=  0
disk=off
stop=06h17m52s   !NEXT!

!* --- Scan from 06h18m24s to 06h19m12s   Thu, 2006 Feb 16 --- *!
sname='J08363+2728'  ra=08h36m22.890000s  dec= 27d28'52.54000"  qual=999  calib=' '
disk=off
stop=06h18m24s   !NEXT!        
qual=  0
disk=off
stop=06h19m12s   !NEXT!

!* --- Scan from 06h19m27s to 06h20m15s   Thu, 2006 Feb 16 --- *!
sname='J08392+2850'  ra=08h39m15.830000s  dec= 28d50'38.76000"  qual=999  calib=' '
disk=off
stop=06h19m27s   !NEXT!        
qual=  0
disk=off
stop=06h20m15s   !NEXT!

!* --- Scan from 06h20m39s to 06h21m27s   Thu, 2006 Feb 16 --- *!
sname='J08374+2501'  ra=08h37m25.880000s  dec= 25d01'39.85000"  qual=999  calib=' '
disk=off
stop=06h20m39s   !NEXT!        
qual=  0
disk=off
stop=06h21m27s   !NEXT!

!* --- Scan from 06h21m35s to 06h22m23s   Thu, 2006 Feb 16 --- *!
sname='J08376+2454'  ra=08h37m40.250000s  dec= 24d54'23.12000"  qual=999  calib=' '
disk=off
stop=06h21m35s   !NEXT!        
qual=  0
disk=off
stop=06h22m23s   !NEXT!

!* --- Scan from 06h22m33s to 06h23m21s   Thu, 2006 Feb 16 --- *!
sname='J08367+2355'  ra=08h36m46.310000s  dec= 23d55'31.65000"  qual=999  calib=' '
disk=off
stop=06h22m33s   !NEXT!        
qual=  0
disk=off
stop=06h23m21s   !NEXT!

!* --- Scan from 06h23m39s to 06h24m27s   Thu, 2006 Feb 16 --- *!
sname='J08391+2002'  ra=08h39m10.900000s  dec= 20d02'07.34000"  qual=999  calib=' '
disk=off
stop=06h23m39s   !NEXT!        
qual=  0
disk=off
stop=06h24m27s   !NEXT!

!* --- Scan from 06h24m40s to 06h25m28s   Thu, 2006 Feb 16 --- *!
sname='J08322+1832'  ra=08h32m16.040000s  dec= 18d32'12.12000"  qual=999  calib=' '
disk=off
stop=06h24m40s   !NEXT!        
qual=  0
disk=off
stop=06h25m28s   !NEXT!

!* --- Scan from 06h25m36s to 06h26m24s   Thu, 2006 Feb 16 --- *!
sname='J08324+1821'  ra=08h32m24.880000s  dec= 18d21'22.00000"  qual=999  calib=' '
disk=off
stop=06h25m36s   !NEXT!        
qual=  0
disk=off
stop=06h26m24s   !NEXT!

!* --- Scan from 06h26m38s to 06h27m26s   Thu, 2006 Feb 16 --- *!
sname='J08420+1835'  ra=08h42m05.090000s  dec= 18d35'40.98000"  qual=999  calib=' '
disk=off
stop=06h26m38s   !NEXT!        
qual=  0
disk=off
stop=06h27m26s   !NEXT!

!* --- Scan from 06h27m36s to 06h28m24s   Thu, 2006 Feb 16 --- *!
sname='J08395+1802'  ra=08h39m30.720000s  dec= 18d02'47.14000"  qual=999  calib=' '
disk=off
stop=06h27m36s   !NEXT!        
qual=  0
disk=off
stop=06h28m24s   !NEXT!

!* --- Scan from 06h28m38s to 06h29m25s   Thu, 2006 Feb 16 --- *!
sname='J08328+1554'  ra=08h32m49.400000s  dec= 15d54'08.61000"  qual=999  calib=' '
disk=off
stop=06h28m38s   !NEXT!        
qual=  0
disk=off
stop=06h29m25s   !NEXT!

!* --- Scan from 06h29m38s to 06h30m26s   Thu, 2006 Feb 16 --- *!
sname='J08290+1754'  ra=08h29m04.830000s  dec= 17d54'15.86000"  qual=999  calib=' '
disk=off
stop=06h29m38s   !NEXT!        
qual=  0
disk=off
stop=06h30m26s   !NEXT!

!* --- Scan from 06h31m53s to 06h33m53s   Thu, 2006 Feb 16 --- *!
sname='DA193'  ra=05h55m30.805611s  dec= 39d48'49.16496"  qual=999  calib='V'
disk=off
stop=06h31m53s   !NEXT!        
qual=  0
disk=off
stop=06h33m53s   !NEXT!

!* --- Scan from 06h35m40s to 06h36m28s   Thu, 2006 Feb 16 --- *!
sname='J08520+2833'  ra=08h52m05.170000s  dec= 28d33'59.75000"  qual=999  calib=' '
disk=off
stop=06h35m40s   !NEXT!        
qual=  0
disk=off
stop=06h36m28s   !NEXT!

!* --- Scan from 06h36m39s to 06h37m27s   Thu, 2006 Feb 16 --- *!
sname='J08532+2813'  ra=08h53m17.830000s  dec= 28d13'50.02000"  qual=999  calib=' '
disk=off
stop=06h36m39s   !NEXT!        
qual=  0
disk=off
stop=06h37m27s   !NEXT!

!* --- Scan from 06h37m58s to 06h38m46s   Thu, 2006 Feb 16 --- *!
sname='J09048+2729'  ra=09h04m53.760000s  dec= 27d29'53.87000"  qual=999  calib=' '
disk=off
stop=06h37m58s   !NEXT!        
qual=  0
disk=off
stop=06h38m46s   !NEXT!

!* --- Scan from 06h38m56s to 06h39m43s   Thu, 2006 Feb 16 --- *!
sname='J09050+2748'  ra=09h05m04.050000s  dec= 27d48'17.69000"  qual=999  calib=' '
disk=off
stop=06h38m56s   !NEXT!        
qual=  0
disk=off
stop=06h39m43s   !NEXT!

!* --- Scan from 06h39m58s to 06h40m46s   Thu, 2006 Feb 16 --- *!
sname='J09056+2849'  ra=09h05m41.770000s  dec= 28d49'28.25000"  qual=999  calib=' '
disk=off
stop=06h39m58s   !NEXT!        
qual=  0
disk=off
stop=06h40m46s   !NEXT!

!* --- Scan from 06h41m22s to 06h42m10s   Thu, 2006 Feb 16 --- *!
sname='J08569+1739'  ra=08h56m56.690000s  dec= 17d39'47.77000"  qual=999  calib=' '
disk=off
stop=06h41m22s   !NEXT!        
qual=  0
disk=off
stop=06h42m10s   !NEXT!

!* --- Scan from 06h42m26s to 06h43m14s   Thu, 2006 Feb 16 --- *!
sname='J09052+2052'  ra=09h05m14.340000s  dec= 20d52'13.29000"  qual=999  calib=' '
disk=off
stop=06h42m26s   !NEXT!        
qual=  0
disk=off
stop=06h43m14s   !NEXT!

!* --- Scan from 06h44m29s to 06h45m17s   Thu, 2006 Feb 16 --- *!
sname='J07365+2840'  ra=07h36m31.200000s  dec= 28d40'36.84000"  qual=999  calib=' '
disk=off
stop=06h44m29s   !NEXT!        
qual=  0
disk=off
stop=06h45m17s   !NEXT!

!* --- Scan from 06h45m26s to 06h46m14s   Thu, 2006 Feb 16 --- *!
sname='J07405+2852'  ra=07h40m33.540000s  dec= 28d52'47.27000"  qual=999  calib=' '
disk=off
stop=06h45m26s   !NEXT!        
qual=  0
disk=off
stop=06h46m14s   !NEXT!

!* --- Scan from 06h46m24s to 06h47m12s   Thu, 2006 Feb 16 --- *!
sname='J07448+2920'  ra=07h44m51.370000s  dec= 29d20'06.05000"  qual=999  calib=' '
disk=off
stop=06h46m24s   !NEXT!        
qual=  0
disk=off
stop=06h47m12s   !NEXT!

!* --- Scan from 06h47m22s to 06h48m10s   Thu, 2006 Feb 16 --- *!
sname='J07481+3006'  ra=07h48m09.470000s  dec= 30d06'30.54000"  qual=999  calib=' '
disk=off
stop=06h47m22s   !NEXT!        
qual=  0
disk=off
stop=06h48m10s   !NEXT!

!* --- Scan from 06h48m23s to 06h49m11s   Thu, 2006 Feb 16 --- *!
sname='J07362+2954'  ra=07h36m13.660000s  dec= 29d54'22.20000"  qual=999  calib=' '
disk=off
stop=06h48m23s   !NEXT!        
qual=  0
disk=off
stop=06h49m11s   !NEXT!

!* --- Scan from 06h49m27s to 06h50m15s   Thu, 2006 Feb 16 --- *!
sname='J07369+2604'  ra=07h36m58.070000s  dec= 26d04'49.89000"  qual=999  calib=' '
disk=off
stop=06h49m27s   !NEXT!        
qual=  0
disk=off
stop=06h50m15s   !NEXT!

!* --- Scan from 06h50m25s to 06h51m13s   Thu, 2006 Feb 16 --- *!
sname='J07414+2557'  ra=07h41m29.740000s  dec= 25d57'32.27000"  qual=999  calib=' '
disk=off
stop=06h50m25s   !NEXT!        
qual=  0
disk=off
stop=06h51m13s   !NEXT!

!* --- Scan from 06h51m34s to 06h52m21s   Thu, 2006 Feb 16 --- *!
sname='J08086+2646'  ra=08h08m36.770000s  dec= 26d46'36.78000"  qual=999  calib=' '
disk=off
stop=06h51m34s   !NEXT!        
qual=  0
disk=off
stop=06h52m21s   !NEXT!

!* --- Scan from 06h52m35s to 06h53m23s   Thu, 2006 Feb 16 --- *!
sname='J08193+2747'  ra=08h19m18.860000s  dec= 27d47'30.72000"  qual=999  calib=' '
disk=off
stop=06h52m35s   !NEXT!        
qual=  0
disk=off
stop=06h53m23s   !NEXT!

!* --- Scan from 06h53m34s to 06h54m22s   Thu, 2006 Feb 16 --- *!
sname='J08219+2857'  ra=08h21m54.070000s  dec= 28d57'39.57000"  qual=999  calib=' '
disk=off
stop=06h53m34s   !NEXT!        
qual=  0
disk=off
stop=06h54m22s   !NEXT!

!* --- Scan from 06h54m31s to 06h55m19s   Thu, 2006 Feb 16 --- *!
sname='J08236+2928'  ra=08h23m41.130000s  dec= 29d28'28.17000"  qual=999  calib=' '
disk=off
stop=06h54m31s   !NEXT!        
qual=  0
disk=off
stop=06h55m19s   !NEXT!

!* --- Scan from 06h55m56s to 06h56m43s   Thu, 2006 Feb 16 --- *!
sname='J08362+2139'  ra=08h36m16.220000s  dec= 21d39'03.60000"  qual=999  calib=' '
disk=off
stop=06h55m56s   !NEXT!        
qual=  0
disk=off
stop=06h56m43s   !NEXT!

!* --- Scan from 06h57m01s to 06h57m49s   Thu, 2006 Feb 16 --- *!
sname='J08170+1958'  ra=08h17m05.490000s  dec= 19d58'42.93000"  qual=999  calib=' '
disk=off
stop=06h57m01s   !NEXT!        
qual=  0
disk=off
stop=06h57m49s   !NEXT!

!* --- Scan from 06h58m06s to 06h58m53s   Thu, 2006 Feb 16 --- *!
sname='J08028+1809'  ra=08h02m48.030000s  dec= 18d09'49.27000"  qual=999  calib=' '
disk=off
stop=06h58m06s   !NEXT!        
qual=  0
disk=off
stop=06h58m53s   !NEXT!

!* --- Scan from 06h59m08s to 06h59m56s   Thu, 2006 Feb 16 --- *!
sname='J07500+1823'  ra=07h50m00.330000s  dec= 18d23'11.40000"  qual=999  calib=' '
disk=off
stop=06h59m08s   !NEXT!        
qual=  0
disk=off
stop=06h59m56s   !NEXT!

!* --- Scan from 07h00m06s to 07h00m53s   Thu, 2006 Feb 16 --- *!
sname='J07462+1807'  ra=07h46m16.670000s  dec= 18d07'19.66000"  qual=999  calib=' '
disk=off
stop=07h00m06s   !NEXT!        
qual=  0
disk=off
stop=07h00m53s   !NEXT!

!* --- Scan from 07h01m10s to 07h01m58s   Thu, 2006 Feb 16 --- *!
sname='J07538+2146'  ra=07h53m53.290000s  dec= 21d46'01.74000"  qual=999  calib=' '
disk=off
stop=07h01m10s   !NEXT!        
qual=  0
disk=off
stop=07h01m58s   !NEXT!

!* --- Scan from 07h02m11s to 07h02m59s   Thu, 2006 Feb 16 --- *!
sname='J07437+2328'  ra=07h43m44.970000s  dec= 23d28'39.00000"  qual=999  calib=' '
disk=off
stop=07h02m11s   !NEXT!        
qual=  0
disk=off
stop=07h02m59s   !NEXT!

!* --- Scan from 07h03m10s to 07h03m58s   Thu, 2006 Feb 16 --- *!
sname='J07486+2400'  ra=07h48m36.110000s  dec= 24d00'24.15000"  qual=999  calib=' '
disk=off
stop=07h03m10s   !NEXT!        
qual=  0
disk=off
stop=07h03m58s   !NEXT!

!* --- Scan from 07h04m09s to 07h04m57s   Thu, 2006 Feb 16 --- *!
sname='J07464+2549'  ra=07h46m25.870000s  dec= 25d49'02.15000"  qual=999  calib=' '
disk=off
stop=07h04m09s   !NEXT!        
qual=  0
disk=off
stop=07h04m57s   !NEXT!

!* --- Scan from 07h05m09s to 07h05m57s   Thu, 2006 Feb 16 --- *!
sname='J07414+2706'  ra=07h41m25.730000s  dec= 27d06'45.42000"  qual=999  calib=' '
disk=off
stop=07h05m09s   !NEXT!        
qual=  0
disk=off
stop=07h05m57s   !NEXT!

!* --- Scan from 07h06m07s to 07h06m55s   Thu, 2006 Feb 16 --- *!
sname='J07466+2734'  ra=07h46m40.430000s  dec= 27d34'59.06000"  qual=999  calib=' '
disk=off
stop=07h06m07s   !NEXT!        
qual=  0
disk=off
stop=07h06m55s   !NEXT!

!* --- Scan from 07h07m06s to 07h07m54s   Thu, 2006 Feb 16 --- *!
sname='J07516+2657'  ra=07h51m37.130000s  dec= 26d57'08.02000"  qual=999  calib=' '
disk=off
stop=07h07m06s   !NEXT!        
qual=  0
disk=off
stop=07h07m54s   !NEXT!

!* --- Scan from 07h08m06s to 07h08m54s   Thu, 2006 Feb 16 --- *!
sname='J07576+2528'  ra=07h57m38.080000s  dec= 25d28'12.75000"  qual=999  calib=' '
disk=off
stop=07h08m06s   !NEXT!        
qual=  0
disk=off
stop=07h08m54s   !NEXT!

!* --- Scan from 07h09m05s to 07h09m52s   Thu, 2006 Feb 16 --- *!
sname='J08026+2509'  ra=08h02m41.590000s  dec= 25d09'10.91000"  qual=999  calib=' '
disk=off
stop=07h09m05s   !NEXT!        
qual=  0
disk=off
stop=07h09m52s   !NEXT!

!* --- Scan from 07h10m08s to 07h10m56s   Thu, 2006 Feb 16 --- *!
sname='J08056+2106'  ra=08h05m38.530000s  dec= 21d06'51.51000"  qual=999  calib=' '
disk=off
stop=07h10m08s   !NEXT!        
qual=  0
disk=off
stop=07h10m56s   !NEXT!

!* --- Scan from 07h11m12s to 07h12m00s   Thu, 2006 Feb 16 --- *!
sname='J08137+2435'  ra=08h13m47.140000s  dec= 24d35'59.21000"  qual=999  calib=' '
disk=off
stop=07h11m12s   !NEXT!        
qual=  0
disk=off
stop=07h12m00s   !NEXT!

!* --- Scan from 07h12m11s to 07h12m58s   Thu, 2006 Feb 16 --- *!
sname='J08171+2352'  ra=08h17m10.550000s  dec= 23d52'23.95000"  qual=999  calib=' '
disk=off
stop=07h12m11s   !NEXT!        
qual=  0
disk=off
stop=07h12m58s   !NEXT!

!* --- Scan from 07h13m11s to 07h13m59s   Thu, 2006 Feb 16 --- *!
sname='J08234+2223'  ra=08h23m24.760000s  dec= 22d23'03.30000"  qual=999  calib=' '
disk=off
stop=07h13m11s   !NEXT!        
qual=  0
disk=off
stop=07h13m59s   !NEXT!

!* --- Scan from 07h14m12s to 07h14m59s   Thu, 2006 Feb 16 --- *!
sname='J08245+2438'  ra=08h24m33.010000s  dec= 24d38'43.12000"  qual=999  calib=' '
disk=off
stop=07h14m12s   !NEXT!        
qual=  0
disk=off
stop=07h14m59s   !NEXT!

!* --- Scan from 07h15m15s to 07h16m02s   Thu, 2006 Feb 16 --- *!
sname='J08130+2542'  ra=08h13m03.840000s  dec= 25d42'11.09000"  qual=999  calib=' '
disk=off
stop=07h15m15s   !NEXT!        
qual=  0
disk=off
stop=07h16m02s   !NEXT!

!* --- Scan from 07h16m14s to 07h17m02s   Thu, 2006 Feb 16 --- *!
sname='J08086+2646'  ra=08h08m36.770000s  dec= 26d46'36.78000"  qual=999  calib=' '
disk=off
stop=07h16m14s   !NEXT!        
qual=  0
disk=off
stop=07h17m02s   !NEXT!

!* --- Scan from 07h17m22s to 07h18m10s   Thu, 2006 Feb 16 --- *!
sname='J07405+2852'  ra=07h40m33.540000s  dec= 28d52'47.27000"  qual=999  calib=' '
disk=off
stop=07h17m22s   !NEXT!        
qual=  0
disk=off
stop=07h18m10s   !NEXT!

!* --- Scan from 07h18m20s to 07h19m08s   Thu, 2006 Feb 16 --- *!
sname='J07365+2840'  ra=07h36m31.200000s  dec= 28d40'36.84000"  qual=999  calib=' '
disk=off
stop=07h18m20s   !NEXT!        
qual=  0
disk=off
stop=07h19m08s   !NEXT!

!* --- Scan from 07h19m18s to 07h20m06s   Thu, 2006 Feb 16 --- *!
sname='J07362+2954'  ra=07h36m13.660000s  dec= 29d54'22.20000"  qual=999  calib=' '
disk=off
stop=07h19m18s   !NEXT!        
qual=  0
disk=off
stop=07h20m06s   !NEXT!

!* --- Scan from 07h20m18s to 07h21m06s   Thu, 2006 Feb 16 --- *!
sname='J07448+2920'  ra=07h44m51.370000s  dec= 29d20'06.05000"  qual=999  calib=' '
disk=off
stop=07h20m18s   !NEXT!        
qual=  0
disk=off
stop=07h21m06s   !NEXT!

!* --- Scan from 07h21m16s to 07h22m04s   Thu, 2006 Feb 16 --- *!
sname='J07481+3006'  ra=07h48m09.470000s  dec= 30d06'30.54000"  qual=999  calib=' '
disk=off
stop=07h21m16s   !NEXT!        
qual=  0
disk=off
stop=07h22m04s   !NEXT!

!* --- Scan from 07h22m29s to 07h23m17s   Thu, 2006 Feb 16 --- *!
sname='J08281+2920'  ra=08h28m09.380000s  dec= 29d20'19.57000"  qual=999  calib=' '
disk=off
stop=07h22m29s   !NEXT!        
qual=  0
disk=off
stop=07h23m17s   !NEXT!

!* --- Scan from 07h23m30s to 07h24m18s   Thu, 2006 Feb 16 --- *!
sname='J08257+2704'  ra=08h25m47.390000s  dec= 27d04'22.04000"  qual=999  calib=' '
disk=off
stop=07h23m30s   !NEXT!        
qual=  0
disk=off
stop=07h24m18s   !NEXT!

!* --- Scan from 07h24m31s to 07h25m19s   Thu, 2006 Feb 16 --- *!
sname='J08363+2728'  ra=08h36m22.890000s  dec= 27d28'52.54000"  qual=999  calib=' '
disk=off
stop=07h24m31s   !NEXT!        
qual=  0
disk=off
stop=07h25m19s   !NEXT!

!* --- Scan from 07h25m33s to 07h26m21s   Thu, 2006 Feb 16 --- *!
sname='J08374+2501'  ra=08h37m25.880000s  dec= 25d01'39.85000"  qual=999  calib=' '
disk=off
stop=07h25m33s   !NEXT!        
qual=  0
disk=off
stop=07h26m21s   !NEXT!

!* --- Scan from 07h26m29s to 07h27m16s   Thu, 2006 Feb 16 --- *!
sname='J08376+2454'  ra=08h37m40.250000s  dec= 24d54'23.12000"  qual=999  calib=' '
disk=off
stop=07h26m29s   !NEXT!        
qual=  0
disk=off
stop=07h27m16s   !NEXT!

!* --- Scan from 07h27m26s to 07h28m14s   Thu, 2006 Feb 16 --- *!
sname='J08367+2355'  ra=08h36m46.310000s  dec= 23d55'31.65000"  qual=999  calib=' '
disk=off
stop=07h27m26s   !NEXT!        
qual=  0
disk=off
stop=07h28m14s   !NEXT!

!* --- Scan from 07h28m30s to 07h29m18s   Thu, 2006 Feb 16 --- *!
sname='J08391+2002'  ra=08h39m10.900000s  dec= 20d02'07.34000"  qual=999  calib=' '
disk=off
stop=07h28m30s   !NEXT!        
qual=  0
disk=off
stop=07h29m18s   !NEXT!

!* --- Scan from 07h29m29s to 07h30m17s   Thu, 2006 Feb 16 --- *!
sname='J08420+1835'  ra=08h42m05.090000s  dec= 18d35'40.98000"  qual=999  calib=' '
disk=off
stop=07h29m29s   !NEXT!        
qual=  0
disk=off
stop=07h30m17s   !NEXT!

!* --- Scan from 07h30m27s to 07h31m15s   Thu, 2006 Feb 16 --- *!
sname='J08395+1802'  ra=08h39m30.720000s  dec= 18d02'47.14000"  qual=999  calib=' '
disk=off
stop=07h30m27s   !NEXT!        
qual=  0
disk=off
stop=07h31m15s   !NEXT!

!* --- Scan from 07h31m26s to 07h32m14s   Thu, 2006 Feb 16 --- *!
sname='J08324+1821'  ra=08h32m24.880000s  dec= 18d21'22.00000"  qual=999  calib=' '
disk=off
stop=07h31m26s   !NEXT!        
qual=  0
disk=off
stop=07h32m14s   !NEXT!

!* --- Scan from 07h32m22s to 07h33m10s   Thu, 2006 Feb 16 --- *!
sname='J08322+1832'  ra=08h32m16.040000s  dec= 18d32'12.12000"  qual=999  calib=' '
disk=off
stop=07h32m22s   !NEXT!        
qual=  0
disk=off
stop=07h33m10s   !NEXT!

!* --- Scan from 07h33m20s to 07h34m07s   Thu, 2006 Feb 16 --- *!
sname='J08290+1754'  ra=08h29m04.830000s  dec= 17d54'15.86000"  qual=999  calib=' '
disk=off
stop=07h33m20s   !NEXT!        
qual=  0
disk=off
stop=07h34m07s   !NEXT!

!* --- Scan from 07h34m19s to 07h35m07s   Thu, 2006 Feb 16 --- *!
sname='J08328+1554'  ra=08h32m49.400000s  dec= 15d54'08.61000"  qual=999  calib=' '
disk=off
stop=07h34m19s   !NEXT!        
qual=  0
disk=off
stop=07h35m07s   !NEXT!

!* --- Scan from 07h35m32s to 07h36m19s   Thu, 2006 Feb 16 --- *!
sname='J08566+2057'  ra=08h56m39.740000s  dec= 20d57'43.43000"  qual=999  calib=' '
disk=off
stop=07h35m32s   !NEXT!        
qual=  0
disk=off
stop=07h36m19s   !NEXT!

!* --- Scan from 07h36m27s to 07h37m15s   Thu, 2006 Feb 16 --- *!
sname='J08569+2111'  ra=08h56m57.240000s  dec= 21d11'43.64000"  qual=999  calib=' '
disk=off
stop=07h36m27s   !NEXT!        
qual=  0
disk=off
stop=07h37m15s   !NEXT!

!* --- Scan from 07h37m28s to 07h38m16s   Thu, 2006 Feb 16 --- *!
sname='J09052+2052'  ra=09h05m14.340000s  dec= 20d52'13.29000"  qual=999  calib=' '
disk=off
stop=07h37m28s   !NEXT!        
qual=  0
disk=off
stop=07h38m16s   !NEXT!

!* --- Scan from 07h38m31s to 07h39m19s   Thu, 2006 Feb 16 --- *!
sname='J08569+1739'  ra=08h56m56.690000s  dec= 17d39'47.77000"  qual=999  calib=' '
disk=off
stop=07h38m31s   !NEXT!        
qual=  0
disk=off
stop=07h39m19s   !NEXT!

!* --- Scan from 07h39m32s to 07h41m32s   Thu, 2006 Feb 16 --- *!
sname='J0854+2006'  ra=08h54m48.874924s  dec= 20d06'30.64088"  qual=999  calib='N'
disk=off
stop=07h39m32s   !NEXT!        
qual=  0
disk=off
stop=07h41m32s   !NEXT!

!* --- Scan from 07h43m01s to 07h45m01s   Thu, 2006 Feb 16 --- *!
sname='DA193'  ra=05h55m30.805611s  dec= 39d48'49.16496"  qual=999  calib='V'
disk=off
stop=07h43m01s   !NEXT!        
qual=  0
disk=off
stop=07h45m01s   !NEXT!

!* --- Scan from 07h46m18s to 07h47m05s   Thu, 2006 Feb 16 --- *!
sname='J08520+2833'  ra=08h52m05.170000s  dec= 28d33'59.75000"  qual=999  calib=' '
disk=off
stop=07h46m18s   !NEXT!        
qual=  0
disk=off
stop=07h47m05s   !NEXT!

!* --- Scan from 07h47m15s to 07h48m02s   Thu, 2006 Feb 16 --- *!
sname='J08532+2813'  ra=08h53m17.830000s  dec= 28d13'50.02000"  qual=999  calib=' '
disk=off
stop=07h47m15s   !NEXT!        
qual=  0
disk=off
stop=07h48m02s   !NEXT!

!* --- Scan from 07h48m16s to 07h49m04s   Thu, 2006 Feb 16 --- *!
sname='J09056+2849'  ra=09h05m41.770000s  dec= 28d49'28.25000"  qual=999  calib=' '
disk=off
stop=07h48m16s   !NEXT!        
qual=  0
disk=off
stop=07h49m04s   !NEXT!

!* --- Scan from 07h49m15s to 07h50m03s   Thu, 2006 Feb 16 --- *!
sname='J09050+2748'  ra=09h05m04.050000s  dec= 27d48'17.69000"  qual=999  calib=' '
disk=off
stop=07h49m15s   !NEXT!        
qual=  0
disk=off
stop=07h50m03s   !NEXT!

!* --- Scan from 07h50m11s to 07h50m59s   Thu, 2006 Feb 16 --- *!
sname='J09048+2729'  ra=09h04m53.760000s  dec= 27d29'53.87000"  qual=999  calib=' '
disk=off
stop=07h50m11s   !NEXT!        
qual=  0
disk=off
stop=07h50m59s   !NEXT!

!* --- Scan from 07h51m27s to 07h52m15s   Thu, 2006 Feb 16 --- *!
sname='J08219+2857'  ra=08h21m54.070000s  dec= 28d57'39.57000"  qual=999  calib=' '
disk=off
stop=07h51m27s   !NEXT!        
qual=  0
disk=off
stop=07h52m15s   !NEXT!

!* --- Scan from 07h52m24s to 07h53m12s   Thu, 2006 Feb 16 --- *!
sname='J08236+2928'  ra=08h23m41.130000s  dec= 29d28'28.17000"  qual=999  calib=' '
disk=off
stop=07h52m24s   !NEXT!        
qual=  0
disk=off
stop=07h53m12s   !NEXT!

!* --- Scan from 07h53m24s to 07h54m11s   Thu, 2006 Feb 16 --- *!
sname='J08193+2747'  ra=08h19m18.860000s  dec= 27d47'30.72000"  qual=999  calib=' '
disk=off
stop=07h53m24s   !NEXT!        
qual=  0
disk=off
stop=07h54m11s   !NEXT!

!* --- Scan from 07h54m35s to 07h55m23s   Thu, 2006 Feb 16 --- *!
sname='J08362+2139'  ra=08h36m16.220000s  dec= 21d39'03.60000"  qual=999  calib=' '
disk=off
stop=07h54m35s   !NEXT!        
qual=  0
disk=off
stop=07h55m23s   !NEXT!

!* --- Scan from 07h55m37s to 07h56m25s   Thu, 2006 Feb 16 --- *!
sname='J08234+2223'  ra=08h23m24.760000s  dec= 22d23'03.30000"  qual=999  calib=' '
disk=off
stop=07h55m37s   !NEXT!        
qual=  0
disk=off
stop=07h56m25s   !NEXT!

!* --- Scan from 07h56m42s to 07h57m30s   Thu, 2006 Feb 16 --- *!
sname='J08056+2106'  ra=08h05m38.530000s  dec= 21d06'51.51000"  qual=999  calib=' '
disk=off
stop=07h56m42s   !NEXT!        
qual=  0
disk=off
stop=07h57m30s   !NEXT!

!* --- Scan from 07h57m44s to 07h58m31s   Thu, 2006 Feb 16 --- *!
sname='J07538+2146'  ra=07h53m53.290000s  dec= 21d46'01.74000"  qual=999  calib=' '
disk=off
stop=07h57m44s   !NEXT!        
qual=  0
disk=off
stop=07h58m31s   !NEXT!

!* --- Scan from 07h58m53s to 07h59m41s   Thu, 2006 Feb 16 --- *!
sname='J07437+2328'  ra=07h43m44.970000s  dec= 23d28'39.00000"  qual=999  calib=' '
disk=off
stop=07h58m53s   !NEXT!        
qual=  0
disk=off
stop=07h59m41s   !NEXT!

!* --- Scan from 07h59m52s to 08h00m40s   Thu, 2006 Feb 16 --- *!
sname='J07486+2400'  ra=07h48m36.110000s  dec= 24d00'24.15000"  qual=999  calib=' '
disk=off
stop=07h59m52s   !NEXT!        
qual=  0
disk=off
stop=08h00m40s   !NEXT!

!* --- Scan from 08h00m53s to 08h01m41s   Thu, 2006 Feb 16 --- *!
sname='J07576+2528'  ra=07h57m38.080000s  dec= 25d28'12.75000"  qual=999  calib=' '
disk=off
stop=08h00m53s   !NEXT!        
qual=  0
disk=off
stop=08h01m41s   !NEXT!

!* --- Scan from 08h01m52s to 08h02m40s   Thu, 2006 Feb 16 --- *!
sname='J08026+2509'  ra=08h02m41.590000s  dec= 25d09'10.91000"  qual=999  calib=' '
disk=off
stop=08h01m52s   !NEXT!        
qual=  0
disk=off
stop=08h02m40s   !NEXT!

!* --- Scan from 08h03m01s to 08h03m49s   Thu, 2006 Feb 16 --- *!
sname='J07464+2549'  ra=07h46m25.870000s  dec= 25d49'02.15000"  qual=999  calib=' '
disk=off
stop=08h03m01s   !NEXT!        
qual=  0
disk=off
stop=08h03m49s   !NEXT!

!* --- Scan from 08h04m02s to 08h04m50s   Thu, 2006 Feb 16 --- *!
sname='J07414+2557'  ra=07h41m29.740000s  dec= 25d57'32.27000"  qual=999  calib=' '
disk=off
stop=08h04m02s   !NEXT!        
qual=  0
disk=off
stop=08h04m50s   !NEXT!

!* --- Scan from 08h05m01s to 08h05m49s   Thu, 2006 Feb 16 --- *!
sname='J07414+2706'  ra=07h41m25.730000s  dec= 27d06'45.42000"  qual=999  calib=' '
disk=off
stop=08h05m01s   !NEXT!        
qual=  0
disk=off
stop=08h05m49s   !NEXT!

!* --- Scan from 08h06m00s to 08h06m48s   Thu, 2006 Feb 16 --- *!
sname='J07369+2604'  ra=07h36m58.070000s  dec= 26d04'49.89000"  qual=999  calib=' '
disk=off
stop=08h06m00s   !NEXT!        
qual=  0
disk=off
stop=08h06m48s   !NEXT!

!* --- Scan from 08h07m01s to 08h07m49s   Thu, 2006 Feb 16 --- *!
sname='J07365+2840'  ra=07h36m31.200000s  dec= 28d40'36.84000"  qual=999  calib=' '
disk=off
stop=08h07m01s   !NEXT!        
qual=  0
disk=off
stop=08h07m49s   !NEXT!

!* --- Scan from 08h07m59s to 08h08m47s   Thu, 2006 Feb 16 --- *!
sname='J07362+2954'  ra=07h36m13.660000s  dec= 29d54'22.20000"  qual=999  calib=' '
disk=off
stop=08h07m59s   !NEXT!        
qual=  0
disk=off
stop=08h08m47s   !NEXT!

!* --- Scan from 08h09m00s to 08h09m48s   Thu, 2006 Feb 16 --- *!
sname='J07405+2852'  ra=07h40m33.540000s  dec= 28d52'47.27000"  qual=999  calib=' '
disk=off
stop=08h09m00s   !NEXT!        
qual=  0
disk=off
stop=08h09m48s   !NEXT!

!* --- Scan from 08h09m59s to 08h10m47s   Thu, 2006 Feb 16 --- *!
sname='J07448+2920'  ra=07h44m51.370000s  dec= 29d20'06.05000"  qual=999  calib=' '
disk=off
stop=08h09m59s   !NEXT!        
qual=  0
disk=off
stop=08h10m47s   !NEXT!

!* --- Scan from 08h10m59s to 08h11m46s   Thu, 2006 Feb 16 --- *!
sname='J07466+2734'  ra=07h46m40.430000s  dec= 27d34'59.06000"  qual=999  calib=' '
disk=off
stop=08h10m59s   !NEXT!        
qual=  0
disk=off
stop=08h11m46s   !NEXT!

!* --- Scan from 08h12m00s to 08h12m48s   Thu, 2006 Feb 16 --- *!
sname='J07516+2657'  ra=07h51m37.130000s  dec= 26d57'08.02000"  qual=999  calib=' '
disk=off
stop=08h12m00s   !NEXT!        
qual=  0
disk=off
stop=08h12m48s   !NEXT!

!* --- Scan from 08h13m04s to 08h13m52s   Thu, 2006 Feb 16 --- *!
sname='J07481+3006'  ra=07h48m09.470000s  dec= 30d06'30.54000"  qual=999  calib=' '
disk=off
stop=08h13m04s   !NEXT!        
qual=  0
disk=off
stop=08h13m52s   !NEXT!

!* --- Scan from 08h16m14s to 08h18m14s   Thu, 2006 Feb 16 --- *!
sname='J1310+3220'  ra=13h10m28.663845s  dec= 32d20'43.78295"  qual=999  calib='N'
disk=off
stop=08h16m14s   !NEXT!        
qual=  0
disk=off
stop=08h18m14s   !NEXT!

!* --- Scan from 08h20m40s to 08h21m28s   Thu, 2006 Feb 16 --- *!
sname='J08245+2438'  ra=08h24m33.010000s  dec= 24d38'43.12000"  qual=999  calib=' '
disk=off
stop=08h20m40s   !NEXT!        
qual=  0
disk=off
stop=08h21m28s   !NEXT!

!* --- Scan from 08h21m43s to 08h22m31s   Thu, 2006 Feb 16 --- *!
sname='J08257+2704'  ra=08h25m47.390000s  dec= 27d04'22.04000"  qual=999  calib=' '
disk=off
stop=08h21m43s   !NEXT!        
qual=  0
disk=off
stop=08h22m31s   !NEXT!

!* --- Scan from 08h22m44s to 08h23m31s   Thu, 2006 Feb 16 --- *!
sname='J08363+2728'  ra=08h36m22.890000s  dec= 27d28'52.54000"  qual=999  calib=' '
disk=off
stop=08h22m44s   !NEXT!        
qual=  0
disk=off
stop=08h23m31s   !NEXT!

!* --- Scan from 08h23m42s to 08h24m30s   Thu, 2006 Feb 16 --- *!
sname='J08392+2850'  ra=08h39m15.830000s  dec= 28d50'38.76000"  qual=999  calib=' '
disk=off
stop=08h23m42s   !NEXT!        
qual=  0
disk=off
stop=08h24m30s   !NEXT!

!* --- Scan from 08h24m44s to 08h25m32s   Thu, 2006 Feb 16 --- *!
sname='J08520+2833'  ra=08h52m05.170000s  dec= 28d33'59.75000"  qual=999  calib=' '
disk=off
stop=08h24m44s   !NEXT!        
qual=  0
disk=off
stop=08h25m32s   !NEXT!

!* --- Scan from 08h25m41s to 08h26m28s   Thu, 2006 Feb 16 --- *!
sname='J08532+2813'  ra=08h53m17.830000s  dec= 28d13'50.02000"  qual=999  calib=' '
disk=off
stop=08h25m41s   !NEXT!        
qual=  0
disk=off
stop=08h26m28s   !NEXT!

!* --- Scan from 08h26m42s to 08h27m30s   Thu, 2006 Feb 16 --- *!
sname='J09056+2849'  ra=09h05m41.770000s  dec= 28d49'28.25000"  qual=999  calib=' '
disk=off
stop=08h26m42s   !NEXT!        
qual=  0
disk=off
stop=08h27m30s   !NEXT!

!* --- Scan from 08h27m40s to 08h28m28s   Thu, 2006 Feb 16 --- *!
sname='J09050+2748'  ra=09h05m04.050000s  dec= 27d48'17.69000"  qual=999  calib=' '
disk=off
stop=08h27m40s   !NEXT!        
qual=  0
disk=off
stop=08h28m28s   !NEXT!

!* --- Scan from 08h28m36s to 08h29m24s   Thu, 2006 Feb 16 --- *!
sname='J09048+2729'  ra=09h04m53.760000s  dec= 27d29'53.87000"  qual=999  calib=' '
disk=off
stop=08h28m36s   !NEXT!        
qual=  0
disk=off
stop=08h29m24s   !NEXT!

!* --- Scan from 08h29m46s to 08h30m34s   Thu, 2006 Feb 16 --- *!
sname='J08374+2501'  ra=08h37m25.880000s  dec= 25d01'39.85000"  qual=999  calib=' '
disk=off
stop=08h29m46s   !NEXT!        
qual=  0
disk=off
stop=08h30m34s   !NEXT!

!* --- Scan from 08h30m42s to 08h31m30s   Thu, 2006 Feb 16 --- *!
sname='J08376+2454'  ra=08h37m40.250000s  dec= 24d54'23.12000"  qual=999  calib=' '
disk=off
stop=08h30m42s   !NEXT!        
qual=  0
disk=off
stop=08h31m30s   !NEXT!

!* --- Scan from 08h31m41s to 08h32m28s   Thu, 2006 Feb 16 --- *!
sname='J08367+2355'  ra=08h36m46.310000s  dec= 23d55'31.65000"  qual=999  calib=' '
disk=off
stop=08h31m41s   !NEXT!        
qual=  0
disk=off
stop=08h32m28s   !NEXT!

!* --- Scan from 08h32m48s to 08h33m36s   Thu, 2006 Feb 16 --- *!
sname='J08569+2111'  ra=08h56m57.240000s  dec= 21d11'43.64000"  qual=999  calib=' '
disk=off
stop=08h32m48s   !NEXT!        
qual=  0
disk=off
stop=08h33m36s   !NEXT!

!* --- Scan from 08h33m44s to 08h34m32s   Thu, 2006 Feb 16 --- *!
sname='J08566+2057'  ra=08h56m39.740000s  dec= 20d57'43.43000"  qual=999  calib=' '
disk=off
stop=08h33m44s   !NEXT!        
qual=  0
disk=off
stop=08h34m32s   !NEXT!

!* --- Scan from 08h34m44s to 08h35m32s   Thu, 2006 Feb 16 --- *!
sname='J09052+2052'  ra=09h05m14.340000s  dec= 20d52'13.29000"  qual=999  calib=' '
disk=off
stop=08h34m44s   !NEXT!        
qual=  0
disk=off
stop=08h35m32s   !NEXT!

!* --- Scan from 08h35m49s to 08h36m37s   Thu, 2006 Feb 16 --- *!
sname='J08569+1739'  ra=08h56m56.690000s  dec= 17d39'47.77000"  qual=999  calib=' '
disk=off
stop=08h35m49s   !NEXT!        
qual=  0
disk=off
stop=08h36m37s   !NEXT!

!* --- Scan from 08h36m52s to 08h37m40s   Thu, 2006 Feb 16 --- *!
sname='J08420+1835'  ra=08h42m05.090000s  dec= 18d35'40.98000"  qual=999  calib=' '
disk=off
stop=08h36m52s   !NEXT!        
qual=  0
disk=off
stop=08h37m40s   !NEXT!

!* --- Scan from 08h37m51s to 08h38m39s   Thu, 2006 Feb 16 --- *!
sname='J08395+1802'  ra=08h39m30.720000s  dec= 18d02'47.14000"  qual=999  calib=' '
disk=off
stop=08h37m51s   !NEXT!        
qual=  0
disk=off
stop=08h38m39s   !NEXT!

!* --- Scan from 08h38m55s to 08h39m43s   Thu, 2006 Feb 16 --- *!
sname='J08391+2002'  ra=08h39m10.900000s  dec= 20d02'07.34000"  qual=999  calib=' '
disk=off
stop=08h38m55s   !NEXT!        
qual=  0
disk=off
stop=08h39m43s   !NEXT!

!* --- Scan from 08h40m00s to 08h40m47s   Thu, 2006 Feb 16 --- *!
sname='J08322+1832'  ra=08h32m16.040000s  dec= 18d32'12.12000"  qual=999  calib=' '
disk=off
stop=08h40m00s   !NEXT!        
qual=  0
disk=off
stop=08h40m47s   !NEXT!

!* --- Scan from 08h40m56s to 08h41m44s   Thu, 2006 Feb 16 --- *!
sname='J08324+1821'  ra=08h32m24.880000s  dec= 18d21'22.00000"  qual=999  calib=' '
disk=off
stop=08h40m56s   !NEXT!        
qual=  0
disk=off
stop=08h41m44s   !NEXT!

!* --- Scan from 08h41m56s to 08h42m44s   Thu, 2006 Feb 16 --- *!
sname='J08290+1754'  ra=08h29m04.830000s  dec= 17d54'15.86000"  qual=999  calib=' '
disk=off
stop=08h41m56s   !NEXT!        
qual=  0
disk=off
stop=08h42m44s   !NEXT!

!* --- Scan from 08h43m00s to 08h43m48s   Thu, 2006 Feb 16 --- *!
sname='J08328+1554'  ra=08h32m49.400000s  dec= 15d54'08.61000"  qual=999  calib=' '
disk=off
stop=08h43m00s   !NEXT!        
qual=  0
disk=off
stop=08h43m48s   !NEXT!

!* --- Scan from 08h45m53s to 08h47m52s   Thu, 2006 Feb 16 --- *!
sname='DA193'  ra=05h55m30.805611s  dec= 39d48'49.16496"  qual=999  calib='V'
disk=off
stop=08h45m53s   !NEXT!        
qual=  0
disk=off
stop=08h47m52s   !NEXT!

!* --- Scan from 08h49m59s to 08h51m59s   Thu, 2006 Feb 16 --- *!
sname='3C279'  ra=12h56m11.166560s  dec=-05d47'21.52458"  qual=999  calib='N'
disk=off
stop=08h49m59s   !NEXT!        
qual=  0
disk=off
stop=08h51m59s   !NEXT!

!* --- Scan from 08h54m27s to 08h55m15s   Thu, 2006 Feb 16 --- *!
sname='J07462+1807'  ra=07h46m16.670000s  dec= 18d07'19.66000"  qual=999  calib=' '
disk=off
stop=08h54m27s   !NEXT!        
qual=  0
disk=off
stop=08h55m15s   !NEXT!

!* --- Scan from 08h55m25s to 08h56m13s   Thu, 2006 Feb 16 --- *!
sname='J07500+1823'  ra=07h50m00.330000s  dec= 18d23'11.40000"  qual=999  calib=' '
disk=off
stop=08h55m25s   !NEXT!        
qual=  0
disk=off
stop=08h56m13s   !NEXT!

!* --- Scan from 08h56m29s to 08h57m17s   Thu, 2006 Feb 16 --- *!
sname='J08028+1809'  ra=08h02m48.030000s  dec= 18d09'49.27000"  qual=999  calib=' '
disk=off
stop=08h56m29s   !NEXT!        
qual=  0
disk=off
stop=08h57m17s   !NEXT!

!* --- Scan from 08h57m48s to 08h58m36s   Thu, 2006 Feb 16 --- *!
sname='J08170+1958'  ra=08h17m05.490000s  dec= 19d58'42.93000"  qual=999  calib=' '
disk=off
stop=08h57m48s   !NEXT!        
qual=  0
disk=off
stop=08h58m36s   !NEXT!

!* --- Scan from 08h58m51s to 08h59m39s   Thu, 2006 Feb 16 --- *!
sname='J08056+2106'  ra=08h05m38.530000s  dec= 21d06'51.51000"  qual=999  calib=' '
disk=off
stop=08h58m51s   !NEXT!        
qual=  0
disk=off
stop=08h59m39s   !NEXT!

!* --- Scan from 08h59m53s to 09h00m41s   Thu, 2006 Feb 16 --- *!
sname='J07538+2146'  ra=07h53m53.290000s  dec= 21d46'01.74000"  qual=999  calib=' '
disk=off
stop=08h59m53s   !NEXT!        
qual=  0
disk=off
stop=09h00m41s   !NEXT!

!* --- Scan from 09h00m54s to 09h01m42s   Thu, 2006 Feb 16 --- *!
sname='J07437+2328'  ra=07h43m44.970000s  dec= 23d28'39.00000"  qual=999  calib=' '
disk=off
stop=09h00m54s   !NEXT!        
qual=  0
disk=off
stop=09h01m42s   !NEXT!

!* --- Scan from 09h01m54s to 09h02m42s   Thu, 2006 Feb 16 --- *!
sname='J07486+2400'  ra=07h48m36.110000s  dec= 24d00'24.15000"  qual=999  calib=' '
disk=off
stop=09h01m54s   !NEXT!        
qual=  0
disk=off
stop=09h02m42s   !NEXT!

!* --- Scan from 09h02m55s to 09h03m42s   Thu, 2006 Feb 16 --- *!
sname='J07414+2557'  ra=07h41m29.740000s  dec= 25d57'32.27000"  qual=999  calib=' '
disk=off
stop=09h02m55s   !NEXT!        
qual=  0
disk=off
stop=09h03m42s   !NEXT!

!* --- Scan from 09h03m52s to 09h04m40s   Thu, 2006 Feb 16 --- *!
sname='J07369+2604'  ra=07h36m58.070000s  dec= 26d04'49.89000"  qual=999  calib=' '
disk=off
stop=09h03m52s   !NEXT!        
qual=  0
disk=off
stop=09h04m40s   !NEXT!

!* --- Scan from 09h04m52s to 09h05m40s   Thu, 2006 Feb 16 --- *!
sname='J07464+2549'  ra=07h46m25.870000s  dec= 25d49'02.15000"  qual=999  calib=' '
disk=off
stop=09h04m52s   !NEXT!        
qual=  0
disk=off
stop=09h05m40s   !NEXT!

!* --- Scan from 09h05m52s to 09h06m39s   Thu, 2006 Feb 16 --- *!
sname='J07414+2706'  ra=07h41m25.730000s  dec= 27d06'45.42000"  qual=999  calib=' '
disk=off
stop=09h05m52s   !NEXT!        
qual=  0
disk=off
stop=09h06m39s   !NEXT!

!* --- Scan from 09h06m51s to 09h07m39s   Thu, 2006 Feb 16 --- *!
sname='J07365+2840'  ra=07h36m31.200000s  dec= 28d40'36.84000"  qual=999  calib=' '
disk=off
stop=09h06m51s   !NEXT!        
qual=  0
disk=off
stop=09h07m39s   !NEXT!

!* --- Scan from 09h07m49s to 09h08m37s   Thu, 2006 Feb 16 --- *!
sname='J07405+2852'  ra=07h40m33.540000s  dec= 28d52'47.27000"  qual=999  calib=' '
disk=off
stop=09h07m49s   !NEXT!        
qual=  0
disk=off
stop=09h08m37s   !NEXT!

!* --- Scan from 09h08m47s to 09h09m35s   Thu, 2006 Feb 16 --- *!
sname='J07362+2954'  ra=07h36m13.660000s  dec= 29d54'22.20000"  qual=999  calib=' '
disk=off
stop=09h08m47s   !NEXT!        
qual=  0
disk=off
stop=09h09m35s   !NEXT!

!* --- Scan from 09h09m47s to 09h10m35s   Thu, 2006 Feb 16 --- *!
sname='J07448+2920'  ra=07h44m51.370000s  dec= 29d20'06.05000"  qual=999  calib=' '
disk=off
stop=09h09m47s   !NEXT!        
qual=  0
disk=off
stop=09h10m35s   !NEXT!

!* --- Scan from 09h10m46s to 09h11m34s   Thu, 2006 Feb 16 --- *!
sname='J07466+2734'  ra=07h46m40.430000s  dec= 27d34'59.06000"  qual=999  calib=' '
disk=off
stop=09h10m46s   !NEXT!        
qual=  0
disk=off
stop=09h11m34s   !NEXT!

!* --- Scan from 09h11m45s to 09h12m33s   Thu, 2006 Feb 16 --- *!
sname='J07516+2657'  ra=07h51m37.130000s  dec= 26d57'08.02000"  qual=999  calib=' '
disk=off
stop=09h11m45s   !NEXT!        
qual=  0
disk=off
stop=09h12m33s   !NEXT!

!* --- Scan from 09h12m49s to 09h13m37s   Thu, 2006 Feb 16 --- *!
sname='J08086+2646'  ra=08h08m36.770000s  dec= 26d46'36.78000"  qual=999  calib=' '
disk=off
stop=09h12m49s   !NEXT!        
qual=  0
disk=off
stop=09h13m37s   !NEXT!

!* --- Scan from 09h13m48s to 09h14m36s   Thu, 2006 Feb 16 --- *!
sname='J08130+2542'  ra=08h13m03.840000s  dec= 25d42'11.09000"  qual=999  calib=' '
disk=off
stop=09h13m48s   !NEXT!        
qual=  0
disk=off
stop=09h14m36s   !NEXT!

!* --- Scan from 09h14m47s to 09h15m35s   Thu, 2006 Feb 16 --- *!
sname='J08137+2435'  ra=08h13m47.140000s  dec= 24d35'59.21000"  qual=999  calib=' '
disk=off
stop=09h14m47s   !NEXT!        
qual=  0
disk=off
stop=09h15m35s   !NEXT!

!* --- Scan from 09h15m45s to 09h16m33s   Thu, 2006 Feb 16 --- *!
sname='J08171+2352'  ra=08h17m10.550000s  dec= 23d52'23.95000"  qual=999  calib=' '
disk=off
stop=09h15m45s   !NEXT!        
qual=  0
disk=off
stop=09h16m33s   !NEXT!

!* --- Scan from 09h16m48s to 09h17m36s   Thu, 2006 Feb 16 --- *!
sname='J08026+2509'  ra=08h02m41.590000s  dec= 25d09'10.91000"  qual=999  calib=' '
disk=off
stop=09h16m48s   !NEXT!        
qual=  0
disk=off
stop=09h17m36s   !NEXT!

!* --- Scan from 09h17m47s to 09h18m34s   Thu, 2006 Feb 16 --- *!
sname='J07576+2528'  ra=07h57m38.080000s  dec= 25d28'12.75000"  qual=999  calib=' '
disk=off
stop=09h17m47s   !NEXT!        
qual=  0
disk=off
stop=09h18m34s   !NEXT!

!* --- Scan from 09h18m56s to 09h19m44s   Thu, 2006 Feb 16 --- *!
sname='J08245+2438'  ra=08h24m33.010000s  dec= 24d38'43.12000"  qual=999  calib=' '
disk=off
stop=09h18m56s   !NEXT!        
qual=  0
disk=off
stop=09h19m44s   !NEXT!

!* --- Scan from 09h19m59s to 09h20m47s   Thu, 2006 Feb 16 --- *!
sname='J08193+2747'  ra=08h19m18.860000s  dec= 27d47'30.72000"  qual=999  calib=' '
disk=off
stop=09h19m59s   !NEXT!        
qual=  0
disk=off
stop=09h20m47s   !NEXT!

!* --- Scan from 09h20m59s to 09h21m47s   Thu, 2006 Feb 16 --- *!
sname='J08219+2857'  ra=08h21m54.070000s  dec= 28d57'39.57000"  qual=999  calib=' '
disk=off
stop=09h20m59s   !NEXT!        
qual=  0
disk=off
stop=09h21m47s   !NEXT!

!* --- Scan from 09h21m57s to 09h22m45s   Thu, 2006 Feb 16 --- *!
sname='J08236+2928'  ra=08h23m41.130000s  dec= 29d28'28.17000"  qual=999  calib=' '
disk=off
stop=09h21m57s   !NEXT!        
qual=  0
disk=off
stop=09h22m45s   !NEXT!

!* --- Scan from 09h22m56s to 09h23m44s   Thu, 2006 Feb 16 --- *!
sname='J08281+2920'  ra=08h28m09.380000s  dec= 29d20'19.57000"  qual=999  calib=' '
disk=off
stop=09h22m56s   !NEXT!        
qual=  0
disk=off
stop=09h23m44s   !NEXT!

!* --- Scan from 09h26m07s to 09h28m07s   Thu, 2006 Feb 16 --- *!
sname='J1310+3220'  ra=13h10m28.663845s  dec= 32d20'43.78295"  qual=999  calib='N'
disk=off
stop=09h26m07s   !NEXT!        
qual=  0
disk=off
stop=09h28m07s   !NEXT!

!* --- Scan from 09h30m45s to 09h31m33s   Thu, 2006 Feb 16 --- *!
sname='J07462+1807'  ra=07h46m16.670000s  dec= 18d07'19.66000"  qual=999  calib=' '
disk=off
stop=09h30m45s   !NEXT!        
qual=  0
disk=off
stop=09h31m33s   !NEXT!

!* --- Scan from 09h31m43s to 09h32m30s   Thu, 2006 Feb 16 --- *!
sname='J07500+1823'  ra=07h50m00.330000s  dec= 18d23'11.40000"  qual=999  calib=' '
disk=off
stop=09h31m43s   !NEXT!        
qual=  0
disk=off
stop=09h32m30s   !NEXT!

!* --- Scan from 09h32m45s to 09h33m32s   Thu, 2006 Feb 16 --- *!
sname='J08028+1809'  ra=08h02m48.030000s  dec= 18d09'49.27000"  qual=999  calib=' '
disk=off
stop=09h32m45s   !NEXT!        
qual=  0
disk=off
stop=09h33m32s   !NEXT!

!* --- Scan from 09h33m48s to 09h34m36s   Thu, 2006 Feb 16 --- *!
sname='J08170+1958'  ra=08h17m05.490000s  dec= 19d58'42.93000"  qual=999  calib=' '
disk=off
stop=09h33m48s   !NEXT!        
qual=  0
disk=off
stop=09h34m36s   !NEXT!

!* --- Scan from 09h34m55s to 09h35m43s   Thu, 2006 Feb 16 --- *!
sname='J08391+2002'  ra=08h39m10.900000s  dec= 20d02'07.34000"  qual=999  calib=' '
disk=off
stop=09h34m55s   !NEXT!        
qual=  0
disk=off
stop=09h35m43s   !NEXT!

!* --- Scan from 09h36m05s to 09h36m53s   Thu, 2006 Feb 16 --- *!
sname='J08420+1835'  ra=08h42m05.090000s  dec= 18d35'40.98000"  qual=999  calib=' '
disk=off
stop=09h36m05s   !NEXT!        
qual=  0
disk=off
stop=09h36m53s   !NEXT!

!* --- Scan from 09h37m03s to 09h37m51s   Thu, 2006 Feb 16 --- *!
sname='J08395+1802'  ra=08h39m30.720000s  dec= 18d02'47.14000"  qual=999  calib=' '
disk=off
stop=09h37m03s   !NEXT!        
qual=  0
disk=off
stop=09h37m51s   !NEXT!

!* --- Scan from 09h38m04s to 09h38m52s   Thu, 2006 Feb 16 --- *!
sname='J08290+1754'  ra=08h29m04.830000s  dec= 17d54'15.86000"  qual=999  calib=' '
disk=off
stop=09h38m04s   !NEXT!        
qual=  0
disk=off
stop=09h38m52s   !NEXT!

!* --- Scan from 09h39m02s to 09h39m50s   Thu, 2006 Feb 16 --- *!
sname='J08324+1821'  ra=08h32m24.880000s  dec= 18d21'22.00000"  qual=999  calib=' '
disk=off
stop=09h39m02s   !NEXT!        
qual=  0
disk=off
stop=09h39m50s   !NEXT!

!* --- Scan from 09h39m58s to 09h40m46s   Thu, 2006 Feb 16 --- *!
sname='J08322+1832'  ra=08h32m16.040000s  dec= 18d32'12.12000"  qual=999  calib=' '
disk=off
stop=09h39m58s   !NEXT!        
qual=  0
disk=off
stop=09h40m46s   !NEXT!

!* --- Scan from 09h41m07s to 09h41m55s   Thu, 2006 Feb 16 --- *!
sname='J08328+1554'  ra=08h32m49.400000s  dec= 15d54'08.61000"  qual=999  calib=' '
disk=off
stop=09h41m07s   !NEXT!        
qual=  0
disk=off
stop=09h41m55s   !NEXT!

!* --- Scan from 09h42m18s to 09h43m06s   Thu, 2006 Feb 16 --- *!
sname='J08569+1739'  ra=08h56m56.690000s  dec= 17d39'47.77000"  qual=999  calib=' '
disk=off
stop=09h42m18s   !NEXT!        
qual=  0
disk=off
stop=09h43m06s   !NEXT!

!* --- Scan from 09h45m18s to 09h47m18s   Thu, 2006 Feb 16 --- *!
sname='3C279'  ra=12h56m11.166560s  dec=-05d47'21.52458"  qual=999  calib='N'
disk=off
stop=09h45m18s   !NEXT!        
qual=  0
disk=off
stop=09h47m18s   !NEXT!

!* --- Scan from 09h49m11s to 09h49m59s   Thu, 2006 Feb 16 --- *!
sname='J08281+2920'  ra=08h28m09.380000s  dec= 29d20'19.57000"  qual=999  calib=' '
disk=off
stop=09h49m11s   !NEXT!        
qual=  0
disk=off
stop=09h49m59s   !NEXT!

!* --- Scan from 09h50m11s to 09h50m59s   Thu, 2006 Feb 16 --- *!
sname='J08392+2850'  ra=08h39m15.830000s  dec= 28d50'38.76000"  qual=999  calib=' '
disk=off
stop=09h50m11s   !NEXT!        
qual=  0
disk=off
stop=09h50m59s   !NEXT!

!* --- Scan from 09h51m12s to 09h52m00s   Thu, 2006 Feb 16 --- *!
sname='J08363+2728'  ra=08h36m22.890000s  dec= 27d28'52.54000"  qual=999  calib=' '
disk=off
stop=09h51m12s   !NEXT!        
qual=  0
disk=off
stop=09h52m00s   !NEXT!

!* --- Scan from 09h52m15s to 09h53m03s   Thu, 2006 Feb 16 --- *!
sname='J08374+2501'  ra=08h37m25.880000s  dec= 25d01'39.85000"  qual=999  calib=' '
disk=off
stop=09h52m15s   !NEXT!        
qual=  0
disk=off
stop=09h53m03s   !NEXT!

!* --- Scan from 09h53m10s to 09h53m58s   Thu, 2006 Feb 16 --- *!
sname='J08376+2454'  ra=08h37m40.250000s  dec= 24d54'23.12000"  qual=999  calib=' '
disk=off
stop=09h53m10s   !NEXT!        
qual=  0
disk=off
stop=09h53m58s   !NEXT!

!* --- Scan from 09h54m10s to 09h54m58s   Thu, 2006 Feb 16 --- *!
sname='J08367+2355'  ra=08h36m46.310000s  dec= 23d55'31.65000"  qual=999  calib=' '
disk=off
stop=09h54m10s   !NEXT!        
qual=  0
disk=off
stop=09h54m58s   !NEXT!

!* --- Scan from 09h55m15s to 09h56m03s   Thu, 2006 Feb 16 --- *!
sname='J08362+2139'  ra=08h36m16.220000s  dec= 21d39'03.60000"  qual=999  calib=' '
disk=off
stop=09h55m15s   !NEXT!        
qual=  0
disk=off
stop=09h56m03s   !NEXT!

!* --- Scan from 09h56m21s to 09h57m08s   Thu, 2006 Feb 16 --- *!
sname='J08566+2057'  ra=08h56m39.740000s  dec= 20d57'43.43000"  qual=999  calib=' '
disk=off
stop=09h56m21s   !NEXT!        
qual=  0
disk=off
stop=09h57m08s   !NEXT!

!* --- Scan from 09h57m18s to 09h58m06s   Thu, 2006 Feb 16 --- *!
sname='J08569+2111'  ra=08h56m57.240000s  dec= 21d11'43.64000"  qual=999  calib=' '
disk=off
stop=09h57m18s   !NEXT!        
qual=  0
disk=off
stop=09h58m06s   !NEXT!

!* --- Scan from 09h58m18s to 09h59m06s   Thu, 2006 Feb 16 --- *!
sname='J09052+2052'  ra=09h05m14.340000s  dec= 20d52'13.29000"  qual=999  calib=' '
disk=off
stop=09h58m18s   !NEXT!        
qual=  0
disk=off
stop=09h59m06s   !NEXT!

!* --- Scan from 09h59m40s to 10h00m27s   Thu, 2006 Feb 16 --- *!
sname='J08520+2833'  ra=08h52m05.170000s  dec= 28d33'59.75000"  qual=999  calib=' '
disk=off
stop=09h59m40s   !NEXT!        
qual=  0
disk=off
stop=10h00m27s   !NEXT!

!* --- Scan from 10h00m36s to 10h01m24s   Thu, 2006 Feb 16 --- *!
sname='J08532+2813'  ra=08h53m17.830000s  dec= 28d13'50.02000"  qual=999  calib=' '
disk=off
stop=10h00m36s   !NEXT!        
qual=  0
disk=off
stop=10h01m24s   !NEXT!

!* --- Scan from 10h01m38s to 10h02m26s   Thu, 2006 Feb 16 --- *!
sname='J09048+2729'  ra=09h04m53.760000s  dec= 27d29'53.87000"  qual=999  calib=' '
disk=off
stop=10h01m38s   !NEXT!        
qual=  0
disk=off
stop=10h02m26s   !NEXT!

!* --- Scan from 10h02m35s to 10h03m23s   Thu, 2006 Feb 16 --- *!
sname='J09050+2748'  ra=09h05m04.050000s  dec= 27d48'17.69000"  qual=999  calib=' '
disk=off
stop=10h02m35s   !NEXT!        
qual=  0
disk=off
stop=10h03m23s   !NEXT!

!* --- Scan from 10h03m33s to 10h04m21s   Thu, 2006 Feb 16 --- *!
sname='J09056+2849'  ra=09h05m41.770000s  dec= 28d49'28.25000"  qual=999  calib=' '
disk=off
stop=10h03m33s   !NEXT!        
qual=  0
disk=off
stop=10h04m21s   !NEXT!

!* --- Scan from 10h05m08s to 10h05m56s   Thu, 2006 Feb 16 --- *!
sname='J07437+2328'  ra=07h43m44.970000s  dec= 23d28'39.00000"  qual=999  calib=' '
disk=off
stop=10h05m08s   !NEXT!        
qual=  0
disk=off
stop=10h05m56s   !NEXT!

!* --- Scan from 10h06m08s to 10h06m56s   Thu, 2006 Feb 16 --- *!
sname='J07369+2604'  ra=07h36m58.070000s  dec= 26d04'49.89000"  qual=999  calib=' '
disk=off
stop=10h06m08s   !NEXT!        
qual=  0
disk=off
stop=10h06m56s   !NEXT!

!* --- Scan from 10h07m06s to 10h07m54s   Thu, 2006 Feb 16 --- *!
sname='J07414+2557'  ra=07h41m29.740000s  dec= 25d57'32.27000"  qual=999  calib=' '
disk=off
stop=10h07m06s   !NEXT!        
qual=  0
disk=off
stop=10h07m54s   !NEXT!

!* --- Scan from 10h08m03s to 10h08m51s   Thu, 2006 Feb 16 --- *!
sname='J07414+2706'  ra=07h41m25.730000s  dec= 27d06'45.42000"  qual=999  calib=' '
disk=off
stop=10h08m03s   !NEXT!        
qual=  0
disk=off
stop=10h08m51s   !NEXT!

!* --- Scan from 10h09m02s to 10h09m50s   Thu, 2006 Feb 16 --- *!
sname='J07464+2549'  ra=07h46m25.870000s  dec= 25d49'02.15000"  qual=999  calib=' '
disk=off
stop=10h09m02s   !NEXT!        
qual=  0
disk=off
stop=10h09m50s   !NEXT!

!* --- Scan from 10h10m01s to 10h10m49s   Thu, 2006 Feb 16 --- *!
sname='J07486+2400'  ra=07h48m36.110000s  dec= 24d00'24.15000"  qual=999  calib=' '
disk=off
stop=10h10m01s   !NEXT!        
qual=  0
disk=off
stop=10h10m49s   !NEXT!

!* --- Scan from 10h11m00s to 10h11m48s   Thu, 2006 Feb 16 --- *!
sname='J07538+2146'  ra=07h53m53.290000s  dec= 21d46'01.74000"  qual=999  calib=' '
disk=off
stop=10h11m00s   !NEXT!        
qual=  0
disk=off
stop=10h11m48s   !NEXT!

!* --- Scan from 10h12m02s to 10h12m50s   Thu, 2006 Feb 16 --- *!
sname='J08056+2106'  ra=08h05m38.530000s  dec= 21d06'51.51000"  qual=999  calib=' '
disk=off
stop=10h12m02s   !NEXT!        
qual=  0
disk=off
stop=10h12m50s   !NEXT!

!* --- Scan from 10h13m06s to 10h13m54s   Thu, 2006 Feb 16 --- *!
sname='J08137+2435'  ra=08h13m47.140000s  dec= 24d35'59.21000"  qual=999  calib=' '
disk=off
stop=10h13m06s   !NEXT!        
qual=  0
disk=off
stop=10h13m54s   !NEXT!

!* --- Scan from 10h14m03s to 10h14m51s   Thu, 2006 Feb 16 --- *!
sname='J08171+2352'  ra=08h17m10.550000s  dec= 23d52'23.95000"  qual=999  calib=' '
disk=off
stop=10h14m03s   !NEXT!        
qual=  0
disk=off
stop=10h14m51s   !NEXT!

!* --- Scan from 10h15m02s to 10h15m50s   Thu, 2006 Feb 16 --- *!
sname='J08234+2223'  ra=08h23m24.760000s  dec= 22d23'03.30000"  qual=999  calib=' '
disk=off
stop=10h15m02s   !NEXT!        
qual=  0
disk=off
stop=10h15m50s   !NEXT!

!* --- Scan from 10h16m04s to 10h16m52s   Thu, 2006 Feb 16 --- *!
sname='J08130+2542'  ra=08h13m03.840000s  dec= 25d42'11.09000"  qual=999  calib=' '
disk=off
stop=10h16m04s   !NEXT!        
qual=  0
disk=off
stop=10h16m52s   !NEXT!

!* --- Scan from 10h17m03s to 10h17m51s   Thu, 2006 Feb 16 --- *!
sname='J08086+2646'  ra=08h08m36.770000s  dec= 26d46'36.78000"  qual=999  calib=' '
disk=off
stop=10h17m03s   !NEXT!        
qual=  0
disk=off
stop=10h17m51s   !NEXT!

!* --- Scan from 10h18m04s to 10h18m52s   Thu, 2006 Feb 16 --- *!
sname='J07576+2528'  ra=07h57m38.080000s  dec= 25d28'12.75000"  qual=999  calib=' '
disk=off
stop=10h18m04s   !NEXT!        
qual=  0
disk=off
stop=10h18m52s   !NEXT!

!* --- Scan from 10h19m04s to 10h19m51s   Thu, 2006 Feb 16 --- *!
sname='J07516+2657'  ra=07h51m37.130000s  dec= 26d57'08.02000"  qual=999  calib=' '
disk=off
stop=10h19m04s   !NEXT!        
qual=  0
disk=off
stop=10h19m51s   !NEXT!

!* --- Scan from 10h20m04s to 10h20m52s   Thu, 2006 Feb 16 --- *!
sname='J07481+3006'  ra=07h48m09.470000s  dec= 30d06'30.54000"  qual=999  calib=' '
disk=off
stop=10h20m04s   !NEXT!        
qual=  0
disk=off
stop=10h20m52s   !NEXT!

!* --- Scan from 10h21m04s to 10h21m52s   Thu, 2006 Feb 16 --- *!
sname='J07405+2852'  ra=07h40m33.540000s  dec= 28d52'47.27000"  qual=999  calib=' '
disk=off
stop=10h21m04s   !NEXT!        
qual=  0
disk=off
stop=10h21m52s   !NEXT!

!* --- Scan from 10h22m02s to 10h22m50s   Thu, 2006 Feb 16 --- *!
sname='J07362+2954'  ra=07h36m13.660000s  dec= 29d54'22.20000"  qual=999  calib=' '
disk=off
stop=10h22m02s   !NEXT!        
qual=  0
disk=off
stop=10h22m50s   !NEXT!

!* --- Scan from 10h23m03s to 10h23m51s   Thu, 2006 Feb 16 --- *!
sname='J07466+2734'  ra=07h46m40.430000s  dec= 27d34'59.06000"  qual=999  calib=' '
disk=off
stop=10h23m03s   !NEXT!        
qual=  0
disk=off
stop=10h23m51s   !NEXT!

!* --- Scan from 10h24m02s to 10h24m49s   Thu, 2006 Feb 16 --- *!
sname='J07448+2920'  ra=07h44m51.370000s  dec= 29d20'06.05000"  qual=999  calib=' '
disk=off
stop=10h24m02s   !NEXT!        
qual=  0
disk=off
stop=10h24m49s   !NEXT!

!* --- Scan from 10h25m07s to 10h25m55s   Thu, 2006 Feb 16 --- *!
sname='J08026+2509'  ra=08h02m41.590000s  dec= 25d09'10.91000"  qual=999  calib=' '
disk=off
stop=10h25m07s   !NEXT!        
qual=  0
disk=off
stop=10h25m55s   !NEXT!

!* --- Scan from 10h26m12s to 10h27m00s   Thu, 2006 Feb 16 --- *!
sname='J08170+1958'  ra=08h17m05.490000s  dec= 19d58'42.93000"  qual=999  calib=' '
disk=off
stop=10h26m12s   !NEXT!        
qual=  0
disk=off
stop=10h27m00s   !NEXT!

!* --- Scan from 10h27m17s to 10h28m05s   Thu, 2006 Feb 16 --- *!
sname='J08245+2438'  ra=08h24m33.010000s  dec= 24d38'43.12000"  qual=999  calib=' '
disk=off
stop=10h27m17s   !NEXT!        
qual=  0
disk=off
stop=10h28m05s   !NEXT!

!* --- Scan from 10h28m17s to 10h29m05s   Thu, 2006 Feb 16 --- *!
sname='J08257+2704'  ra=08h25m47.390000s  dec= 27d04'22.04000"  qual=999  calib=' '
disk=off
stop=10h28m17s   !NEXT!        
qual=  0
disk=off
stop=10h29m05s   !NEXT!

!* --- Scan from 10h29m16s to 10h30m04s   Thu, 2006 Feb 16 --- *!
sname='J08193+2747'  ra=08h19m18.860000s  dec= 27d47'30.72000"  qual=999  calib=' '
disk=off
stop=10h29m16s   !NEXT!        
qual=  0
disk=off
stop=10h30m04s   !NEXT!

!* --- Scan from 10h30m15s to 10h31m03s   Thu, 2006 Feb 16 --- *!
sname='J08219+2857'  ra=08h21m54.070000s  dec= 28d57'39.57000"  qual=999  calib=' '
disk=off
stop=10h30m15s   !NEXT!        
qual=  0
disk=off
stop=10h31m03s   !NEXT!

!* --- Scan from 10h31m13s to 10h32m01s   Thu, 2006 Feb 16 --- *!
sname='J08281+2920'  ra=08h28m09.380000s  dec= 29d20'19.57000"  qual=999  calib=' '
disk=off
stop=10h31m13s   !NEXT!        
qual=  0
disk=off
stop=10h32m01s   !NEXT!

!* --- Scan from 10h34m06s to 10h36m06s   Thu, 2006 Feb 16 --- *!
sname='J1310+3220'  ra=13h10m28.663845s  dec= 32d20'43.78295"  qual=999  calib='N'
disk=off
stop=10h34m06s   !NEXT!        
qual=  0
disk=off
stop=10h36m06s   !NEXT!

!* --- Scan from 10h39m29s to 10h41m28s   Thu, 2006 Feb 16 --- *!
sname='3C279'  ra=12h56m11.166560s  dec=-05d47'21.52458"  qual=999  calib='N'
disk=off
stop=10h39m29s   !NEXT!        
qual=  0
disk=off
stop=10h41m28s   !NEXT!

!* --- Scan from 10h43m21s to 10h44m09s   Thu, 2006 Feb 16 --- *!
sname='J08395+1802'  ra=08h39m30.720000s  dec= 18d02'47.14000"  qual=999  calib=' '
disk=off
stop=10h43m21s   !NEXT!        
qual=  0
disk=off
stop=10h44m09s   !NEXT!

!* --- Scan from 10h44m19s to 10h45m06s   Thu, 2006 Feb 16 --- *!
sname='J08420+1835'  ra=08h42m05.090000s  dec= 18d35'40.98000"  qual=999  calib=' '
disk=off
stop=10h44m19s   !NEXT!        
qual=  0
disk=off
stop=10h45m06s   !NEXT!

!* --- Scan from 10h45m17s to 10h46m05s   Thu, 2006 Feb 16 --- *!
sname='J08391+2002'  ra=08h39m10.900000s  dec= 20d02'07.34000"  qual=999  calib=' '
disk=off
stop=10h45m17s   !NEXT!        
qual=  0
disk=off
stop=10h46m05s   !NEXT!

!* --- Scan from 10h46m16s to 10h47m04s   Thu, 2006 Feb 16 --- *!
sname='J08362+2139'  ra=08h36m16.220000s  dec= 21d39'03.60000"  qual=999  calib=' '
disk=off
stop=10h46m16s   !NEXT!        
qual=  0
disk=off
stop=10h47m04s   !NEXT!

!* --- Scan from 10h47m16s to 10h48m04s   Thu, 2006 Feb 16 --- *!
sname='J08367+2355'  ra=08h36m46.310000s  dec= 23d55'31.65000"  qual=999  calib=' '
disk=off
stop=10h47m16s   !NEXT!        
qual=  0
disk=off
stop=10h48m04s   !NEXT!

!* --- Scan from 10h48m14s to 10h49m02s   Thu, 2006 Feb 16 --- *!
sname='J08376+2454'  ra=08h37m40.250000s  dec= 24d54'23.12000"  qual=999  calib=' '
disk=off
stop=10h48m14s   !NEXT!        
qual=  0
disk=off
stop=10h49m02s   !NEXT!

!* --- Scan from 10h49m09s to 10h49m57s   Thu, 2006 Feb 16 --- *!
sname='J08374+2501'  ra=08h37m25.880000s  dec= 25d01'39.85000"  qual=999  calib=' '
disk=off
stop=10h49m09s   !NEXT!        
qual=  0
disk=off
stop=10h49m57s   !NEXT!

!* --- Scan from 10h50m09s to 10h50m57s   Thu, 2006 Feb 16 --- *!
sname='J08363+2728'  ra=08h36m22.890000s  dec= 27d28'52.54000"  qual=999  calib=' '
disk=off
stop=10h50m09s   !NEXT!        
qual=  0
disk=off
stop=10h50m57s   !NEXT!

!* --- Scan from 10h51m08s to 10h51m56s   Thu, 2006 Feb 16 --- *!
sname='J08392+2850'  ra=08h39m15.830000s  dec= 28d50'38.76000"  qual=999  calib=' '
disk=off
stop=10h51m08s   !NEXT!        
qual=  0
disk=off
stop=10h51m56s   !NEXT!

!* --- Scan from 10h52m11s to 10h52m59s   Thu, 2006 Feb 16 --- *!
sname='J08236+2928'  ra=08h23m41.130000s  dec= 29d28'28.17000"  qual=999  calib=' '
disk=off
stop=10h52m11s   !NEXT!        
qual=  0
disk=off
stop=10h52m59s   !NEXT!

!* --- Scan from 10h53m08s to 10h53m56s   Thu, 2006 Feb 16 --- *!
sname='J08219+2857'  ra=08h21m54.070000s  dec= 28d57'39.57000"  qual=999  calib=' '
disk=off
stop=10h53m08s   !NEXT!        
qual=  0
disk=off
stop=10h53m56s   !NEXT!

!* --- Scan from 10h54m06s to 10h54m54s   Thu, 2006 Feb 16 --- *!
sname='J08193+2747'  ra=08h19m18.860000s  dec= 27d47'30.72000"  qual=999  calib=' '
disk=off
stop=10h54m06s   !NEXT!        
qual=  0
disk=off
stop=10h54m54s   !NEXT!

!* --- Scan from 10h55m21s to 10h56m09s   Thu, 2006 Feb 16 --- *!
sname='J08569+1739'  ra=08h56m56.690000s  dec= 17d39'47.77000"  qual=999  calib=' '
disk=off
stop=10h55m21s   !NEXT!        
qual=  0
disk=off
stop=10h56m09s   !NEXT!

!* --- Scan from 10h56m23s to 10h57m11s   Thu, 2006 Feb 16 --- *!
sname='J08566+2057'  ra=08h56m39.740000s  dec= 20d57'43.43000"  qual=999  calib=' '
disk=off
stop=10h56m23s   !NEXT!        
qual=  0
disk=off
stop=10h57m11s   !NEXT!

!* --- Scan from 10h57m19s to 10h58m07s   Thu, 2006 Feb 16 --- *!
sname='J08569+2111'  ra=08h56m57.240000s  dec= 21d11'43.64000"  qual=999  calib=' '
disk=off
stop=10h57m19s   !NEXT!        
qual=  0
disk=off
stop=10h58m07s   !NEXT!

!* --- Scan from 10h58m19s to 10h59m07s   Thu, 2006 Feb 16 --- *!
sname='J09052+2052'  ra=09h05m14.340000s  dec= 20d52'13.29000"  qual=999  calib=' '
disk=off
stop=10h58m19s   !NEXT!        
qual=  0
disk=off
stop=10h59m07s   !NEXT!
disk=off
stop=10h59m12s   !NEXT!
     !QUIT! 
