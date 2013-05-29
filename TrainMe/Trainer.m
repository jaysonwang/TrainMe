//
//  Trainer.m
//  TrainMe
//
//  Created by MacLovin on 5/17/13.
//  Copyright (c) 2013 Noble Parrot Software. All rights reserved.
//

#import "Trainer.h"
#import "Schedule.h"

@implementation Trainer
{
    
}

-(void) addToSchedule:(Activity *)activity
{
    [MY_SCHEDULE addActivity:activity];
}

-(void) addToSchedule:(Activity *)activity atOrder: (int) index
{
    [MY_SCHEDULE addActivity:activity atOrder: index];
}

-(void) deleteFromSchedule:(int) index
{
    [MY_SCHEDULE deleteActivityAtOrder: index];
}

-(void) setTrainerName:(char)trainer
{
    [MY_SCHEDULE setTrainerName:trainer];
}

@end
