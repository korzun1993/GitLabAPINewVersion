//
//  ConectionOperation.h
//  MyOperationQueue
//
//  Created by Корзун Владислав on 20.10.12.
//  Copyright (c) 2012 Корзун Владислав. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DataCallBack
-(void)dataAppear:(NSData *)data;
@end

@interface ConnectionOperation : NSOperation <NSURLConnectionDataDelegate>
@property (retain) NSURLRequest * request;
@property (retain) id<DataCallBack> delegat;
-(BOOL)isConcurrent;
-(void)start;

-(id)initWithURLRequest:(NSURLRequest *)request delegat:(id<DataCallBack>)delegat;
@end
