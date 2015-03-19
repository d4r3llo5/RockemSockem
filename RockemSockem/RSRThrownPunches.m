//
//  RSRThrown.m
//  RockemSockem
//
//  Created by Kit Cischke on 3/19/15.
//  Copyright (c) 2015 d4r3llo5. All rights reserved.
//

#import "RSRThrownPunches.h"
#import "RSRPunchObject.h"

@implementation RSRThrownPunches

-(id) init
{
    self = [super init];
    if (self)
    {
        _circlesDrawn = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void) newPunchAtX: (float) x AndY: (float) y
{
    RSRPunchObject* punch;
    punch = [[RSRPunchObject alloc] initWithCoordinatesX:x AndY:y];
    
    if (!_circlesDrawn)         // Lazy instantiation
        _circlesDrawn = [[NSMutableArray alloc] init];

    [_circlesDrawn addObject:punch];
}

- (void) deletePunchAtX: (float) x andY: (float) y
{
    for (RSRPunchObject* punch in _circlesDrawn)
    {
        if ( ([punch getX] == x) && ([punch getY] == y) ) {
            [_circlesDrawn removeObject:punch];
            break;
        }
    }
}

- (void) listAllPunches
{
    for (RSRPunchObject* punch in _circlesDrawn)
    {
        NSLog(@"\tPunch found: (%f, %f)", [punch getX], [punch getY]);
    }
}

- (NSArray*) getAllPunches
{
    return [NSArray arrayWithArray:_circlesDrawn];
}

@end
