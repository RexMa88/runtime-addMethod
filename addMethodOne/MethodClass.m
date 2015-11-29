//
//  MethodClass.m
//  addMethodOne
//
//  Created by Rex Ma on 15/11/29.
//  Copyright © 2015年 Rex Ma. All rights reserved.
//

#import "MethodClass.h"
#import <objc/runtime.h>

@implementation MethodClass

- (id)init{
    self = [super init];
    if (self) {
        
    }
    return self;
}

#pragma mark - runtime

+ (BOOL)resolveInstanceMethod:(SEL)sel{
    if (sel == @selector(instanceMethod)) {
        class_addMethod([self class], @selector(instanceMethod), (IMP)runtimeInstanceMethod, "");
        return YES;
    }
    return [super resolveInstanceMethod:sel];
}


#pragma mark - add method

void runtimeInstanceMethod(id obj, SEL _cmd){
    NSLog(@"The new InstanceMethod Class is %@",obj);
    NSLog(@"The new Instance Method is %@",NSStringFromSelector(_cmd));
    NSLog(@"The new InstanceMethod");
}

////instance Method implementation
//- (void)instanceMethod{
//    NSLog(@"The original Instance Method");
//}
////class Method implementation
//+ (void)classMethod{
//    NSLog(@"The original Class Method");
//}

@end
