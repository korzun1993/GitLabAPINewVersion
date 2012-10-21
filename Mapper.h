//
//  Mapper.h
//  MyOperationQueue
//
//  Created by Корзун Владислав on 21.10.12.
//  Copyright (c) 2012 Корзун Владислав. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MapperProtocol.h"
#import "DataCameProtocol.h"
@interface Mapper : NSObject<MapperProtocol>
@property (retain) NSString * mode;
@property Class classOfInstance;
@property (retain) id<DataCameProtocol> delegat;
-(id)initWithMode:(NSString *)mode classOfInstance:(Class)classOfInstance delegat:(id)delegat;


@end
