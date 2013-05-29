//
//  User.h
//  TrainMe
//
//  Created by MacLovin on 5/17/13.
//  Copyright (c) 2013 Noble Parrot Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Schedule.h"

@interface User : NSObject
{
    char Username;
    Schedule *MY_SCHEDULE;
}

-(void) addToSchedule: (Activity*) activity;
-(void) uploadSchedule;
-(void) downloadSchedule;

@end
