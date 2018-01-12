//
//  DMRConfiguration.h
//  Runtime
//
//  Created by Darsky on 2018/1/12.
//  Copyright © 2018年 Darsky. All rights reserved.
//

#import <Foundation/Foundation.h>

void showInstanceMethod (id self, SEL _cmd)
{
    NSLog(@"调用动态方法 对象%@ 方法%@",self,NSStringFromSelector(_cmd));
}
