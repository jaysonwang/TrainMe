//
//  Activty.m
//  TrainMe
//
//  Created by MacLovin on 5/17/13.
//  Copyright (c) 2013 Noble Parrot Software. All rights reserved.
//

@implementation Activity:NSObject
{
    char ACTIVITY_NAME;
}

-(void) setName: (char) Name
{
    ACTIVITY_NAME = Name;
}

-(char) getName
{
    return ACTIVITY_NAME;
}

@end
