//
//  ViewController.m
//  NativeEmbedUnity-objc
//
//  Created by Han Chen on 26/4/2016.
//  Copyright © 2016年 Han Chen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UIButton *showUnityButton;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  self.view.backgroundColor = [UIColor grayColor];
  self.showUnityButton = [UIButton buttonWithType:UIButtonTypeSystem];
  [self.showUnityButton setTitle:@"SHOW UNITY" forState:UIControlStateNormal];
  self.showUnityButton.frame = CGRectMake(0, 0, 100, 44);
  self.showUnityButton.center = self.view.center;
  [self.view addSubview:self.showUnityButton];
  
  [self.showUnityButton addTarget:self action:@selector(showUnityButtonTouched:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)showUnityButtonTouched:(UIButton *)sender {
  NSLog(@"[ViewController] Show unity button touched");
  [(AppDelegate *)[UIApplication sharedApplication].delegate showUnityWindow];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
