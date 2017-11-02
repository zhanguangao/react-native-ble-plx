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
  
@property (nonatomic, strong) LoggersManager* loggersManager;
@property (nonatomic, strong) ConsoleLogger* consoleLogger;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  _loggersManager = [LoggersManager new];
  _consoleLogger = [[ConsoleLogger alloc] initWithLevel:LogLevelInfo];
  [self.loggersManager addWithLogger:self.consoleLogger];
  
  NSURL *jsCodeLocation;
  jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index.ios" fallbackResource:nil];

  RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                      moduleName:@"ReactBLEScanner"
                                               initialProperties:nil
                                                   launchOptions:launchOptions];
  
  
  [self.consoleLogger logWithMessage:@"Initialized root view" level:LogLevelInfo];
  rootView.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];

  self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  [self.consoleLogger logWithMessage:@"Initialized window" level:LogLevelInfo];
  UIViewController *rootViewController = [UIViewController new];
  rootViewController.view = rootView;
  self.window.rootViewController = rootViewController;
  [self.window makeKeyAndVisible];
  return YES;
}

@end
