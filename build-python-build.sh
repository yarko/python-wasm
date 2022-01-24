#!/usr/bin/env bash


mkdir -p cpython/builddir/build
pushd cpython/builddir/build
../../configure -C

# fix for setuptools 60.05, if needed:
SETUPTOOLS_USE_DISTUTILS=stdlib make -j$(nproc)

popd
