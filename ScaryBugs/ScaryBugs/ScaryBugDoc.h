//
//  ScaryBugDoc.h
//  ScaryBugs
//
//  Created by Hisashi on 2016-08-04.
//  Copyright © 2016 Hisashi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class ScaryBugData;

@interface ScaryBugDoc : NSObject

@property (nonatomic, strong) ScaryBugData *data;
@property (nonatomic, strong) UIImage *thumnailImage;
@property (nonatomic, strong) UIImage *fullImage;

- (id)initWithTitle:(NSString *)title rating:(float)rating thumnailImage:(UIImage *)thumnailImage fullImage:(UIImage *)fullImage;

@end
