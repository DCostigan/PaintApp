//
//  PassingDataAppDelegate.m
//  PassingData
//
//  Created by Krzysiek on 09-05-02.
//  Copyright www.chris-software.com 2009. All rights reserved.
//

#import "PassingDataAppDelegate.h"

@implementation PassingDataAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
	login *viewController = [[login alloc] initWithNibName:@"login" bundle:[NSBundle mainBundle]];
	[window addSubview:[viewController view]];
    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
