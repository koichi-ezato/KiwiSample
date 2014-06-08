//
//  KWSAppDelegate.m
//  KiwiSample
//
//  Created by suwa.yuki on 3/6/14.
//  Copyright (c) 2014 suwa.yuki. All rights reserved.
//


#import "KWSAppDelegate.h"


@implementation KWSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // 各エラーをハンドリング
    NSSetUncaughtExceptionHandler(&HandleExceptions);
    struct sigaction newSignalAction;
    memset(&newSignalAction, 0, sizeof(newSignalAction));
    newSignalAction.sa_handler = &SignalHandler;
    sigaction(SIGABRT, &newSignalAction, NULL);
    sigaction(SIGILL, &newSignalAction, NULL);
    sigaction(SIGBUS, &newSignalAction, NULL);
    
    // TestFlight SDKの開始
    #ifdef DEBUG
    [TestFlight takeOff:@"8eec123f-1311-4666-b753-35161a02004b"];
    #endif
    
    NSLog(@"application:didFinishLaunchingWithOptions:");
    
    return YES;
}
							
void HandleExceptions(NSException *exception) {
    NSLog(@"This is where we save the application data during a exception");
}

void SignalHandler(int sig) {
    NSLog(@"This is where we save the application data during a signal");
}

@end
