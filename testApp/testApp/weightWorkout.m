//
//  weightWorkout.m
//  testApp
//
//  Created by Aaron Burke on 5/8/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import "weightWorkout.h"

#define gravity 9.8

@implementation weightWorkout

@synthesize reps, sets, liftWeight;

-(id)init
{
    self = [super init];
    if (self)
    {
        [self setReps:10];
        [self setSets:4];
        [self setLiftWeight:50];
        [self setCaloriesBurned:0];
    }
    return self;
}

-(int)calculateCaloriesBurned
{
    [self setCaloriesBurned:( (reps * sets) * ( (gravity * liftWeight)/1000) ) ];
//    NSString *calBurnedMsg = [[NSString alloc] initWithFormat:@"This workout burned an estimated %i calories.", self.caloriesBurned];
//    return calBurnedMsg;
    return self.caloriesBurned;
    
}

@end
