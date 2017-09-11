NDK=$HOME/Library/Android/sdk/ndk-bundle
SYSROOT=$NDK/platforms/android-16/arch-arm/
TOOLCHAIN=$NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64

function build_one

{
./configure \
 --prefix=$PREFIX \
 --enable-shared \
 --disable-static \
 --disable-ffmpeg \
 --disable-ffplay \
 --disable-ffprobe \
 --disable-ffserver \
 --disable-doc \
 --disable-symver \
 --enable-avresample \
 --enable-gpl \
 --cross-prefix=$TOOLCHAIN/bin/arm-linux-androideabi- \
 --target-os=linux \
 --arch=arm \
 --enable-cross-compile \
 --sysroot=$SYSROOT \
 --extra-cflags="-Os -fpic $ADDI_CFLAGS" \
 --extra-ldflags="-Wl,--fix-cortex-a8 $ADDI_LDFLAGS" \
 $ADDITIONAL_CONFIGURE_FLAG
make clean
make
make install
}

CPU=arm
PREFIX=$(pwd)/android/$CPU 
ADDI_CFLAGS="-marm -march=armv7-a -mfloat-abi=softfp -mfpu=neon"
build_one
