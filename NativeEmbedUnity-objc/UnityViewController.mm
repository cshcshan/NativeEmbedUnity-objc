//
//  UnityViewController.m
//  NativeEmbedUnity-objc
//
//  Created by Han Chen on 26/4/2016.
//  Copyright © 2016年 Han Chen. All rights reserved.
//

#import "UnityViewController.h"
#import "UI/UnityView.h"

@interface UnityViewController ()

@end

@implementation UnityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  
  [self.view addSubview:GetAppController().unityView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
