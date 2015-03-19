//
//  RSRThrown.h
//  RockemSockem
//
//  Created by Kit Cischke on 3/19/15.
//  Copyright (c) 2015 d4r3llo5. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RSRThrownPunches : NSObject

@property (nonatomic, strong) NSMutableArray* circlesDrawn;
- (void) newPunchAtX: (float) x AndY: (float) y;
@end
