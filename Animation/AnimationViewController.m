//
//  AnimationViewController.m
//  Animation
//
//  Created by 子民 駱 on 8/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "AnimationViewController.h"

@implementation AnimationViewController
@synthesize imageView;

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [self setImageView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)doAnimation:(id)sender {
    self.imageView.alpha = 1.0;
    self.imageView.transform = CGAffineTransformMakeScale(1.0, 1.0);
    
    [UIView animateWithDuration:5.0
                     animations:^{
                         self.imageView.alpha = 0.01;
                         self.imageView.transform = CGAffineTransformMakeScale(0.1, 0.1);
                         self.imageView.transform = CGAffineTransformMakeRotation(M_PI);
                         self.imageView.center = CGPointMake(140, 200);
                     }
    ];
}

- (void)dealloc {
    [imageView release];
    [super dealloc];
}
@end
