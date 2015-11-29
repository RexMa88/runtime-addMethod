//
//  MethodSonClass.m
//  addMethodOne
//
//  Created by Rex Ma on 15/11/29.
//  Copyright © 2015年 Rex Ma. All rights reserved.
//

#import "MethodSonClass.h"
#import <objc/runtime.h>

@implementation MethodSonClass

- (id)init{
    self = [super init];
    if (self) {
//        [MethodClass classMethod];
    }
    return self;
}

//+ (BOOL)resolveClassMethod:(SEL)sel{
//    if (sel == @selector(classMethod)) {
//        class_addMethod([self class], @selector(classMethod), (IMP)runtimeClassMethod, "");
//        return YES;
//    }
//    return [super resolveClassMethod:sel];
//}
//
//void runtimeClassMethod(id obj, SEL _cmd){
//    NSLog(@"The new ClassMethod Class is %@",obj);
//    NSLog(@"The new Class Method is %@",NSStringFromSelector(_cmd));
//    NSLog(@"The new ClassMethod");
//}

@end
