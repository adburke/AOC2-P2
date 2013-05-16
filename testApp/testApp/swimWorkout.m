//
//  swimWorkout.m
//  testApp
//
//  Created by Aaron Burke on 5/8/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import "swimWorkout.h"

@implementation swimWorkout

@synthesize laps;

-(id)init
{
    self = [super init];
    if (self)
    {
        [self setLaps:5];
        [self setCaloriesBurned:0];
    }
    return self;
}

-(int)calculateCaloriesBurned
{
    [self setCaloriesBurned:( self.userWeight * ( (laps * 100) * 0.000621371) * 2.93 ) ];
//    NSString *calBurnedMsg = [[NSString alloc] initWithFormat:@"This workout burned %i calories.", self.caloriesBurned];
//    return calBurnedMsg;
    return self.caloriesBurned;
}

@end
