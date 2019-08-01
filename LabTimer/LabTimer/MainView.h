//
//  MainView.h
//  LabTimer
//
// Created by Ben Shapiro on 7/31/19.
//  Copyright (c) 2019. MIT Licence.
//

#import <Cocoa/Cocoa.h>

@interface MainView : NSView
@property (weak) IBOutlet NSTextField *sec;
@property (weak) IBOutlet NSTextField *min;
@property (weak) IBOutlet NSTextFieldCell *textSec;
@property (weak) IBOutlet NSTextFieldCell *textMin;

@end
