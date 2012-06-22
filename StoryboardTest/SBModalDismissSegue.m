//
//  SBModalDismissSegue.m
//  StoryboardTest
//
//  Created by Hidetoshi Mori on 12/06/22.
//  Copyright (c) 2012年 hmori.jp. All rights reserved.
//

#import "SBModalDismissSegue.h"

@implementation SBModalDismissSegue

- (void)perform {
    NSLog(@"SBModalDismissSegue#perform identifier=%@", self.identifier);
    
    __block __weak UIViewController *src = self.sourceViewController;
    __block __weak UIViewController *dest = self.destinationViewController;
    
    [src presentViewController:dest 
                      animated:YES 
                    completion:^{
                        [dest dismissModalViewControllerAnimated:YES];
                    }];
}

@end
