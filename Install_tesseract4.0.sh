#!/bin/bash
# Downloading source code
mkdir /home/workspace
mkdir /home/workspace/scripts

# All
sudo apt-get update && sudo apt-get install -y \
	autoconf \
	autoconf-archive \
	automake \
	build-essential \
	checkinstall \
	cmake \
	g++ \
	git \
	libcairo2-dev \
	libcairo2-dev \
	libicu-dev \
	libicu-dev \
	libjpeg8-dev \
	libjpeg8-dev \
	libpango1.0-dev \
	libpango1.0-dev \
	libpng12-dev \
	libpng12-dev \
	libtiff5-dev \
	libtiff5-dev \
	libtool \
	pkg-config \
	wget \
	xzgv \
	zlib1g-dev


# Leptonica
git clone https://github.com/DanBloomberg/leptonica.git /home/workspace/scripts/leptonica

# Tesseract
git clone https://github.com/tesseract-ocr/tesseract.git /home/workspace/scripts/tesseract

# Compilation Leptonica
cd /home/workspace/scripts/leptonica
autoreconf -vi && ./autobuild && ./configure
make && make install


# Compilation Tesseract
cd /home/workspace/scripts/tesseract
./autogen.sh && ./configure
LDFLAGS="-L/usr/local/lib" CFLAGS="-I/usr/local/include" make
make
make install && ldconfig
make training && make training-install

export TESSDATA_PREFIX=/usr/local/share/tessdata
# osd   Orientation and script detection
wget -O ${TESSDATA_PREFIX}/osd.traineddata https://github.com/tesseract-ocr/tessdata/raw/3.04.00/osd.traineddata
# equ   Math / equation detection
wget -O ${TESSDATA_PREFIX}/equ.traineddata https://github.com/tesseract-ocr/tessdata/raw/3.04.00/equ.traineddata
# eng English
wget -O ${TESSDATA_PREFIX}/eng.traineddata https://github.com/tesseract-ocr/tessdata/raw/4.00/eng.traineddata
# tha Thai
wget -O ${TESSDATA_PREFIX}/tha.traineddata https://github.com/tesseract-ocr/tessdata/raw/4.00/tha.traineddata
