//
//  Schedule.h
//  TrainMe
//
//  Created by MacLovin on 5/17/13.
//  Copyright (c) 2013 Noble Parrot Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Activity.h"

@interface Schedule:NSObject
{
    char TRAINER;
    char CLIENT;
    int LAST_ACTIVITY_POSITION;
    NSMutableArray *SCHEDULE;
    int START_DATE;
    int END_DATE;
    NSArray *CURRENT_SCHEDULE;
}

-(void) setTrainerName: (char) trainer;
-(void) setClientName: (char) client;
-(void) setDate;
-(NSArray*) getSchedule;
-(void) update;
-(void) displaySchedule;
-(void) addActivity:(Activity*) anActivity atOrder:(int) order;
-(void) deleteActivityAtOrder:(int) order;
-(void) addActivity:(Activity*) newActivity;

@end
