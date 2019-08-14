//
//  ControlArrows.m
//  LabTimer
//
//  Created by Ben Shapiro on 7/31/19.
//  Copyright (c) 2019. MIT Licence.
//

#import "ControlArrows.h"
#import <QuartzCore/QuartzCore.h>

@implementation ControlArrows

NSTrackingArea *trackArea;

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    CGSize size = self.frame.size;
    
    [[NSColor blackColor] set];
    
    int arrowSize = 8;
    int arrowSizeX = 10;
    
    // Down arrow
    NSBezierPath *path = [NSBezierPath bezierPath];
    [path moveToPoint:NSMakePoint(size.width/2, 0)];
    [path lineToPoint:NSMakePoint(size.width/2 -arrowSizeX, arrowSize)];
    [path lineToPoint:NSMakePoint(size.width/2 +arrowSizeX, arrowSize)];
    [path closePath];
    
    // Up arrow
    [path moveToPoint:NSMakePoint(size.width/2, size.height)];
    [path lineToPoint:NSMakePoint(size.width/2 -arrowSizeX, size.height -arrowSize)];
    [path lineToPoint:NSMakePoint(size.width/2 +arrowSizeX, size.height -arrowSize)];
    [path closePath];
    
    [path stroke];
    [path fill];
	
    // Drawing code here.
	[super drawRect:dirtyRect];
}

@end
