//
//  FirstIPhoneAppAppDelegate.m
//  FirstIPhoneApp
//
//  Created by Rune Madsen on 2/11/10.
//  Copyright New York University 2010. All rights reserved.
//

#import "FirstIPhoneAppAppDelegate.h"

@implementation FirstIPhoneAppAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
