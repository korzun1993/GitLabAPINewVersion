//
//  Milestone.h
//  GitLabAPI
//
//  Created by Корзун Владислав on 15.10.12.
//  Copyright (c) 2012 Корзун Владислав. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DataSourceProtocol.h"
@interface Milestone : NSObject<DataSourceProtocol>
@property (retain) NSNumber * milestoneID;
@property (retain) NSString * milestoneTitle;
@property (retain) NSString * description;
@property (retain) NSString * dueDate;
@property (retain) NSNumber * isClosed;

-(id)initWithInfo:(NSDictionary*)info ;
@end
