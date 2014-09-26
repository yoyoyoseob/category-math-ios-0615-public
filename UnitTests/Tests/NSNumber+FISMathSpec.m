//
//  NSNumber+FISMathSpec.m
//  CategoryMath
//
//  Created by Chris Gonzales on 9/26/14.
//  Copyright 2014 The Flatiron School. All rights reserved.
//

#import "Specta.h"
#import "NSNumber+FISMath.h"


SpecBegin(NSNumberFISMath)

describe(@"NSNumber+FISMath", ^{
    __block NSNumber *x;
    __block NSNumber *y;
    
    beforeAll(^{
        x = [NSNumber numberWithInteger:14];
        y = [NSNumber numberWithInteger:7];
    });
    
    it(@"should respond to add:",^{
        expect(x).to.respondTo(@selector(add:));
    });
    
    it(@"should respond to subtract:",^{
        expect(x).to.respondTo(@selector(subtract:));
    });
    
    it(@"should respond to multiplyBy:",^{
        expect(x).to.respondTo(@selector(multiplyBy:));
    });
    
    it(@"should respond to divideBy:",^{
        expect(x).to.respondTo(@selector(divideBy:));
    });
    
    describe(@"add:", ^{
        it(@"should return an NSNumber", ^{
            expect([x add:y]).to.beKindOf([NSNumber class]);
        });
        
        it(@"should return the sum of two NSNumbers",^{
            expect([x add:y]).to.equal(@21);
        });
    });
    
    describe(@"subtract:", ^{
        it(@"should return an NSNumber",^{
            expect([x subtract:y]).to.beKindOf([NSNumber class]);
        });
        
        it(@"should return the difference between two NSNumbers",^{
            expect([x subtract:y]).to.equal(@7);
        });
    });
    
    describe(@"multiply:", ^{
        it(@"should return an NSNumber",^{
            expect([x multiplyBy:y]).to.beKindOf([NSNumber class]);
        });
        
        it(@"should return the product of two NSNumbers",^{
            expect([x multiplyBy:y]).to.equal(@98);
        });
    });
    
    describe(@"divide:", ^{
        it(@"should return an NSNumber",^{
            expect([x multiplyBy:y]).to.beKindOf([NSNumber class]);
        });
        
        it(@"should return the quotient of two NSNumbers",^{
            expect([x divideBy:y]).to.equal(2);
        });
    });
    
});

SpecEnd
