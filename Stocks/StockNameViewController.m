//
//  StockNameViewController.m
//  Stocks
//
//  Created by Matt Milner on 7/5/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "StockNameViewController.h"

@interface StockNameViewController () 

@end

@implementation StockNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) stockWasPressed:(NSString *)stockName{
    
    // Add animation controls
    
//    self.view.frame = CGRectMake(self.view.frame.origin.x + self.view.frame.size.width, self.view.frame.origin.y, self.view.frame.size.width,self.view.frame.size.height);

    
    self.stockNameLabel.frame = CGRectMake(self.view.frame.origin.x + (self.view.frame.origin.x / 2) - 100, (self.view.frame.origin.y) +  + (self.view.frame.origin.y / 2) - 25, 200, 50);
    
    _animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    _gravity = [[UIGravityBehavior alloc] initWithItems:@[self.stockNameLabel]];
    _collision = [[UICollisionBehavior alloc] initWithItems:@[self.stockNameLabel]];
    _collision.translatesReferenceBoundsIntoBoundary = YES;

    
    [_animator addBehavior:_gravity];
    [_animator addBehavior:_collision];
    
    _stockNameLabel.text = stockName;
    
    
    
    
    
    
    
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
