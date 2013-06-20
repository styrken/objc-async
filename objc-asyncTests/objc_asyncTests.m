//
//  objc_asyncTests.m
//  objc-asyncTests
//
//  Created by Rasmus Styrk on 20/06/13.
//  Copyright (c) 2013 Appværk. All rights reserved.
//

#import "objc_asyncTests.h"
#import "objc_async.h"

@implementation objc_asyncTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void) testAyncTask
{
	__block BOOL changeMe = false;
	[objc_async asyncTask:^{
		changeMe = true;
	}];

	int i = 0;
	while(i < 100000) { i++; }

	STAssertTrue(changeMe, @"ChangeMe did not change to true");
}

@end
