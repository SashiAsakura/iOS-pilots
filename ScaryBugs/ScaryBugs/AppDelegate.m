//
//  AppDelegate.m
//  ScaryBugs
//
//  Created by Hisashi on 2016-08-04.
//  Copyright © 2016 Hisashi. All rights reserved.
//

#import "AppDelegate.h"
#import "DetailViewController.h"
#import "MasterViewController.h"
#import "ScaryBugDoc.h"

@interface AppDelegate () <UISplitViewControllerDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    ScaryBugDoc *bug1 = [[ScaryBugDoc alloc] initWithTitle:@"Pikachu" rating:4 thumnailImage:[UIImage imageNamed:@"pikachu.png"] fullImage:[UIImage imageNamed:@"pikachu.png"]];
    ScaryBugDoc *bug2 = [[ScaryBugDoc alloc] initWithTitle:@"Eevee" rating:2 thumnailImage:[UIImage imageNamed:@"eevee.png"] fullImage:[UIImage imageNamed:@"eevee.png"]];
    NSMutableArray *bugs = [NSMutableArray arrayWithObjects:bug1, bug2, nil];
    
    UINavigationController *navigationController = (UINavigationController *) self.window.rootViewController;
    MasterViewController *masterViewController = [navigationController.viewControllers objectAtIndex:0];
    masterViewController.bugs = bugs;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark - Split view

- (BOOL)splitViewController:(UISplitViewController *)splitViewController collapseSecondaryViewController:(UIViewController *)secondaryViewController ontoPrimaryViewController:(UIViewController *)primaryViewController {
    if ([secondaryViewController isKindOfClass:[UINavigationController class]] && [[(UINavigationController *)secondaryViewController topViewController] isKindOfClass:[DetailViewController class]] && ([(DetailViewController *)[(UINavigationController *)secondaryViewController topViewController] detailItem] == nil)) {
        // Return YES to indicate that we have handled the collapse by doing nothing; the secondary controller will be discarded.
        return YES;
    } else {
        return NO;
    }
}

@end
