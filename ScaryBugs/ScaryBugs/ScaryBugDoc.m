//
//  ScaryBugDoc.m
//  ScaryBugs
//
//  Created by Hisashi on 2016-08-04.
//  Copyright © 2016 Hisashi. All rights reserved.
//

#import "ScaryBugDoc.h"
#import "ScaryBugData.h"

@implementation ScaryBugDoc

-(id)initWithTitle:(NSString *)title rating:(float)rating thumnailImage:(UIImage *)thumnailImage fullImage:(UIImage *)fullImage {
    if (self = [self init]) {
        self.data = [[ScaryBugData alloc] initWithTitle:title rating:rating];
        self.thumnailImage = thumnailImage;
        self.fullImage = fullImage;
    }
    
    return self;
}

@end
