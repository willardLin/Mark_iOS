//
//  Son.m
//  RuntimeExam
//
//  Created by Willard Lin on 14/11/1.
//  Copyright (c) 2014年 Willard Lin. All rights reserved.
//

#import "Son.h"

@implementation Son

- (id)init
{

    if (self = [super init])
    {
        NSLog(@"%@",NSStringFromClass([self class]));
        NSLog(@"%@",NSStringFromClass([super class]));
        
        
    }
    return self;
}
@end
