//
//  ViewController.m
//  ImageViewWithText
//
//  Created by JUSTIN RUSHING on 4/16/13.
//  Copyright (c) 2013 Justin Rushing. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ExampleImage"]];
    imageView.frame = CGRectMake(0, 0, 320, 160);
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 5, 300, 40)];
    label.text = @"Some Example Text";
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = [UIColor clearColor];
    
    [imageView addSubview:label];
    
    [self.view addSubview:imageView];
    
    UIGraphicsBeginImageContextWithOptions(imageView.bounds.size, NO, 0.0); //retina res
    [imageView.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    UIImageView *imageView2 = [[UIImageView alloc] initWithImage:image];
    imageView2.frame = CGRectMake(80, 240, 160, 80);
    [self.view addSubview:imageView2];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
