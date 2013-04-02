#!/bin/sh
make clean

./configure --disable-dln --with-static-linked-ext --without-gcc --disable-install-rdoc --host=arm-apple-darwin10 --target=arm-apple-darwin10 \
 LD=clang AR=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/ar \
 ac_cv_func_getpgrp_void=yes ac_cv_func_setpgrp_void=yes \
 RANLIB=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/ranlib \
 CFLAGS="-arch armv7 -fmessage-length=0 -pipe -Wno-trigraphs -fpascal-strings -Os -Wreturn-type -Wunused-variable -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS6.1.sdk" \
 LDFLAGS="-arch armv7 -L/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS6.1.sdk/usr/lib/ -L/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS6.1.sdk/usr/lib/system/ -fstack-protector -read_only_relocs suppress -arch armv7"

 make
