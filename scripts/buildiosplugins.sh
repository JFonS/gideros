cd ..
cd plugins
cd LuaSocket
cd source
rm -rf build
xcodebuild -project luasocket.xcodeproj -alltargets -sdk iphonesimulator$IOS_SDK -configuration Release
xcodebuild -project luasocket.xcodeproj -alltargets -sdk iphoneos$IOS_SDK -configuration Release
lipo build/Release-iphoneos/libluasocket.a build/Release-iphonesimulator/libluasocket.a -create -output libluasocket.a
mkdir ../../../ui/Templates/Xcode4/iOS\ Template/iOS\ Template/Plugins
mv libluasocket.a ../../../ui/Templates/Xcode4/iOS\ Template/iOS\ Template/Plugins
cd ../../..
cd scripts

