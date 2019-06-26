SFrameWrokPath = /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks
SDKPath        = /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS12.2.sdk 

MainMos = main.o




VideoApp:$(MainMos)
	gcc $(MainMos) -o VideoApp -iframework $(SFrameWrokPath) -framework UIKit -arch arm64  -isysroot $(SDKPath) -framework Foundation

main.o:main.m
	gcc  -c main.m -o main.o -iframework $(SFrameWrokPath) -framework UIKit -F$(SFrameWrokPath) -arch arm64 -fmacro-backtrace-limit=0 -std=gnu99  -isysroot $(SDKPath)

clean:
	rm -rf VideoApp VideoApp.app main.o


findCer:
	security find-identity -v -p codesigning

otoolTx:
	otool -l VideoApp.app/VideoApp | grep crypt

sign:
	codesign -fs "iPhone Distribution: Shanghai Hudun Information Technology Co., Ltd. (8G7DRCTZEQ)" --no-strict --entitlements pfs.plist VideoApp.app

signPrint:
	codesign -vv -d VideoApp.app

pack:CreateDir
	cp VideoApp Info.plist VideoApp.app
	cp upload.mobileprovision VideoApp.app/embedded.mobileprovision

CreateDir:VideoApp
	mkdir -p VideoApp.app