SFrameWrokPath = /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks
SDKPath        = /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS12.2.sdk 

MainMos = main.o


DestApp:VideoApp
	lipo -create VideoApp64 VideoAppV7 -output VideoApp


VideoApp:$(MainMos)
	gcc main64.o -o VideoApp64 -iframework $(SFrameWrokPath) -framework UIKit -arch arm64  -isysroot $(SDKPath) -framework Foundation
	gcc mainV7.o -o VideoAppV7 -iframework $(SFrameWrokPath) -framework UIKit -arch armv7  -isysroot $(SDKPath) -framework Foundation
main.o:main.m
	gcc  -c main.m -o main64.o -iframework $(SFrameWrokPath) -framework UIKit -F$(SFrameWrokPath) -arch arm64 -fmacro-backtrace-limit=0 -std=gnu99  -isysroot $(SDKPath)
	gcc  -c main.m -o mainV7.o -iframework $(SFrameWrokPath) -framework UIKit -F$(SFrameWrokPath) -arch armv7 -fmacro-backtrace-limit=0 -std=gnu99  -isysroot $(SDKPath)



findCer:
	security find-identity -v -p codesigning

otoolTx:
	otool -l VideoApp.app/VideoApp | grep crypt


	

Archive:ZipLoad
	mv Payload.zip Payload.ipa

ZipLoad:Move
	zip -r Payload.zip Payload 

Move:sign
	cp -rf VideoApp.app Payload



sign:pack
	codesign -fs "iPhone Distribution: Shanghai Hudun Information Technology Co., Ltd. (8G7DRCTZEQ)" --no-strict --entitlements pfs.plist VideoApp.app
	mkdir -p Payload
signPrint:
	codesign -vv -d VideoApp.app

pack:CreateDir
	cp VideoApp Info.plist VideoApp.app
	cp upload.mobileprovision VideoApp.app/embedded.mobileprovision



CreateDir:VideoApp
	mkdir -p VideoApp.app

clean:
	rm -rf VideoApp* Payload*