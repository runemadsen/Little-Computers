//
//  MyController.h
//  FirstCocoaApp
//
//  Created by Rune Madsen on 2/10/10.
//  Copyright 2010 New York University. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface MyController : NSObject 
{
	IBOutlet NSTextField* myField;
	IBOutlet NSButton* myButton;
}

- (IBAction) doSomething:(id)sender;

@end
