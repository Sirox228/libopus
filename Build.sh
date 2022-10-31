NDK=${ANDROID_NDK_HOME}

cd opus
./autogen.sh
FLAGS="--enable-float-approx=yes --enable-check-asm --enable-custom-modes=yes --enable-assertions=yes --disable-doc --disable-extra-programs --enable-asm=yes"
./configure $FLAGS
cd ../

echo "starting"

rm -r opus/celt/arm/armopts.s
cp -f armopts.s opus/celt/arm/armopts.s

#./aarch64-linux-android-as -EL -o opus/celt/arm/armopts.o opus/celt/arm/armopts.s

${NDK}/ndk-build NDK_PROJECT_PATH=./ NDK_APPLICATION_MK=./Application.mk APP_BUILD_SCRIPT=./Android.mk

echo "done"
