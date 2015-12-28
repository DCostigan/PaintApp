//
//  PassingDataAppDelegate.h
//  PassingData
//
//  Created by Krzysiek on 09-05-02.
//  Copyright www.chris-software.com 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "login.h"

@class login;
@interface PassingDataAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

