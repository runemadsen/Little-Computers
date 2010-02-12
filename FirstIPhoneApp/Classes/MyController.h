#import <Foundation/Foundation.h>


@interface MyController : NSObject 
{
	IBOutlet UIButton* myButton;
	IBOutlet UITextField* myField;
}

- (IBAction) doSomething:(id)sender;

@end
