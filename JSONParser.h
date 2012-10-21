//
//  Parser.h
//  MyOperationQueue
//
//  Created by Корзун Владислав on 20.10.12.
//  Copyright (c) 2012 Корзун Владислав. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConnectionOperation.h"
#import "JSONKit.h"
#import "ParserProtocol.h"

@interface JSONParser : NSObject <DataCallBack,ParserProtocol>
@property (retain) id mapper;

@end
