//
//  ViewController.m
//  RuntimeExam
//
//  Created by Willard Lin on 14/11/1.
//  Copyright (c) 2014年 Willard Lin. All rights reserved.
//

#import "ViewController.h"
#import "Son.h"
#import "NSObject+Sark.h"
#import "MiniNortheast.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //第一题
    Son *son = [[Son alloc] init];
    
    //第二题
    BOOL bool1 = [(id)[NSObject class] isKindOfClass:[NSObject class]];
    BOOL bool2 = [(id)[NSObject class] isMemberOfClass:[NSObject class]];
    BOOL bool3 = [(id)[Son class] isKindOfClass:[Son class]];
    BOOL bool4 = [(id)[Son class] isMemberOfClass:[Son class]];
    
    
    NSLog(@"bool1:%i, bool2:%i, bool3:%i , bool4:%i",bool1,bool2,bool3,bool4);
    
    //第三题
    [NSObject foo];
    //编译出错
//    [[NSObject new] foo];
    
    //第四题 运行时出错
    id cls = [MiniNortheast class];
    void *obj = &cls;
    [(__bridge id)obj speak];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
