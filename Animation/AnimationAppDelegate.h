//
//  AnimationAppDelegate.h
//  Animation
//
//  Created by 子民 駱 on 8/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AnimationViewController;

@interface AnimationAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet AnimationViewController *viewController;

@end
