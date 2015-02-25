//
//  main.m
//  encapulation
//
//  Created by CKHuang on 2/25/15.
//  Copyright (c) 2015 CKHuang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface myClass : NSObject
{
    int num1, num2;
}

-(void) setData;
-(int) sum;
-(void) output;

-(void) setNum1: (int) n;
-(void) setNum2: (int) n;

-(int) num1;
-(int) num2;

@end

@implementation myClass

-(void) setNum1:(int)n
{
    num1 = n;
}

-(void) setNum2:(int)n
{
    num2 = n;
}

-(int) num1
{
    return num1;
}

-(int) num2
{
    return num2;
}

-(void) setData
{
    num1 = 100;
    num2 = 200;
}

-(int) sum
{
    return num1 + num2;
}

-(void) output
{
    NSLog(@"num1=%d num2=%d",num1,num2);
}

@end

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        myClass *obj = [[myClass alloc] init];
        int total;
        [obj setNum1: 100];
        [obj setNum2: 200];
        
        NSLog(@"num1:%d num2:%d",[obj num1], [obj num2]);
        total = [obj sum];
        NSLog(@"Total=%i",total);
    }
    return 0;
}
