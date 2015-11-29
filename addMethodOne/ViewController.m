//
//  ViewController.m
//  addMethodOne
//
//  Created by Rex Ma on 15/11/29.
//  Copyright © 2015年 Rex Ma. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>
#import "MethodClass.h"
#import "MethodSonClass.h"

@interface ViewController ()

@property (nonatomic, strong) MethodClass * methodClassInstance;

@property (nonatomic, strong) MethodSonClass * methodSonClassInstance;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _methodClassInstance = [[MethodClass alloc] init];
    //MethodClass instanceMethod
    [_methodClassInstance instanceMethod];
    //MethodClass ClassMethod
//    [MethodClass classMethod];
    
//    [MethodSonClass classMethod];
//    _methodSonClassInstance = [[MethodSonClass alloc] init];
//    //MethodSonClass instanceMethod
//    [_methodSonClassInstance instanceMethod];
//    //MethodSonClass ClassMethod
//    [MethodSonClass classMethod];
}

#pragma mark - life cycle

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
