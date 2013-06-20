//
//  objc_async.h
//  objc-async
//
//  Created by Rasmus Styrk on 20/06/13.
//  Copyright (c) 2013 Appværk. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^AsyncCompletionBlock)();

@interface objc_async : NSObject

/**
 * Executes an async task on a background thread
 *
 */
+ (void) asyncTask:(AsyncCompletionBlock)block;

/**
 * Executes an async task on main thread
 *
 */
+ (void) asyncTaskOnMainThread:(AsyncCompletionBlock)block;

@end
