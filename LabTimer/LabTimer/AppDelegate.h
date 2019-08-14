//
//  AppDelegate.h
//  LabTimer
//
//  Created by Ben Shapiro on 7/31/19.
//  Copyright (c) 2019. MIT Licence.
//

#import <Cocoa/Cocoa.h>
#import "MainView.h"
#import "MainWindow.h"
#import "NSClickableTextField.h"
#import "ControlArrows.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet NSMenu *mainMenu;
@property (retain) IBOutlet MainWindow *window;
@property (atomic, retain) MainView *mainView;
@property (weak) IBOutlet NSClickableTextField *minTF;
@property (weak) IBOutlet NSClickableTextField *secTF;

@property (weak) IBOutlet ControlArrows *secControlArrow;
@property (weak) IBOutlet ControlArrows *minControlArrow;

- (void)doubleClick:(id)sender;
- (void)changeSec:(id)sender;

@end
