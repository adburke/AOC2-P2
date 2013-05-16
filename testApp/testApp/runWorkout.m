//
//  runningWorkout.m
//  testApp
//
//  Created by Aaron Burke on 5/8/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import "runWorkout.h"

@implementation runWorkout

@synthesize distance;

-(id)init
{
    self = [super init];
    if (self)
    {
        [self setDistance:5.0f];
        [self setCaloriesBurned:0];
    }
    return self;
}

-(int)calculateCaloriesBurned
{
    [self setCaloriesBurned:( self.userWeight * .75 * distance ) ];
//    NSString *calBurnedMsg = [[NSString alloc] initWithFormat:@"This workout burned an estimated %i calories.", self.caloriesBurned];
//    return calBurnedMsg;
    return self.caloriesBurned;
}

@end


