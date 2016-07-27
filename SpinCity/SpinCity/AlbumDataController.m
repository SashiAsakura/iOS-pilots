//
//  AlbumDataController.m
//  SpinCity
//
//  Created by Hisashi on 2016-07-18.
//  Copyright © 2016 Hisashi. All rights reserved.
//

#import "Album.h"
#import "AlbumDataController.h"

// by declaring methods and variables within property block in .m, we can
// make them private. This is an mitigation to "don't use private APIs"
@interface AlbumDataController ()
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
//    [self addAlbumWithTitle:@"Infected Splinter" artist:@"Boppin' Beavers" summary:@"Awesome album with a hint of Oak." price:9.99f locationInStore:@"Section F"];
//    [self addAlbumWithTitle:@"Hairy Eyeball" artist:@"Cyclops" summary:@"Summary text" price:8.99f locationInStore:@"Discount Rack"];
//    [self addAlbumWithTitle:@"Acid fog" artist:@"Josh and Chuk" summary:@"You should know this stuff" price:11.99f locationInStore:@"Section 9 3/4"];
    
    NSString *pathToAlbumPlist = [[NSBundle mainBundle] pathForResource:@"AlbumArray" ofType:@"plist"];
    NSArray *defaultAlbumPlist = [NSArray arrayWithContentsOfFile:pathToAlbumPlist];
    for (NSDictionary *albumInfo in defaultAlbumPlist) {
        [self addAlbumWithTitle:albumInfo[@"title"] artist:albumInfo[@"artist"] summary:albumInfo[@"summary"] price:[albumInfo[@"price"] floatValue] locationInStore:albumInfo[@"locationInStore"]];
    }
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
