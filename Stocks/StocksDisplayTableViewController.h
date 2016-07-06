//
//  StocksDisplayTableViewController.h
//  Stocks
//
//  Created by Matt Milner on 7/5/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol StockDisplayDelegate <NSObject>

-(void) stockWasPressed: (NSString *) stockName;

@end


@interface StocksDisplayTableViewController : UITableViewController
{
    NSMutableArray *_stockList;
}



@property (nonatomic,weak) id<StockDisplayDelegate> delegate;


@end
