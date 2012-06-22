//
//  SBPushFlushSegue.m
//  StoryboardTest
//
//  Created by Hidetoshi Mori on 12/06/22.
//  Copyright (c) 2012年 hmori.jp. All rights reserved.
//

#import "SBPushFlushSegue.h"

@implementation SBPushFlushSegue

- (void)perform {
    NSLog(@"SBPushFlushSegue#perform identifier=%@", self.identifier);
    
    __block __weak UIViewController *src = self.sourceViewController;
    __block __weak UIViewController *dest = self.destinationViewController;
    
    [src.navigationController pushViewController:dest animated:YES];

    dest.view.alpha = 0.0f;
    [UIView transitionWithView:dest.view 
                      duration:1.0f 
                       options:UIViewAnimationCurveEaseInOut 
                    animations:^{
                        dest.view.alpha = 1.0f;
                    } 
                    completion:^(BOOL finished) {
                    }];
}

@end
