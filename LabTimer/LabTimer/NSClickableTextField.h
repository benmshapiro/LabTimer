//
//  NSClickableTextField.h
//  LabTimer
//
// Created by Ben Shapiro on 8/2/19.
//  Copyright (c) 2019. MIT Licence.
//

#import <Cocoa/Cocoa.h>

@interface NSClickableTextField : NSTextField
@property (nonatomic, retain) NSString *notificationName;
@property (nonatomic, retain) NSString *hoverNotificationName;
@end
