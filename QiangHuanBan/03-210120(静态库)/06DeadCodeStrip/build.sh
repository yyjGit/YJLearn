# 自定义变量：
# 系统库路径
SYSROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
# 可执行文件名
FILE_NAME=test
# 编译架构
ARCH=arm64-apple-macos11.0

echo "-- 1 -- OC 源文件 test.m 生成目标文件 test.o"
clang -x objective-c \
-target ${ARCH} \
-fobjc-arc \
-isysroot ${SYSROOT} \
-I./Frameworks/CustomLib.framework/Headers \
-c test.m -o test.o

echo "-- 2 -- 跳转到 Frameworks/CustomLib.framework"
pushd ./Frameworks/CustomLib.framework

echo "-- 3 -- 生成静态库文件 CustomLib"
echo "-- 3.1 -- OC 源文件 CustomLib.m 生成目标文件 CustomLib.o"
clang -x objective-c \
-target ${ARCH} \
-fobjc-arc \
-isysroot ${SYSROOT} \
-I./Headers \
-c CustomLib.m -o CustomLib.o

echo "-- 3.2 -- 生成目标文件 CustomLib.o 生成静态库文件 CustomLib"
libtool -static -arch_only arm64 -D -syslibroot ${SYSROOT} CustomLib.o -o CustomLib

echo "-- 4.0 -- 返回 ”05-shell简单应用“ 目录"
popd

echo "-- 5.0 -- test.o 链接静态库 CustomLib.framework 生成可执行文件 test"
clang -target ${ARCH} \
-fobjc-arc \
-isysroot ${SYSROOT} \
-F./Frameworks \
-framework CustomLib \
-Xlinker -dead_strip \
test.o -o test



echo "-- 6.0 -- 生成可执行文件 test 成功"

echo "-- 7.0 -- 运行可执行文件 test"
./test

echo "-- 8.0 -- 输出(__TEXT,__text) section 中的符号："
objdump --macho -d test
