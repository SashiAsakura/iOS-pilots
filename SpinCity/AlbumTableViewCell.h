//
//  AlbumTableViewCell.h
//  SpinCity
//
//  Created by Hisashi on 2016-07-18.
//  Copyright © 2016 Hisashi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlbumTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *albumTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *albumSummaryLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;

@end
