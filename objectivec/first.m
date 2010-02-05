#import <Foundation/Foundation.h>

/* Your Class
____________________________________________ */

@interface YourClass : NSObject 
{
	NSString *theString;
}

- (NSString*) goodbye;

@end

@implementation YourClass

- (id) init 
{
	self = [super init];
	
	return self;
}

- (NSString*) goodbye
{
	
	theString = @"Goodbye, nice seeing you!";
	
	return theString;
}

- (void) dealloc
{
	[super dealloc];
}

@end

/* My Class
____________________________________________ */


@interface MyClass : NSObject 
{
	float myFloat;
	YourClass* friend;
}

- (void) hello;
- (void) setFriend: (YourClass*)newFriend;
- (YourClass*) getFriend;

@end

@implementation MyClass

- (id) init 
{
	self = [super init];
	
	if (self != nil) 
	{
		myFloat = 5.0;
	}
	
	return self;
}

- (void) hello
{
	NSLog(@"Hello I'm you first objective C program");
}
   
- (void) setFriend: (YourClass*)newFriend
{
	[friend release];
	
	friend = newFriend;
}

- (YourClass*) getFriend
{
	return friend;
}

- (void) dealloc
{
	[super dealloc];
}

@end

/* Main
 ____________________________________________ */

int main (int argc, const char * argv[]) 
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	MyClass *instance = [[MyClass alloc] init];
	[instance setFriend:[[YourClass alloc] init]];
	[instance hello];
	
	NSLog(@"This is my friend %@ and he says '%@'", [instance getFriend], [[instance getFriend] goodbye]);
	
	[pool release];
	
	return 0;
}
