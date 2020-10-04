//
//  KKViewController.m
//  KKViewLayerSdk
//
//  Created by KKWONG1990 on 10/03/2020.
//  Copyright (c) 2020 KKWONG1990. All rights reserved.
//

#import "KKViewController.h"
#import <KKViewLayerSdk.h>
@interface KKViewController ()

@end

@implementation KKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}
- (IBAction)showAlertVC {
    KKAlertController * alertVC = KKAlertController.init(@"KKAlertController", @"KKAlertController是对UIAlertController的封装", UIAlertControllerStyleAlert)
    .addAction(@"取消", UIAlertActionStyleCancel, nil, nil)
    .addAction(@"显示加载", UIAlertActionStyleDefault, nil, ^(UIAlertAction * action) {
        NSLog(@"显示加载");
        KKHud.share.addHudIn(self.view).mode(MBProgressHUDModeIndeterminate).animated(YES).show();
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            KKHud.share.addHudIn(self.view).title(@"show title").mode(MBProgressHUDModeText).animated(YES).show().hideWithDelay(2.0);
        });
    });
    [self presentViewController:alertVC animated:YES completion:nil];
}



@end
