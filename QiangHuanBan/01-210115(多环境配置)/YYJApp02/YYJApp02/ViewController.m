//
//  ViewController.m
//  YYJApp02
//
//  Created by yyj on 2021/11/17.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *infoplistPath = [[NSBundle mainBundle] pathForResource:@"Info" ofType:@"plist"];
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:infoplistPath];
    
    NSString *baseUrl = dict[@"BASE_URL"];
    
    NSLog(@"BASE_URL = %@", baseUrl);
}


@end
