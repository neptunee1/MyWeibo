//
//  AppDelegate.m
//  MyWeibo
//
//  Created by CKK on 15/10/9.
//  Copyright © 2015年 CKK. All rights reserved.
//

#import "AppDelegate.h"
#import "WeiboSDK.h"


@interface AppDelegate () <WeiboSDKDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    
    //开启微博调试
    [WeiboSDK enableDebugMode:YES];
    //注册应用程序
    [WeiboSDK registerApp:kAPPKey];
    
    
    return YES;
}


- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url {
    
    return [WeiboSDK handleOpenURL:url delegate:self];
}

- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation {
    
    
    return [WeiboSDK handleOpenURL:url delegate:self];
}


#pragma mark - WeiboSDK Delegate

//接受到请求
- (void)didReceiveWeiboRequest:(WBBaseRequest *)request {
    
    
}

//接受到响应
- (void)didReceiveWeiboResponse:(WBBaseResponse *)response {
    
    
    NSLog(@"response = %@", response);
}

@end
