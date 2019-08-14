//
//  NSClickableTextField.m
//  LabTimer
//
//  Created by Ben Shapiro on 8/2/19.
//  Copyright (c) 2019. MIT Licence.
//

#import "NSClickableTextField.h"

@implementation NSClickableTextField
{
    NSTrackingArea *trackArea;
}

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        if (!self.notificationName) {
            self.notificationName = nil;
        }
        // Initialization code here.
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
	[super drawRect:dirtyRect];
	
    // Drawing code here.
}

- (void)scrollWheel:(NSEvent *)theEvent
{
    if (self.notificationName) {
        [[NSNotificationCenter defaultCenter] postNotificationName:self.notificationName
                                                            object:nil
                                                          userInfo:@{ @"deltaY" : @(theEvent.deltaY * (theEvent.isDirectionInvertedFromDevice?-1:1)) }];
    }
}

- (void)mouseEntered:(NSEvent *)theEvent
{
    if (self.hoverNotificationName) {
        [[NSNotificationCenter defaultCenter] postNotificationName:self.hoverNotificationName
                                                            object:nil
                                                          userInfo:@{ @"type" : @"enter" }];
    }
}

- (void)mouseExited:(NSEvent *)theEvent
{
    if (self.hoverNotificationName) {
        [[NSNotificationCenter defaultCenter] postNotificationName:self.hoverNotificationName
                                                            object:nil
                                                          userInfo:@{ @"type" : @"exit" }];
    }
}

- (void)updateTrackingAreas
{
    if (trackArea!=nil) {
        [self removeTrackingArea:trackArea];
    }
    
    int opts = NSTrackingMouseEnteredAndExited | NSTrackingActiveAlways;
    trackArea = [[NSTrackingArea alloc] initWithRect:[self bounds]
                                             options:opts
                                               owner:self
                                            userInfo:nil];
    
    [self addTrackingArea:trackArea];
    
}
@end
