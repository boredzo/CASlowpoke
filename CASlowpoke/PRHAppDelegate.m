//
//  PRHAppDelegate.m
//  CASlowpoke
//
//  Created by Peter Hosey on 2013-06-07.
//  Copyright (c) 2013 Peter Hosey. All rights reserved.
//

#import "PRHAppDelegate.h"

@implementation PRHAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	// Insert code here to initialize your application
}

- (IBAction)moveSnowman:(id)sender {
	NSRect snowmanFrame = self.snowman.frame;
	NSRect containerFrame = self.snowman.superview.frame;

	CGFloat gutter = NSHeight(containerFrame) - NSMaxY(snowmanFrame);

	if (snowmanFrame.origin.x <= NSWidth(snowmanFrame)) {
		snowmanFrame.origin.x = (NSWidth(containerFrame) - gutter) - NSWidth(snowmanFrame);
	} else {
		snowmanFrame.origin.x = gutter;
	}

	[NSAnimationContext runAnimationGroup:^(NSAnimationContext *context) {
		NSUInteger modifiers = [[NSApp currentEvent] modifierFlags];
		if (modifiers & NSShiftKeyMask) {
			context.duration *= 10.0;
		}
		[[self.snowman animator] setFrame:snowmanFrame];
	} completionHandler:^{

	}];
}

@end
