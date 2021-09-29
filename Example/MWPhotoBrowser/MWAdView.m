//
//  MWAdView.m
//  MWPhotoBrowser_Example
//
//  Created by Andreas Krawczyk on 29.09.21.
//  Copyright © 2021 Michael Waterfall. All rights reserved.
//

#import "MWAdView.h"

@implementation MWAdView

- (void)loadUnderlyingImageAndNotify {
	NSLog(@"loadUnderlyingImageAndNotify");
	NSAssert([[NSThread currentThread] isMainThread], @"This method must be called on the main thread.");
	[self imageLoadingComplete];
}

- (void)performLoadUnderlyingImageAndNotify {
	NSLog(@"loadUnderlyingImageAndNotify");
}

- (void)unloadUnderlyingImage {
	NSLog(@"loadUnderlyingImageAndNotify");
}

- (UIImage*)underlyingImage {
	return [[UIImage alloc] init];
}

- (BOOL)emptyImage {
	return true;
}

- (void)imageLoadingComplete {
	 NSAssert([[NSThread currentThread] isMainThread], @"This method must be called on the main thread.");
	 // Notify on next run loop
	 [self performSelector:@selector(postCompleteNotification) withObject:nil afterDelay:0];
}

- (void)postCompleteNotification {
	 [[NSNotificationCenter defaultCenter] postNotificationName:MWPHOTO_LOADING_DID_END_NOTIFICATION
																		  object:self];
}

@end
