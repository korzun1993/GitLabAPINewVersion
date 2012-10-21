//
//  ConectionOperation.m
//  MyOperationQueue
//
//  Created by Корзун Владислав on 20.10.12.
//  Copyright (c) 2012 Корзун Владислав. All rights reserved.
//

#import "ConnectionOperation.h"

@implementation ConnectionOperation

-(id)initWithURLRequest:(NSURLRequest*) request delegat:(id<DataCallBack>)delegat{
    if(self=[super init]){
        self.request = request;
        self.delegat = delegat;
        
    }
    return self;
}

-(BOOL)isConcurrent{

    return YES;
}



- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [self.delegat dataAppear:data];
}

-(void)start{
   [[NSURLConnection alloc] initWithRequest:self.request delegate:self startImmediately:YES];
}

@end
