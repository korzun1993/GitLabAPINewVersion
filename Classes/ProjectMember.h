//
//  ProjectMember.h
//  GitLabAPI
//
//  Created by Корзун Владислав on 16.10.12.
//  Copyright (c) 2012 Корзун Владислав. All rights reserved.
//

#import "Person.h"
#import "DataSourceProtocol.h"
@interface ProjectMember : Person<DataSourceProtocol>
@property (retain) NSNumber * accessLevel;

-(id)initWithInfo:(NSDictionary *)info;
@end
