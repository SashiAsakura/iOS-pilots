//
//  AlbumDataController.m
//  SpinCity
//
//  Created by Hisashi on 2016-07-18.
//  Copyright © 2016 Hisashi. All rights reserved.
//

#import "Album.h"
#import "AlbumDataController.h"

@interface AlbumDataController ()

// by declaring methods and variables within property block in .m, we can
// make them private
 @property (nonatomic, readonly) NSMutableArray *albumList;

 - (void) initializeDefaultAlbums;
@end

@implementation AlbumDataController

- (id) init {
    self = [super init];
    
    if (self) {
        _albumList = [[NSMutableArray alloc] init];
        [self initializeDefaultAlbums];
        return self;
    }
    
    return nil;
}

- (void)initializeDefaultAlbums {
    [self addAlbumWithTitle:@"Infected Splinter" artist:@"Boppin' Beavers" summary:@"Awesome album with a hint of Oak." price:9.99f locationInStore:@"Section F"];
    [self addAlbumWithTitle:@"Hairy Eyeball" artist:@"Cyclops" summary:@"Summary text" price:8.99f locationInStore:@"Discount Rack"];
    [self addAlbumWithTitle:@"Acid fog" artist:@"Josh and Chuk" summary:@"You should know this stuff" price:11.99f locationInStore:@"Section 9 3/4"];
}

- (void)addAlbumWithTitle:(NSString *)title artist:(NSString *)artist summary:(NSString *)summary price:(float)price locationInStore:(NSString *)locationInStore {
    Album *newAlbum = [[Album alloc] initWithTitle:title artist:artist summary:summary price:price locationInStore:locationInStore];
    [self.albumList addObject:newAlbum];
}

- (NSUInteger)albumCount {
    return [self.albumList count];
}

- (Album *)albumAtIndex:(NSInteger)index {
    return [self.albumList objectAtIndex:index];
}

@end
