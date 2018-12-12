//
//  RecentCell.h
//  Tableview-Objective-C
//
//  Created by Sravan on 12/12/18.
//  Copyright © 2018 Sravan Kumar Talari. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RecentCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblCallerName;
@property (weak, nonatomic) IBOutlet UILabel *lblTime;

@end

NS_ASSUME_NONNULL_END
