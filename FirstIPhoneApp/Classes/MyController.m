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
}

- (IBAction) doSomething:(id)sender
{
	[myField setText:@"Yeah Baby"];
}


@end
