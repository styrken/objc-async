//
//  objc_async.m
//  objc-async
//
//  Created by Rasmus Styrk on 20/06/13.
//  Copyright (c) 2013 Appværk. All rights reserved.
//

#import "objc_async.h"

@implementation objc_async

+ (dispatch_queue_t) highPriorityQueue
{
	return dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0);
}

+ (dispatch_queue_t) mainQueue
{
	return dispatch_get_main_queue();
}

+ (void) asyncTask:(AsyncTaskBlock)block
{
	dispatch_async([self highPriorityQueue], block);
}

+ (void) asyncTaskOnMainThread:(AsyncTaskBlock)block
{
	dispatch_async([self mainQueue], block);
}

@end
