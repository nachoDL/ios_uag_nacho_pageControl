//
//  ViewController.m
//  practica 6
//
//  Created by LabMovi01 on 11/03/14.
//  Copyright (c) 2014 LabMovi01. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width * 10, self.scrollView.frame.size.height);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIScrollView Delegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{

    CGFloat pageWidth = self.scrollView.frame.size.width;
    int page = floor((self.scrollView.contentOffset.x - page / 2)/ pageWidth) + 1;
    self.pegecontrol.currentPage = page;
    NSLog(@"page = %d", page);
}



@end
