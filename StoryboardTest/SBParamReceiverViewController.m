//
//  SBParamReceiverViewController.m
//  StoryboardTest
//
//  Created by Hidetoshi Mori on 12/06/22.
//  Copyright (c) 2012年 hmori.jp. All rights reserved.
//

#import "SBParamReceiverViewController.h"

@interface SBParamReceiverViewController ()
@property (weak, nonatomic) IBOutlet UILabel *paramLabel;

@end

@implementation SBParamReceiverViewController
@synthesize paramLabel = _paramLabel;
@synthesize param = _param;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    self.paramLabel.text = _param;
}

- (void)viewDidUnload
{
    [self setParamLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)closeAction:(UIButton *)sender {
    [self dismissModalViewControllerAnimated:YES];
}

@end
