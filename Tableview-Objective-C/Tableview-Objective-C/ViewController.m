//
//  ViewController.m
//  Tableview-Objective-C
//
//  Created by Sravan on 12/12/18.
//  Copyright © 2018 Sravan Kumar Talari. All rights reserved.
//

#import "ViewController.h"

#import "RecentCell.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    self.tableViewRecents.dataSource = self;
    self.tableViewRecents.delegate = self;
    
    [super viewDidLoad];
}


- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell0 = [tableView dequeueReusableCellWithIdentifier:@"recent"];
    RecentCell * cell = [tableView dequeueReusableCellWithIdentifier:@"recentCell"];
    if (indexPath.row == 0)
    {
        if (cell0 == nil)
        {
            cell0 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"recent"];
        }
        
        cell0.textLabel.text = @"Recents";
        [cell0.textLabel setFont:[UIFont boldSystemFontOfSize:25]];
        
        return cell0;
    }else
    {
        if (!cell)
        {
            [tableView registerNib:[UINib nibWithNibName:@"RecentCell" bundle:nil] forCellReuseIdentifier:@"recentCell"];
            cell = [tableView dequeueReusableCellWithIdentifier:@"recentCell"];
        }
        cell.lblName.text = @"Jon doe";
        cell.lblName.font = [UIFont boldSystemFontOfSize:15];
        cell.lblTime.text = @"Yesterday";
        cell.lblCallerName.text = @"centVoice";
        return cell;
    }
    
}
@end
