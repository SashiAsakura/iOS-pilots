//
//  DetailViewController.h
//  SpinCity
//
//  Created by Hisashi on 2016-07-13.
//  Copyright © 2016 Hisashi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

