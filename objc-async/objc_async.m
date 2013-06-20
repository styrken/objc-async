//
//  objc_async.m
//  objc-async
//
//  Created by Rasmus Styrk on 20/06/13.
//  Copyright (c) 2013 Appværk. All rights reserved.
//

#import "objc_async.h"

@implementation objc_async

+ (void) asyncTask:(AsyncCompletionBlock)block
{
	dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0);
	dispatch_async(queue, block);
}

+ (void) asyncTaskOnMainThread:(AsyncCompletionBlock)block
{
	dispatch_async(dispatch_get_main_queue(), block);
}

@end
