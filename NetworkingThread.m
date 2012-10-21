//
//  NetWorkingThread.m
//  MyOperationQueue
//
//  Created by Корзун Владислав on 20.10.12.
//  Copyright (c) 2012 Корзун Владислав. All rights reserved.
//

#import "NetworkingThread.h"

@implementation NetworkingThread

//-(id)init{
//    if(self = [super init]){
//        self.theread = [NSThread new];
//        NSRunLoop 
//    }
//}

+(void)networkRequestThreadEntryPoint:(id)argument{
    do {
        [[NSRunLoop currentRunLoop] run];
    } while (YES);
}


+(NSThread *)networkingReqestThread{
    static NSThread * thread = nil;
    static dispatch_once_t task;
    dispatch_once(&task, ^{
    thread = [[NSThread alloc] initWithTarget:self selector:@selector(networkRequestThreadEntryPoint:) object:nil];
    [thread start];
    });
    return thread;
}


@end
