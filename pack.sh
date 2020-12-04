#!/bin/bash
BUILDB=$1

if [ -z ${BUILDB} ]; then
	echo "build BRANCH ??"
	exit 1
fi

./compile.sh  BOARD=aml-s812 BRANCH=current RELEASE=${BUILDB} BUILD_MINIMAL=no BUILD_DESKTOP=no KERNEL_ONLY=no KERNEL_CONFIGURE=no COMPRESS_OUTPUTIMAGE=sha,gpg,img
tar -cJvf armbian.tar.xz output
