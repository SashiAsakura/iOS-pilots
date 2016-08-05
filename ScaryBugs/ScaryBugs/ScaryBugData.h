//
//  ScaryBugData.h
//  ScaryBugs
//
//  Created by Hisashi on 2016-08-04.
//  Copyright © 2016 Hisashi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScaryBugData : NSObject

@property (strong, nonatomic) NSString *title;
@property (assign, nonatomic) float rating;

- (id) initWithTitle:(NSString *)title rating:(float)rating;

@end
