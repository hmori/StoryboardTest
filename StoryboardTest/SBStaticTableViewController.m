//
//  SBStaticTableViewController.m
//  StoryboardTest
//
//  Created by Hidetoshi Mori on 12/06/22.
//  Copyright (c) 2012年 hmori.jp. All rights reserved.
//

#import "SBStaticTableViewController.h"
#import "SBDispatcherCell.h"

@interface SBStaticTableViewController ()

@end

@implementation SBStaticTableViewController

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    SBDispatcherCell *cell = (SBDispatcherCell *)[tableView cellForRowAtIndexPath:indexPath];
    
    @try {
        [self performSegueWithIdentifier:cell.segueIdentifier sender:self];
    }
    @catch (NSException *exception) {
        NSLog(@"exception=%@", [exception description]);
    }
    @finally {
    }
}

@end
