NDK=${ANDROID_NDK_HOME}

cd opus
./autogen.sh
# ./configure --host=arm-androideabi-linux --enable-float-approx --disable-doc --disable-extra-programs
FLAGS="--enable-float-approx=yes --enable-custom-modes=yes --enable-assertions=yes --disable-doc --disable-extra-programs --enable-asm=yes"
./configure $FLAGS
cd ../

echo "starting"

#idk why opus is so stupid that includes config.h in "" instead of <> when it is outside src folder
cp -r opus/config.h opus/src/config.h

${NDK}/ndk-build NDK_PROJECT_PATH=./ NDK_APPLICATION_MK=./Application.mk APP_BUILD_SCRIPT=./Android.mk

echo "done"
