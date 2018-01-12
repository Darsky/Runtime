//
//  DMRDemoObject.m
//  Runtime
//
//  Created by Darsky on 2018/1/12.
//  Copyright © 2018年 Darsky. All rights reserved.
//

#import "DMRDemoObject.h"
#import <objc/runtime.h>
#import "DMRConfiguration.h"

@implementation DMRDemoObject

+ (BOOL)resolveInstanceMethod:(SEL)sel
{
    if (sel == @selector(showInstanceMethod))
    {
        return class_addMethod(self, sel, (IMP)showInstanceMethod, "v@:");
    }
    return [super resolveInstanceMethod:sel];
}

+ (BOOL)resolveClassMethod:(SEL)sel
{
    return [super resolveClassMethod:sel];
}



@end
