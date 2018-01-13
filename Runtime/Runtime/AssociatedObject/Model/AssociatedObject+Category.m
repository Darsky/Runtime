//
//  AssociatedObject+Category.m
//  Runtime
//
//  Created by Darsky on 2018/1/13.
//  Copyright © 2018年 Darsky. All rights reserved.
//

#import "AssociatedObject+Category.h"
#import <objc/runtime.h>

@implementation AssociatedObject (Category)

- (void)setAssociatedValue:(NSString *)associatedValue
{
    objc_setAssociatedObject(self, @selector(associatedValue), associatedValue, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString*)associatedValue
{
    return objc_getAssociatedObject(self, _cmd);
}
@end
