NDK=${ANDROID_NDK_HOME}

cd opus
./autogen.sh
FLAGS="--enable-float-approx=yes --enable-custom-modes=yes --enable-assertions=yes --disable-doc --disable-extra-programs --enable-asm=yes"
./configure $FLAGS
cd ../

echo "starting"

./aarch64-linux-android-as opus/celt/arm/armopts.s -o opus/celt/arm/armopts.o

${NDK}/ndk-build NDK_PROJECT_PATH=./ NDK_APPLICATION_MK=./Application.mk APP_BUILD_SCRIPT=./Android.mk

echo "done"
