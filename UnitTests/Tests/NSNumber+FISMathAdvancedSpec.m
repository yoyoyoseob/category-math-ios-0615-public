//
//  NSNumber+FISMathAdvancedSpec.m
//  CategoryMath
//
//  Created by Chris Gonzales on 11/12/14.
//  Copyright 2014 The Flatiron School. All rights reserved.
//
#ifdef ADVANCED

#import "Specta.h"
#import "NSNumber+FISMathAdvanced.h"

SpecBegin(NSNumberFISMathAdvanced)

describe(@"NSNumberFISMathAdvanced", ^{
    __block NSNumber *x;
    __block NSNumber *y;
    
    __block int intNumber1;
    __block int intNumber2;
    __block float floatNumber1;
    __block float floatNumber2;
    __block double doubleNumber1;
    __block double doubleNumber2;
    __block NSInteger integerNumber1;
    __block NSInteger integerNumber2;
    
    beforeAll(^{
        x = [NSNumber numberWithInteger:14];
        y = [NSNumber numberWithInteger:7];
        
        intNumber1 = 2;
        intNumber2 = 3;
        floatNumber1 = 2.2f;
        floatNumber2 = 2.3f;
        doubleNumber1 = 3.2;
        doubleNumber2 = 3.3;
        integerNumber1 = 7;
        integerNumber2 = 5;
    });
    
    it(@"should respond to advancedAdd:",^{
        expect(x).to.respondTo(@selector(advancedAdd:));
    });
    
    it(@"should respond to advancedSubtract:",^{
        expect(x).to.respondTo(@selector(advancedSubtract:));
    });
    
    it(@"should respond to advancedMultiplyBy:",^{
        expect(x).to.respondTo(@selector(advancedMultiplyBy:));
    });
    
    it(@"should respond to advancedDivideBy:",^{
        expect(x).to.respondTo(@selector(advancedDivideBy:));
    });
    
    describe(@"add:", ^{
        it(@"should return an NSNumber", ^{
            expect([x advancedAdd:y]).to.beKindOf([NSNumber class]);
        });
        
        it(@"should return the sum of two ints",^{
            expect([[NSNumber numberWithInt:intNumber1] advancedAdd:[NSNumber numberWithInt:intNumber2]]).to.equal(@5);
        });
        
        it(@"should return the sum of two floats",^{
            expect([[NSNumber numberWithFloat:floatNumber1] advancedAdd:[NSNumber numberWithFloat:floatNumber2]]).to.equal(@4.5);
        });

        it(@"should return the sum of two doubles",^{
            expect([[NSNumber numberWithDouble:doubleNumber1] advancedAdd:[NSNumber numberWithDouble:doubleNumber2]]).to.equal(@6.5);
        });
        
        it(@"should return the sum of two integers",^{
            expect([[NSNumber numberWithInteger:integerNumber1] advancedAdd:[NSNumber numberWithInteger:integerNumber2]]).to.equal(@12);
        });
    });
    
    describe(@"subtract:", ^{
        it(@"should return an NSNumber", ^{
            expect([x advancedSubtract:y]).to.beKindOf([NSNumber class]);
        });
        
        it(@"should return the difference of two ints",^{
            expect([@(intNumber1) advancedSubtract:@(intNumber2)]).to.equal(@-1);
        });
        
        it(@"should return the difference of two floats",^{
            expect([@(floatNumber1) advancedSubtract:@(floatNumber2)]).to.equal(@(floatNumber1-floatNumber2));
        });

        it(@"should return the difference of two doubles",^{
            expect([@(doubleNumber1) advancedSubtract:@(doubleNumber2)]).to.equal(@(doubleNumber1-doubleNumber2));
        });
        
        it(@"should return the difference of two integers",^{
            expect([@(integerNumber1) advancedSubtract:@(integerNumber2)]).to.equal(@2);
        });

    });

    describe(@"multiply:", ^{
        
        it(@"should return an NSNumber", ^{
            expect([x advancedMultiplyBy:y]).to.beKindOf([NSNumber class]);
        });
        
        it(@"should return the product of two ints",^{
            expect([@(intNumber1) advancedMultiplyBy:@(intNumber2)]).to.equal(@6);
        });
        
        it(@"should return the product of two floats",^{
            expect([@(floatNumber1) advancedMultiplyBy:@(floatNumber2)]).to.equal(@5.06);
        });

        it(@"should return the product of two doubles",^{
            expect([@(doubleNumber1) advancedMultiplyBy:@(doubleNumber2)]).to.equal(@(doubleNumber1 * doubleNumber2));
        });
        
        it(@"should return the product of two integers",^{
            expect([@(integerNumber1) advancedMultiplyBy:@(integerNumber2)]).to.equal(@35);
        });

    });
    
    describe(@"divide:", ^{
        it(@"should return an NSNumber",^{
            expect([x advancedMultiplyBy:y]).to.beKindOf([NSNumber class]);
        });
        
        it(@"should return the quotient of two ints",^{
            expect([@(intNumber1) advancedDivideBy:@(intNumber2)]).to.equal(@0);
        });
        
        it(@"should return the quotient of two floats",^{
            expect([@(floatNumber1) advancedDivideBy:@(floatNumber2)]).to.equal(@0.9565218);
        });

        it(@"should return the quotient of two doubles",^{
            expect([@(doubleNumber1) advancedDivideBy:@(doubleNumber2)]).to.equal(@0.9696969696969698);
        });
        
        it(@"should return the product of two integers",^{
            expect([@(integerNumber1) advancedDivideBy:@(integerNumber2)]).to.equal(@1);
        });

    });
   
});

SpecEnd

#endif
