//
//  FirstCocoaAppAppDelegate.h
//  FirstCocoaApp
//
//  Created by Rune Madsen on 2/10/10.
//  Copyright 2010 New York University. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface FirstCocoaAppAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
