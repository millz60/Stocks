//
//  ContainerViewController.m
//  Stocks
//
//  Created by Matt Milner on 7/5/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "ContainerViewController.h"

@interface ContainerViewController ()

@end

@implementation ContainerViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    NSArray *children = self.childViewControllers;

    StocksDisplayTableViewController *tableDisplayController = (StocksDisplayTableViewController *) children.firstObject;
    StockNameViewController *stockNameController = (StockNameViewController *) children.lastObject;
    
    tableDisplayController.delegate = stockNameController;



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
