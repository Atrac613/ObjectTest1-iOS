//
//  ViewController.m
//  ObjectTest1
//
//  Created by Osamu Noguchi on 10/16/12.
//  Copyright (c) 2012 Osamu Noguchi. All rights reserved.
//

#import "ViewController.h"
#import "TestObject.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // TestObject
    
    TestObject *testObject = [[TestObject alloc] init];
    testObject.testString = @"hello";
    
    NSLog(@"%@", testObject.testString);
    NSLog(@"%p", testObject);
    
    [self testFunction:testObject];
    NSLog(@"%@", testObject.testString);
    NSLog(@"%p", testObject);
    
    // Int
    
    int testInt = 0;
    
    NSLog(@"%d", testInt);
    
    [self testFunction2:testInt];
    NSLog(@"%d", testInt);
    
    //NSString
    
    NSString *testString = @"hello";
    NSLog(@"%@", testString);
    
    [self testFunction3:testString];
    NSLog(@"%@", testString);
    
    /*
     Results:
     
     2012-10-17 00:33:20.255 ObjectTest1[20039:c07] hello
     2012-10-17 00:33:20.258 ObjectTest1[20039:c07] 0x8983620
     2012-10-17 00:33:20.259 ObjectTest1[20039:c07] 0x8983620
     2012-10-17 00:33:20.260 ObjectTest1[20039:c07] test
     2012-10-17 00:33:20.261 ObjectTest1[20039:c07] 0x8983620
     2012-10-17 00:33:20.262 ObjectTest1[20039:c07] 0
     2012-10-17 00:33:20.263 ObjectTest1[20039:c07] 0
     2012-10-17 00:33:20.264 ObjectTest1[20039:c07] hello
     2012-10-17 00:33:20.265 ObjectTest1[20039:c07] hello
     
     */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)testFunction:(TestObject*)_object {
    NSLog(@"%p", _object);
    
    _object.testString = @"test";
}

- (void)testFunction2:(int)_int {
    _int = 1;
}

- (void)testFunction3:(NSString*)_string {
    _string = @"test";
}

@end
