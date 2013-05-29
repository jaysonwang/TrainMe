//
//  Trainer.h
//  TrainMe
//
//  Created by MacLovin on 5/17/13.
//  Copyright (c) 2013 Noble Parrot Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "User.h"
#import "Schedule.h"

@interface Trainer:User
{
    char TRAINER_NAME;
}

-(void) setTrainerName: (char) trainer;

@end
