//
//  FirstIPhoneAppAppDelegate.h
//  FirstIPhoneApp
//
//  Created by Rune Madsen on 2/11/10.
//  Copyright New York University 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstIPhoneAppAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

