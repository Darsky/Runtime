//
//  AssociatedObject+Category.h
//  Runtime
//
//  Created by Darsky on 2018/1/13.
//  Copyright © 2018年 Darsky. All rights reserved.
//

#import "AssociatedObject.h"
#import <objc/runtime.h>


@interface AssociatedObject (Category)

- (void)setAssociatedValue:(id)associatedValue
                withPolicy:(objc_AssociationPolicy)policy;

- (id)associatedValue;
@end
