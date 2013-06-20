//
//  objc_async.h
//  objc-async
//
//  Created by Rasmus Styrk on 20/06/13.
//  Copyright (c) 2013 Appværk. All rights reserved.
//

#import <Foundation/Foundation.h>

/** Aync Task Block
 A block that does some work
*/
typedef void (^AsyncTaskBlock)();

@interface objc_async : NSObject

#pragma mark - Queues

/** High priority queue
 Gets an high priority queue
*/
+ (dispatch_queue_t) highPriorityQueue;

/** Main queue
 Gets main queue (main thread/gui thread) queue
*/
+ (dispatch_queue_t) mainQueue;

#pragma mark - Async tasks

/** Aync Task
 Executes an async task on a background thread
 Uses an HIGH priority queue
*/
+ (void) asyncTask:(AsyncTaskBlock)block;

/** Async Task on Main Thread
 Executes an async task on main thread
*/
+ (void) asyncTaskOnMainThread:(AsyncTaskBlock)block;

@end
