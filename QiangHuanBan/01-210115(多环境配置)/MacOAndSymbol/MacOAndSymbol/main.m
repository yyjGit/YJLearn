//
//  main.m
//  MacOAndSymbol
//
//  Created by yyj on 2021/11/20.
//

#import <Foundation/Foundation.h>

int global_uninit_value;

int global_init_value = 10;
double default_x __attribute__((visibility("hidden")));

static int static_init_value = 9;
static int static_uninit_value;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        static_uninit_value = 10;
        NSLog(@"%d", static_init_value);
    }
    return 0;
}
