//
//  initializationProtocol.h
//  MyOperationQueue
//
//  Created by Корзун Владислав on 21.10.12.
//  Copyright (c) 2012 Корзун Владислав. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DataSourceProtocol <NSObject>
@required

-initWithInfo:(NSDictionary *)info;
-(NSString *)showTitle;

@end
