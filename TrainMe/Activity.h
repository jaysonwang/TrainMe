//
//  Activty.h
//  TrainMe
//
//  Created by MacLovin on 5/17/13.
//  Copyright (c) 2013 Noble Parrot Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Activity : NSMutableArray
{
    char ACTIVITY_NAME;
}

-(void) setName;
-(char) getName;

@end
