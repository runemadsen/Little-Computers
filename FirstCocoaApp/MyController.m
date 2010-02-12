//
//  MyController.m
//  FirstCocoaApp
//
//  Created by Rune Madsen on 2/10/10.
//  Copyright 2010 New York University. All rights reserved.
//

#import "MyController.h"


@implementation MyController

- (id) init
{
	self = [super init];
	
	if(self != nil)
	{
		NSLog(@"Initialize MyController");
		NSLog(@"myField: %@, myButton %@", myField, myButton);
	}
	
	return self;
}

- (void) awakeFromNib
{
	NSLog(@"Awake from NIB");
	NSLog(@"myField: %@, myButton %@", myField, myButton);
	
	[myField setDelegate:self];
}

- (IBAction) doSomething:(id)sender
{
	[myField setStringValue:@"Yeah Baby"];
}

- (BOOL) respondsToSelector:(SEL)asel
{
	NSLog(@"MyController respondsToSelector? %@", NSStringFromSelector(asel));
	return [super respondsToSelector:asel];
}

@end
