//
//  ViewController.mm
//  Childview
//
//  Created by Bryan Smith on 1/22/14.
//  Copyright (c) 2014 Bryan Smith. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) CoronaViewController *coronaController;

@end

@implementation ViewController

- (void)viewDidLoad
{
	[super viewDidLoad];

	// Do any additional setup after loading the view, typically from a nib.
	_coronaController = [[[CoronaViewController alloc] init] autorelease];
	[self addChildViewController:_coronaController];

	CoronaView *coronaView = (CoronaView *)_coronaController.view;
	
	coronaView.frame = self.view.frame;

	[self.view addSubview:coronaView];

	// Transparent background
	coronaView.backgroundColor = [UIColor clearColor];
	coronaView.opaque = NO;

	[coronaView run];
}

- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
