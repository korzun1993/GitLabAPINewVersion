//
//  Mapper.m
//  MyOperationQueue
//
//  Created by Корзун Владислав on 21.10.12.
//  Copyright (c) 2012 Корзун Владислав. All rights reserved.
//

#import "Mapper.h"
#import "DataSourceProtocol.h"

@implementation Mapper
-(id)initWithMode:(NSString *)mode classOfInstance:(Class)classOfInstance delegat:(id<DataCameProtocol>)delegat{
    if(self=[super init]){
      self.mode = mode;
      self.classOfInstance = classOfInstance;
      self.delegat = delegat;
    }
    return self;
}


-(void)receiveDecodedData:(id)data{
    if(self.mode==@"ArrayMode"){
        [self ArrayMode:data];
    }
    if(self.mode==@"DictionaryMode"){
    
    }
    if(self.mode=@"AnswerMode"){
        
    }

}

-(void)ArrayMode:(NSArray *)decodedResponce{
    NSMutableArray * result=[NSMutableArray new];
    for (NSDictionary * dictionary in decodedResponce){
   [result addObject:[[self.classOfInstance alloc] initWithInfo:dictionary]];}
   [self.delegat dataCame:result];
}

@end
