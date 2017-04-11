#!/bin/bash
# Apply the UVC patches need for Realsense cameras
PATCHDIR=$PWD
cd /usr/src/kernel
echo $PATCHDIR
patch -p 4 -i $PATCHDIR/patchUVCDriver.diff
patch -p 4 -i $PATCHDIR/patchUVCInclude.diff
patch -p 1 -i $PATCHDIR/031-patch-21.3-use_constrait_workaround.diff


