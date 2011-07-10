//
//  SDWebImageProgressTestViewController.m
//  SDWebImageProgressTest
//
//  Created by David Boyes on 10/07/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SDWebImageProgressTestViewController.h"
#import "UIImageView+WebCache.h"

@implementation SDWebImageProgressTestViewController

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    [imageView setImageWithURL:[NSURL URLWithString:@"http://lovingthebigisland.files.wordpress.com/2009/03/kohala-mountain-road-boulder-and-field.jpg"]];
    [self.view addSubview:imageView];
    
    [imageView release];
    
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
