
reset
set terminal pdfcairo enhanced dashed dl 1.5 lw 4 font "Helvetica,30" size 7.6, 7.4

## default key features
#set key at graph 1.03,0.97
set key reverse  # put text on right side
set key Left     # left bounded text
set key spacing 1.1
set key samplen 2
## to have a assisting grid of dashed lines
set grid front
## set margins
set lmargin 5
set rmargin 2

## general settings
set key at graph 0.93, 0.95
set xtics 
set mxtics 
set mytics 
#set logscale y
#set logscale x
set ytic offset 0, 0.1
set format y 

set label front "MATRIX (arXiv:1711.06631)" font "Courier,26" rotate by 90 at graph 1.02, graph 0.01
#, arXiv:1711.06631
set label "{/Symbol s} [fb]" at graph 0, 1.06
set label "p p --> e^- mu^+ v_mu^- v_e^+ \\@LHC 13.0 TeV" right at graph 1, graph 1.07

set output "/afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/n_jets.pdf"

##############
# main frame #
##############

# origin, size of main frame
set origin 0, 0.4
set size 1, 0.53
set bmargin 0 # set marging to remove space
set tmargin 0 # set margin to remove space
set format x ""

## define line styles
set style line 1 lt 3 lc rgb "black" lw 1.75
set style line 2 lt 2 lc rgb "red" lw 2
set style line 3 lt 1 lc rgb "blue" lw 1.5
set style line 4 lt 4 lc rgb "forest-green" lw 1.5
set style line 5 lt 5 lc rgb "orange" lw 1.5
set style line 6 lt 6 lc rgb "magenta" lw 1.5
## for the uncertainty band borders (less thick)
set style line 11 lt 3 lc rgb "black" lw 0.1
set style line 12 lt 2 lc rgb "red" lw 0.1
set style line 13 lt 1 lc rgb "blue" lw 0.1
set style line 14 lt 4 lc rgb "forest-green" lw 0.1
set style line 15 lt 5 lc rgb "orange" lw 0.1
set style line 16 lt 6 lc rgb "magenta" lw 0.1

## define ranges
set xrange [-1:3.0]
set yrange [:]

set multiplot
plot "/afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__LO.hist" using 1:2 with lines ls 1 title "LO", "/afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__LO.hist" using 1:4:6 with filledcurves ls 1 fs transparent solid 0.15 notitle, "/afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__LO.hist" using 1:4 with lines ls 11 notitle, "/afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__LO.hist" using 1:6 with lines ls 11 notitle,\
"/afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__NLO_QCD.hist" using 1:2 with lines ls 2 title "NLO", "/afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__NLO_QCD.hist" using 1:4:6 with filledcurves ls 2 fs transparent solid 0.15 notitle, "/afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__NLO_QCD.hist" using 1:4 with lines ls 12 notitle, "/afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__NLO_QCD.hist" using 1:6 with lines ls 12 notitle,\
"/afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__NNLO_QCD.hist" using 1:2 with lines ls 3 title "NNLO", "/afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__NNLO_QCD.hist" using 1:4:6 with filledcurves ls 3 fs transparent solid 0.15 notitle, "/afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__NNLO_QCD.hist" using 1:4 with lines ls 13 notitle, "/afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__NNLO_QCD.hist" using 1:6 with lines ls 13 notitle
###############
# ratio inset #
###############

## remove previous settings
unset label  
#unset key
unset logscale y
unset format

## set ratio inset size
set size 1, 0.23
set origin 0, 0.12

## can be changed
#set logscale y
#set logscale x
set format y 
set key at graph 0.93, 0.95
set label "ratio to WRONG total rate (within same order) [%]" at graph 0, 1.1
set yrange [0:1]
set ytics ("0" 0,"20" 0.2,"40" 0.4,"60" 0.6,"80" 0.8,"100" 1)
set mytics 
set ytic offset 0.4, 0
set xtic offset -0.21,0.4
set xtics 
set mxtics 
set xlabel offset 0,0.7
set xlabel  " "
plot "<paste /afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__LO.hist /afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__NNLO_QCD.hist" using 1:($2/$9) with lines ls 1 notitle, "<paste /afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__LO.hist /afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__NNLO_QCD.hist" using 1:($4/$9):($6/$9) with filledcurves ls 1 fs transparent solid 0.15 notitle, "<paste /afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__LO.hist /afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__NNLO_QCD.hist" using 1:($4/$9) with lines ls 11 notitle, "<paste /afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__LO.hist /afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__NNLO_QCD.hist" using 1:($6/$9) with lines ls 11 notitle,\
"<paste /afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__NLO_QCD.hist /afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__NNLO_QCD.hist" using 1:($2/$9) with lines ls 2 notitle, "<paste /afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__NLO_QCD.hist /afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__NNLO_QCD.hist" using 1:($4/$9):($6/$9) with filledcurves ls 2 fs transparent solid 0.15 notitle, "<paste /afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__NLO_QCD.hist /afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__NNLO_QCD.hist" using 1:($4/$9) with lines ls 12 notitle, "<paste /afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__NLO_QCD.hist /afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__NNLO_QCD.hist" using 1:($6/$9) with lines ls 12 notitle,\
"<paste /afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__NNLO_QCD.hist /afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__NNLO_QCD.hist" using 1:($2/$9) with lines ls 3 notitle, "<paste /afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__NNLO_QCD.hist /afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__NNLO_QCD.hist" using 1:($4/$9):($6/$9) with filledcurves ls 3 fs transparent solid 0.15 notitle, "<paste /afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__NNLO_QCD.hist /afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__NNLO_QCD.hist" using 1:($4/$9) with lines ls 13 notitle, "<paste /afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__NNLO_QCD.hist /afs/cern.ch/work/k/kaura/Matrix_Gen/CMSSW_10_6_0/src/MATRIX_v1.0.3/run/ppemxnmnex04_MATRIX/result/run_03/gnuplot/histograms/n_jets__NNLO_QCD.hist" using 1:($6/$9) with lines ls 13 notitle