//
//  RSRBattleArea.m
//  RockemSockem
//
//  Created by Kit Cischke on 3/19/15.
//  Copyright (c) 2015 d4r3llo5. All rights reserved.
//

#import "RSRBattleAreaView.h"

@interface RSRBattleAreaView()

- (UIBezierPath*)createEllipseAtPoint: (CGPoint) point;
- (void) drawPunches;
@end

@implementation RSRBattleAreaView

- (instancetype) init
{
    self = [super init];
    if (self)               // Init myself
    {
        if (!_punches)      // Init the punches array container
        {
            _punches = [[RSRThrownPunches alloc] init];
        }
    }
    return self;
}

- (void) drawRect:(CGRect) rect
{
    [self drawPunches];
}

/**
 draws all of the punches that are stored in the ThrownPunches object
 
 */
- (void) drawPunches
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    // Fill the path before stroking it so that the fill
    // color does not obscure the stroked line.
    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
    
    for (RSRPunchObject* punch in [_punches getAllPunches])
    {
        UIBezierPath* circle;
        circle = [self createEllipseAtPoint:[punch getCenter]];
        circle.lineWidth = 5;
        
        
        [circle fill];
        [circle stroke];
    }
}

- (UIBezierPath*)createEllipseAtPoint: (CGPoint) point
{
    UIBezierPath* ellipse = [UIBezierPath bezierPathWithArcCenter:point
                                                           radius:10
                                                       startAngle:0
                                                         endAngle:(2 * M_PI)
                                                        clockwise:YES];
    return ellipse;
}


@end
