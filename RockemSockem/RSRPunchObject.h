//
//  RSRPunchObject.h
//  RockemSockem
//
//  Created by Kit Cischke on 3/19/15.
//  Copyright (c) 2015 d4r3llo5. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface RSRPunchObject : NSObject

@property (nonatomic) float x;
@property (nonatomic) float y;
@property (nonatomic) CGPoint center;

- (instancetype) initWithCoordinatesX: (float) x AndY: (float) y;

- (CGPoint) getCenter;
- (float) getX;
- (float) getY;
@end
