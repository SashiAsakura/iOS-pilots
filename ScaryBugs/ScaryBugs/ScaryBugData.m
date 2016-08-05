//
//  ScaryBugData.m
//  ScaryBugs
//
//  Created by Hisashi on 2016-08-04.
//  Copyright © 2016 Hisashi. All rights reserved.
//

#import "ScaryBugData.h"

@implementation ScaryBugData

- (id) initWithTitle:(NSString *)title rating:(float)rating {
    // always need to call superclass's initializer
    if (self = [super init]) {
        self.title = title;
        self.rating = rating;
    }
    
    return self;
}

@end
