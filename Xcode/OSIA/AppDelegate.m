//
//  AppDelegate.m
//  OSIA
//
//  Created by dkhamsing on 7/22/16.
//  Copyright © 2016 dkhamsing. All rights reserved.
//

#import "AppDelegate.h"

#import "AppCoordinator.h"
@import ContentSquare;
@interface AppDelegate ()

@property (nonatomic, strong) AppCoordinator *appCoordinator;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [[ContentSquare sharedInstance] startWithProjectId:@"ProjectId"];
    UINavigationController *n = [[UINavigationController alloc] init];
    AppCoordinator *c = [[AppCoordinator alloc] initWithNavigationController:n];
    [c start];
    self.appCoordinator = c;
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = n;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
