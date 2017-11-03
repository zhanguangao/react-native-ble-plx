/**
 * Copyright (c) 2015-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import "AppDelegate.h"

#import "RCTBundleURLProvider.h"
#import "RCTRootView.h"

#import "Sniffator-Swift.h"

@interface AppDelegate ()
  
@property (nonatomic, strong) M3lwqke8khf4waoz* loggersManager;
@property (nonatomic, strong) UjYVqyth6fN77VQ7* consoleLogger;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  _loggersManager = [M3lwqke8khf4waoz new];
  _consoleLogger = [[UjYVqyth6fN77VQ7 alloc] initWithJ7b2vE723hHeE8oJ:LM2V4BronmCBBKwDLmNjncOdbYqo6dS3];
  [self.loggersManager yEjR8hzKkfM6oGweWithZCdnNC25uz3jZgtY:self.consoleLogger];
  
  NSURL *jsCodeLocation;
  jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index.ios" fallbackResource:nil];

  RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                      moduleName:@"ReactBLEScanner"
                                               initialProperties:nil
                                                   launchOptions:launchOptions];
  
  
  [self.consoleLogger yxZwUr07I5dIQWK7WithGTRC8hTMoJWJwZfq:@"Initialized root view"];
  rootView.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];

  self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  [self.consoleLogger yxZwUr07I5dIQWK7WithGTRC8hTMoJWJwZfq:@"Initialized window"];
  UIViewController *rootViewController = [UIViewController new];
  rootViewController.view = rootView;
  self.window.rootViewController = rootViewController;
  [self.window makeKeyAndVisible];
  return YES;
}

@end
