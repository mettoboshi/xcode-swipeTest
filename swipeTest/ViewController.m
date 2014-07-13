//
//  ViewController.m
//  swipeTest
//
//  Created by FUJITA YASUO on 2014/07/13.
//  Copyright (c) 2014年 FUJITA YASUO. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)swipeLeft:(id)sender;
- (IBAction)swipeRight:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *overView;
- (IBAction)pushButton:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *disableButton;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)swipeLeft:(id)sender {
  NSLog(@"SwipeLeft");
  CGPoint location = _overView.center;
  
  if (_overView.center.x > self.view.center.x) {
    location.x -= 120;
  }
  
  [UIView animateWithDuration:0.5 animations: ^{ _overView.center = location; }];

  _disableButton.enabled = NO;

}

- (IBAction)swipeRight:(id)sender {
  NSLog(@"SwipeRight");
  CGPoint location = _overView.center;
  if (_overView.center.x == super.view.center.x) {
    location.x += 120;
  }
  //  _overView.center = CGPointMake(200, 200);
  [UIView animateWithDuration:0.5 animations:^{_overView.center = location; }];
  
  _disableButton.enabled = YES;
  
}

- (IBAction)pushButton:(UIButton *)sender {
  NSLog(@"%@", [sender currentTitle]);
}

@end
