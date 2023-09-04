#!/bin/bash

R -e "tinytex::install_tinytex(force=TRUE)"

pushd examples
R -e "rmarkdown::render('sinusoid/doc/sinusoid.Rmd')"
R -e "rmarkdown::render('chirp/doc/chirp.Rmd')"
R -e "rmarkdown::render('triangle/doc/triangle.Rmd')"
R -e "rmarkdown::render('arith/doc/arith.Rmd')"
R -e "rmarkdown::render('freqd/doc/freqd.Rmd')"
R -e "rmarkdown::render('spect/doc/spect.Rmd')"
R -e "rmarkdown::render('audio/doc/audio.Rmd')"
R -e "rmarkdown::render('stats/doc/stats.Rmd')"
R -e "rmarkdown::render('synth/doc/synth.Rmd')"
zip docs.zip */*/*.pdf */*/*.html
