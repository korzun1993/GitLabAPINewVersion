//
//  DataSource.h
//  MyOperationQueue
//
//  Created by Корзун Владислав on 21.10.12.
//  Copyright (c) 2012 Корзун Владислав. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DataCameProtocol.h"
#import "NetworkingThread.h"
#import "JSONParser.h"
#import "User.h"
#import "Mapper.h"
#import "ConnectionOperation.h"
#import "Project.h"

@interface DataSource : NSObject<DataCameProtocol,UITableViewDataSource,UITableViewDelegate>
@property (retain) NSThread * netThread;
@property (retain) NSArray * data;
@property (retain) id delegat;

-(void)startDownloading;
-(id)initWithDelegat:(id)delegat;
@end
