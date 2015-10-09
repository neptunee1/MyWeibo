//
//  ViewController.m
//  MyWeibo
//
//  Created by CKK on 15/10/9.
//  Copyright © 2015年 CKK. All rights reserved.
//

#import "ViewController.h"
#import "WeiboSDK.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)oauterAction:(id)sender {
    
    WBAuthorizeRequest *request = [WBAuthorizeRequest request];
    request.redirectURI = kRedirectURI;
    request.scope = @"all";
    
    //可以不设置
//    request.userInfo = @{@"SSO_From": @"ViewController",
//                         @"Other_Info_1": [NSNumber numberWithInt:123],
//                         @"Other_Info_2": @[@"obj1", @"obj2"],
//                         @"Other_Info_3": @{@"key1": @"obj1", @"key2": @"obj2"}};
    
    [WeiboSDK sendRequest:request];

    
}

@end
