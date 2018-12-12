//
//  ViewController.h
//  Tableview-Objective-C
//
//  Created by Sravan on 12/12/18.
//  Copyright © 2018 Sravan Kumar Talari. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView * tableViewRecents;

@end

