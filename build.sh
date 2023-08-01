#!/bin/bash

pushd lib
alr build
popd

pushd sinusoid
alr build
popd

pushd chirp
alr build
popd

pushd echirp
alr build
popd

pushd examples
   pushd audio
   find /usr/lib/ -name "*snd*"
   find /usr/local/lib -name "*snd*"
   find /lib -name "*snd*"
   alr build
   popd
popd