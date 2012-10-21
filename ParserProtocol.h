//
//  ParserProtocol.h
//  MyOperationQueue
//
//  Created by Корзун Владислав on 21.10.12.
//  Copyright (c) 2012 Корзун Владислав. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MapperProtocol.h"
@protocol ParserProtocol <NSObject>
@required
-(id)initWithMapper:(id<MapperProtocol>)mapper;

@end
