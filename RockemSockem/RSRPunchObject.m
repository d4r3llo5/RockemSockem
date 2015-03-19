//
//  RSRPunchObject.m
//  RockemSockem
//
//  Created by Kit Cischke on 3/19/15.
//  Copyright (c) 2015 d4r3llo5. All rights reserved.
//

#import "RSRPunchObject.h"

@implementation RSRPunchObject

- (instancetype) init
{
    self = [super init];
    return self;
}

- (instancetype) initWithCoordinatesX: (float) x AndY: (float) y
{
    self = [super init];
    if (self) {
        _center = CGPointMake(x, y);
        _x = x;
        _y = y;
    }
    
    return self;
}

- (CGPoint) getCenter
{
    return _center;
}

- (float) getX
{
    return _x;
}

- (float) getY
{
    return _y;
}


@end
