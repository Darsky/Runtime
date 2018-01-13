//
//  AssociatedObject+Category.m
//  Runtime
//
//  Created by Darsky on 2018/1/13.
//  Copyright © 2018年 Darsky. All rights reserved.
//

#import "AssociatedObject+Category.h"
static char associatedObjectKey;
@implementation AssociatedObject (Category)

- (void)setAssociatedValue:(id)associatedValue
                withPolicy:(objc_AssociationPolicy)policy
{
    objc_setAssociatedObject(self, &associatedObjectKey, associatedValue, policy);
}

- (id)associatedValue
{
    return objc_getAssociatedObject(self, &associatedObjectKey);
}
@end
