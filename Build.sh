NDK=${ANDROID_NDK_HOME}

cd opus
./autogen.sh
# ./configure --host=arm-androideabi-linux --enable-float-approx --disable-doc --disable-extra-programs
FLAGS="--enable-float-approx=yes --enable-custom-modes=yes --enable-assertions=yes --disable-doc --disable-extra-programs --enable-asm=yes"
./configure $FLAGS
cd ../

echo "starting"

tree

${NDK}/ndk-build NDK_PROJECT_PATH=./ NDK_APPLICATION_MK=./Application.mk APP_BUILD_SCRIPT=./Android.mk

echo "done"
