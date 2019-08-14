//
//  MainWindow.m
//  LabTimer
//
//  Created by Ben Shapiro on 7/31/19.
//  Copyright (c) 2019. MIT Licence.
//

#import "MainWindow.h"
#import "Constants.h"

@implementation MainWindow

- (void)keyUp:(NSEvent *)theEvent
{
    [[NSNotificationCenter defaultCenter] postNotificationName:kNotification_doubleClick object:nil];
}

- (BOOL)canBecomeKeyWindow
{
    return YES;
}

@end
