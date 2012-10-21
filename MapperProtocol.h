//
//  MapperProtocol.h
//  MyOperationQueue
//
//  Created by Корзун Владислав on 21.10.12.
//  Copyright (c) 2012 Корзун Владислав. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MapperProtocol <NSObject>
@required

-(void)receiveDecodedData:(id)data;

@end
