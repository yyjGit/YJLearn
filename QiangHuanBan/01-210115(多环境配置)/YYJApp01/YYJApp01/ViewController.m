//
//  ViewController.m
//  YYJApp01
//
//  Created by yyj on 2021/11/16.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
#if IS_YYJAPP
    NSLog(@"target is YYJApp01");
#elif IS_YYJAPP_DEV
    NSLog(@"target is YYJApp01Dev");
#else
    NSLog(@"target is other");
#endif
    
}


@end
