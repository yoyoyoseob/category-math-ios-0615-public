//
//  NSNumber+FISMath.m
//  CategoryMath
//
//  Created by Yoseob Lee on 6/10/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "NSNumber+FISMath.h"

@implementation NSNumber (FISMath)


// Receiver = self (which is an nsnumber)


-(NSNumber *)add:(NSNumber *)number
{
    NSNumber *result = [NSNumber numberWithInteger:([self integerValue] + [number integerValue])];
    return result;
}


-(NSNumber *)subtract:(NSNumber *)number
{
    NSNumber *result = [NSNumber numberWithInteger:([self integerValue] - [number integerValue])];
    return result;
}


-(NSNumber *)multiplyBy:(NSNumber *)number
{
    NSNumber *result = [NSNumber numberWithInteger:([self integerValue] * [number integerValue])];
    return result;
}


-(NSNumber *)divideBy:(NSNumber *)number
{
    NSNumber *result = [NSNumber numberWithInteger:([self integerValue] / [number integerValue])];
    return result;
}




@end
