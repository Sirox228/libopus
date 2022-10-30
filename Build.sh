NDK=${ANDROID_NDK_HOME}

cd opus
./autogen.sh
FLAGS="--enable-float-approx=yes --enable-custom-modes=yes --enable-assertions=yes --disable-doc --disable-extra-programs --enable-asm=yes"
./configure $FLAGS
cd ../

echo "starting"

#idk why opus is so stupid that includes config.h in "" instead of <> when it is outside folder with source 3 times
cp -r opus/config.h opus/src/config.h
cp -r opus/config.h opus/celt/config.h
cp -r opus/config.h opus/silk/config.h

${NDK}/ndk-build NDK_PROJECT_PATH=./ NDK_APPLICATION_MK=./Application.mk APP_BUILD_SCRIPT=./Android.mk

echo "done"
