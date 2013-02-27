//
//  ViewController.m
//  BundleTest
//
//  Created by takashi nakamura on 13/02/25.
//  Copyright (c) 2013年 takashi nakamura. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    // Bundleの方から読み込む。青い画像の方の test.png が読み込まれる
    NSString* imagePath = [NSString stringWithFormat:@"%@/test.png",
                          [[NSBundle mainBundle] pathForResource:@"test" ofType:@"bundle"]];
    NSLog(@"%@", imagePath);
    UIImage *image = [[UIImage alloc] initWithContentsOfFile:imagePath];
//    UIImage *image = [UIImage imageNamed:@"test.png"]; // よく有る読み込み方。赤い画像の方の test.png が読み込まれる

    UIImageView *imageView = [[UIImageView alloc] init];
    [imageView setFrame:CGRectMake(50.0, 50.0, (float)image.size.width, (float)image.size.height)];
    [imageView setImage:image];
    [self.view addSubview:imageView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
