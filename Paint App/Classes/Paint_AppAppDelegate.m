//
//  Paint_AppAppDelegate.m
//  Paint App
//
//  Created by albert renshaw on 4/12/10.
//  Copyright providence 2010. All rights reserved.
//

#import "Paint_AppAppDelegate.h"
#import "Paint_AppViewController.h"

@implementation Paint_AppAppDelegate

@synthesize window;
@synthesize viewController;



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
