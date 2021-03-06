//
//  TestViewController.m
//  TestAssessment
//
//  Created by Michael Kavouras on 6/27/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

// Updated by Franklin on 7/11/2015

#import "TestViewController.h"
#import "Car.h"


@implementation TestViewController

//Changed positive to negative
/*
    This method should return any negative NSInteger
    (hint: cannot be 0)
 */
- (NSInteger)shouldReturnANegativeNSInteger {
    return -1;
}

/*
    This method should return any positive CGFloat
    (hint: cannot be 0)
 */
- (CGFloat)shouldReturnAPositiveCGFloat {
    return 1.5;
}

/*
    This method should return a truthy boolean
    Truthy: Something which evaluates to TRUE.
 */
- (BOOL)shouldReturnAPositiveBool {
    return YES;
}

/*
    This method should return any single char from c - l
 */
- (char)shouldReturnACharCtoL {
    return 'k';
}

/*
    This method should return the sum of all numbers from
    0 - 1000 using a loop (eg. 1 + 2 + 3 + ... + 998 + 999)
 */
- (NSInteger)shouldReturnSumOf0To1000 {
    
    NSInteger sum = 0;
    for(int i = 0; i < 1000; i++) {
        sum = sum + i;
        NSLog(@"%d", i);
        
    }
    
    return sum;
}

/*
    Given a c array (int[]) and a count, return the average of the numbers within the arr
    (hint: average = sum / number of elements)
 [1, 2, 3, 4, 5];
 */
- (NSInteger)shouldReturnAverageOfArrayValues :(int *)arr
                                 withSize:(int)count {
    NSInteger sum = 0;
    for (int i = 0; i < count; i++) {
        sum = sum + arr[i];
    }
    
    return sum / count;
}


/*
    Provided a C string (array of chars), return the character
    that immediately succeed the letter g
    (ex. "aionkljajvglkjaml" would return the letter 'l')
    (hint: assume there will be a char after g)
 */
- (char)shouldReturnCharAfterG:(char *)str {
    
//        for (int i = 0; i < strlen(str); i++) {
//            printf("%c", str[i]);
//            if (str[i] == 'g') {
//                return str[i - 1];
//            }
//        }
//// I'm so confused about the offset WHAT THE FREAK YO!
    
    int i = 0;
    while (str[i] != 'g') {
        i++;
    }
    
    
    return str[i+1];
}

/*
    This method should return the product of aNumber + bNumber
    (hint: product = muliplication
 */
- (NSInteger)productOfAnInteger:(NSInteger)aNumber
              andAnotherInteger:(NSInteger)bNumber {

    return aNumber * bNumber;
}


/*
    This method should return a YES if aNumber is Even
 */
- (BOOL)isEven:(NSInteger)aNumber {
    if (aNumber % 2 == 0) {
        return YES;
    }else {
        return NO;
    }
   // I forget if you are suppose to use ==, must go over with Mike unclear when to use
}

/*
    This method should return YES if aNumber is a multiple of 10
 */
- (BOOL)isMultipleOfTen:(NSInteger)aNumber {
    return aNumber % 10 == 0;
}

/*
    This method should return YES is aNumber is odd and bNumber is even
 */
- (BOOL)returnYesIfThisNumberIsOdd:(NSInteger)aNumber
               andThisNumberIsEven:(NSInteger)bNumber {
    
    return (aNumber %  2 != 0) && (bNumber % 2 == 0);
}

/*
    This method should return the model of the Car
    (hint: command + click on the class name to see what methods are available)
 */
- (NSString *)shouldReturnCarModel:(Car *)car {
    return [car model];
}

/*
    This method should change the model of the car to "Firebird"
 */
- (void)changeCarModelToFirebird:(Car *)car {
   
//    Car *myCar = [[Car alloc] init];
//    myCar.model = @"Firebird";
    [car setModel:@"Firebird"];
}

/*
    This method should ask the car to drive 4 miles and then return
    the car's current fuel level
 */
- (CGFloat)tellCarToDrive4MilesAndReturnFuelLevel:(Car *)car {
    [car drive:4];
    return [car fuelLevel];
}

/*
    This method should:
    1) Create a new instance of Car
    2) Set the model to "Honda Pilot" WATCH YOUR SPELLING
    3) Drive the car 6 miles
    4) Return the car
 */
- (Car *)createAndReturnANewCar {
    Car *newCar = [[Car alloc] init];
    [newCar setModel:@"Honda Pilot"];
    [newCar drive:6];
    return newCar;
}


- (int)returnSumOfAllItemsGreaterThan100:(int *)arr
                                withSize:(int)size {
    
    int sum = 0;
   
    
    for (int i = 0; i < size; i++) {
        if (arr[i] > 100) {
            sum = sum + arr[i];
        }
        
        printf("%d", arr[i]);
      
    
    }
      return sum ;
}




@end
