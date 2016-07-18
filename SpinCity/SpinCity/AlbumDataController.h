//
//  AlbumDataController.h
//  SpinCity
//
//  Created by Hisashi on 2016-07-18.
//  Copyright © 2016 Hisashi. All rights reserved.
//

#import <Foundation/Foundation.h>

// forward declaration of Album class
@class Album;

@interface AlbumDataController : NSObject

-(NSUInteger)albumCount;
-(Album *)albumAtIndex:(NSInteger)index;
-(void)addAlbumWithTitle:(NSString *)title artist:(NSString *)artist summary: (NSString *)summary price: (float)price locationInStore:(NSString*)locationInStore;

@end
