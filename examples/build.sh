#!/bin/bash

pushd ../lib
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

pushd triangle
alr build
popd

pushd arith
alr build
popd

pushd audio
alr build
popd

pushd spect
alr build
popd

pushd freqd
alr build
popd

pushd tdirac
alr build
popd

zip examples.zip bin/*
