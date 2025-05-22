#! /bin/bash

if [[ -z ${ANDROID_SDK_ROOT} ]]; then
  export ANDROID_SDK_ROOT="/Users/sm/Library/Android/sdk/"
fi

if [[ -z ${ANDROID_NDK_ROOT} ]]; then
  export ANDROID_NDK_ROOT="/Users/sm/Library/Android/sdk/ndk/22.1.7171670"
fi

export PATH="$(brew --prefix bison)/bin:$PATH"

# echo "export PATH=\"$(brew --prefix bison)/bin:$PATH\""

./android.sh --lts --disable-arm-v7a-neon --disable-x86 --disable-x86-64 --disable-arm-v7a --enable-gpl --enable-android-media-codec --enable-android-zlib --enable-chromaprint --enable-dav1d --enable-fontconfig --enable-freetype --enable-fribidi --enable-gmp --enable-kvazaar --enable-lame --enable-libaom --enable-libass --enable-libiconv --enable-libilbc --enable-libtheora --enable-libvorbis --enable-libvpx --enable-libwebp --enable-libxml2 --enable-opencore-amr --enable-openh264 --enable-opus --enable-sdl --enable-shine --enable-snappy --enable-soxr --enable-speex --enable-srt --enable-tesseract --enable-twolame --enable-vo-amrwbenc --enable-zimg --enable-libvidstab --enable-rubberband --enable-x264 --enable-x265 --enable-xvidcore
