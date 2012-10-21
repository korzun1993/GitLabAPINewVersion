//
//  ViewController.m
//  MyOperationQueue
//
//  Created by Корзун Владислав on 20.10.12.
//  Copyright (c) 2012 Корзун Владислав. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    self.table = [UITableView new];
self.table.frame = CGRectMake(0, 0, 320, 480);
    

    
    self.source = [[DataSource alloc] initWithDelegat:self.table];
    [self.table setDataSource:self.source];
    [self.table setDelegate:self.source];
    
    
        [self.view addSubview:self.table];
    [self.source startDownloading];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
