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
   alr build
   popd
popd