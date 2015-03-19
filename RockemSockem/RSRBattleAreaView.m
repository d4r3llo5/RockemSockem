//
//  RSRBattleArea.m
//  RockemSockem
//
//  Created by Kit Cischke on 3/19/15.
//  Copyright (c) 2015 d4r3llo5. All rights reserved.
//

#import "RSRBattleAreaView.h"

@interface RSRBattleAreaView()

- (UIBezierPath*)createEllipseAtX: (float) x AtY: (float) y;
- (void) drawPunch;
@end

@implementation RSRBattleAreaView

- (void) drawRect:(CGRect) rect
{
    [self drawPunch];
}

- (void) drawPunch
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIBezierPath* circle;
    circle = [self createEllipseAtX:200 AtY:200];
    circle.lineWidth = 5;
    
    
    // Fill the path before stroking it so that the fill
    // color does not obscure the stroked line.
    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
    
    [circle fill];
    [circle stroke];
}

- (UIBezierPath*)createEllipseAtX: (float) x AtY: (float) y
{
    CGPoint point = CGPointMake(x, y);
    UIBezierPath* ellipse = [UIBezierPath bezierPathWithArcCenter:point
                                                           radius:10
                                                       startAngle:0
                                                         endAngle:(2 * M_PI)
                                                        clockwise:YES];
    return ellipse;
}


@end
