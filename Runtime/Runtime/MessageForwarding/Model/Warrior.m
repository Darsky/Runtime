//
//  Warrior.m
//  Runtime
//
//  Created by Darsky on 2018/1/11.
//  Copyright © 2018年 Darsky. All rights reserved.
//

#import "Warrior.h"
#import "Diplomat.h"

@interface Warrior()
{
    
}

@property (strong, nonatomic) Diplomat *diplomat;

@end

@implementation Warrior

- (instancetype)init
{
    self = [super init];
    
    if (self)
    {
        self.diplomat = [[Diplomat alloc] init];
    }
    
    return self;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    if(aSelector == @selector(negotiate))
    {
        //https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/ObjCRuntimeGuide/Articles/ocrtTypeEncodings.html#//apple_ref/doc/uid/TP40008048-CH100-SW1
        return [NSMethodSignature signatureWithObjCTypes:"v@:"];
    }
    return nil;
}


- (void)forwardInvocation:(NSInvocation *)anInvocation
{
    if ([self.diplomat respondsToSelector:
         [anInvocation selector]])
        [anInvocation invokeWithTarget:self.diplomat];
    else
        [super forwardInvocation:anInvocation];
}
@end
