//
//  Parser.m
//  MyOperationQueue
//
//  Created by Корзун Владислав on 20.10.12.
//  Copyright (c) 2012 Корзун Владислав. All rights reserved.
//

#import "JSONParser.h"
#import "User.h"


@implementation JSONParser

-(id)initWithMapper:(id<MapperProtocol>)mapper{
    if(self=[super init]){
        self.mapper = mapper;
    }
    return self;
}

-(void)dataAppear:(NSData *)data{
    
    
  id responce = [data objectFromJSONData];

    [self.mapper receiveDecodedData:responce];
}
@end
