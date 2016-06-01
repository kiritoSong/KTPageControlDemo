//
//  ViewController.m
//  KTPageControlDemo
//
//  Created by kirito_song on 16/6/1.
//  Copyright © 2016年 kirito_song. All rights reserved.
//

#import "ViewController.h"
#import "KTPageControl.h"


@interface ViewController ()
@property (strong,nonatomic) KTPageControl *pageControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.pageControl];
    
}

- (KTPageControl *)pageControl
{
    if (_pageControl == nil) {
        
        _pageControl = [[KTPageControl alloc] init];
        _pageControl.frame =CGRectMake(self.view.frame.size.width/2-50, 70, 100, 10);
        
        
        //有图片显示图片、没图片则显示设置颜色
        _pageControl.pageIndicatorTintColor =[UIColor yellowColor];
        _pageControl.currentPageIndicatorTintColor = [UIColor blueColor];
        
        _pageControl.currentImage =[UIImage imageNamed:@"detail_tupianlunbo_suiji"];
//        _pageControl.defaultImage =[UIImage imageNamed:@"detail_piclunbounselec_suiji"];
        
        //设置pageSize以设置为准、否则以图片大小为准、图片也没有默认7*7...
        _pageControl.pageSize = CGSizeMake(12, 12);
        
        
        _pageControl.numberOfPages = 5;
        _pageControl.currentPage = 0;

        
    }
    return _pageControl;
}

- (IBAction)stepper:(UIStepper *)sender {
    self.pageControl.currentPage = sender.value;
//    NSLog(@"%f", sender.value);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
