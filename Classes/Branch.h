//
//  Branch.h
//  GitLabAPI
//
//  Created by Корзун Владислав on 15.10.12.
//  Copyright (c) 2012 Корзун Владислав. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DataSourceProtocol.h"
@interface Branch : NSObject <DataSourceProtocol>
@property (retain) NSString * branchName;

-(id)initWithInfo:(NSDictionary *)info;
@end
