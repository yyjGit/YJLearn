//
//  main.m
//  MacOAndSymbol
//
//  Created by yyj on 2021/11/20.
//

#import <Foundation/Foundation.h>
#import "WeakImportSymbol.h"

// 全局、导出符号
void weak_function(void) {
    NSLog(@"main.m 中 ---- weak_function");
}

// 全局变量
int global_uninit_value;
int global_init_value = 10;
double default_x __attribute__((visibility("hidden")));

// 静态变量（即本地变量，当前文件可见）
static int static_init_value = 9;
static int static_uninit_value;

int main(int argc, const char * argv[]) {
        
    static_uninit_value = 10;
    // 弱引用符号使用（有定义直接调用，未定义也不会报错）
//    if (weak_import_function) {
//        weak_import_function();
//    }
    
    // 调用弱定义函数
    weak_function();
    
    NSLog(@"%d", static_init_value);
    
    return 0;
}
