//
//  Schedule.m
//  TrainMe
//
//  Created by MacLovin on 5/17/13.
//  Copyright (c) 2013 Noble Parrot Software. All rights reserved.
//

#import "Schedule.h"

@implementation Schedule:NSObject
{}
    
-(void) setTrainerName: (char) trainer
{ /* Set Trainer Name for Schedule */
    TRAINER = trainer;
}

-(char) getTrainerName
{ /*Get Trainer Name for Schedule */
    return TRAINER;
}

-(void) setClientName: (char) client
{ /* Set Client Name for Schedule */
    CLIENT = client;
}

-(char) getClientName
{ /* Get Client Name for Schedule */
    return CLIENT;
}

-(void) setDate: (NSArray*) date
{
    
}

-(NSArray*) getSchedule
{
    [self update];
    
    return CURRENT_SCHEDULE;
}

-(void) update
{
    CURRENT_SCHEDULE = SCHEDULE;
}

-(void) displaySchedule
{ /*Display current Schedule*/
    int position;
    position = 0;
    [self update];

    while(position < LAST_ACTIVITY_POSITION)
    {
        printf([[CURRENT_SCHEDULE objectAtIndex:position] getName]);
        position++;
    }
}

-(void) addActivity:(Activity*) anActivity atOrder:(int) order
{ /*Add new Exercise/Break/Run (Activity) to Schedule at position index*/
    
    int DESIRED_POSITION = order;
    Activity *tempActivity = anActivity;
    
    [SCHEDULE insertObject:tempActivity atIndex:DESIRED_POSITION];
    
    LAST_ACTIVITY_POSITION = [CURRENT_SCHEDULE count];
}

-(void) deleteActivityAtOrder:(int) order
{ /* Remove an Exercise/Break/Run (Activity) from Schedule at position index*/
    
    int ASSUMED_POSITION = order;
    Activity *targetActivity = SCHEDULE[ASSUMED_POSITION];
    char targetActivityName = [targetActivity getName];
    
    [SCHEDULE removeObjectAtIndex:ASSUMED_POSITION];
}

-(void) addActivity:(Activity*) newActivity
{
    [SCHEDULE addObject: newActivity];
}

@end
