//
//  AnimationViewController.h
//  Animation
//
//  Created by 子民 駱 on 8/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnimationViewController : UIViewController {
    UIImageView *imageView;
}


- (IBAction)doAnimation:(id)sender;
@property (nonatomic, retain) IBOutlet UIImageView *imageView;

@end
