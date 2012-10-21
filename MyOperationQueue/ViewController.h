//
//  ViewController.h
//  MyOperationQueue
//
//  Created by Корзун Владислав on 20.10.12.
//  Copyright (c) 2012 Корзун Владислав. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataSource.h"

@interface ViewController : UIViewController 
@property (retain) NSData * data;
@property (retain) UITableView * table;
@property (retain) DataSource * source;
@end
