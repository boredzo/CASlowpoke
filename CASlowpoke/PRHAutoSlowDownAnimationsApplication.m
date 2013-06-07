//
//  PRHAutoSlowDownAnimationsApplication.m
//  CASlowpoke
//
//  Created by Peter Hosey on 2013-06-07.
//  Copyright (c) 2013 Peter Hosey. All rights reserved.
//

#import "PRHAutoSlowDownAnimationsApplication.h"

@implementation PRHAutoSlowDownAnimationsApplication

- (void) sendEvent:(NSEvent *)event {
	bool shiftKeyDown = event.modifierFlags & NSShiftKeyMask;
	if (!shiftKeyDown) {
		return [super sendEvent:event];
	}

	[NSAnimationContext beginGrouping];

	NSAnimationContext *context = [NSAnimationContext currentContext];
	CGFloat savedDuration = context.duration;

	@try {
		context.duration = savedDuration * 10.0;

		[super sendEvent:event];
	}
	@finally {
		context.duration = savedDuration;

		[NSAnimationContext endGrouping];
	}
}

@end
