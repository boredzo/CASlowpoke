//
//  PRHAppDelegate.h
//  CASlowpoke
//
//  Created by Peter Hosey on 2013-06-07.
//  Copyright (c) 2013 Peter Hosey. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PRHAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSButton *snowman;
- (IBAction)moveSnowman:(id)sender;

@end
