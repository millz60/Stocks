//
//  StockNameViewController.h
//  Stocks
//
//  Created by Matt Milner on 7/5/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StocksDisplayTableViewController.h"

@interface StockNameViewController : UIViewController <StockDisplayDelegate>
{
    UIDynamicAnimator *_animator;
    UIGravityBehavior *_gravity;
    UICollisionBehavior *_collision;
}
@property(nonatomic,weak) IBOutlet UILabel *stockNameLabel;

@end
