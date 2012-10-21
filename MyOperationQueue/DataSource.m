//
//  DataSource.m
//  MyOperationQueue
//
//  Created by Корзун Владислав on 21.10.12.
//  Copyright (c) 2012 Корзун Владислав. All rights reserved.
//

#import "DataSource.h"
#import "NetworkingThread.h"
@implementation DataSource



-(void)dataCame:(id)data{
    self.data = data;
    [self.delegat reloadData];
}


-(id)initWithDelegat:(id)delegat{
    self = [super init];
    if (self) {
        self.netThread = [NetworkingThread networkingReqestThread];
        self.delegat = delegat;
    }
    return self;
}

-(void)startDownloading{
   NSURL * url = [[NSURL alloc] initWithString:@"http://git.111min.com/api/v2/projects?private_token=7dgmvAsaWEABWLbJNewa"];
    
  

    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:url];
    [request setHTTPMethod:@"GET"];
        
    Mapper * currentMapper = [[Mapper alloc] initWithMode:@"ArrayMode" classOfInstance:[Project class] delegat:self];
    
    JSONParser *newParser = [[JSONParser alloc] initWithMapper:currentMapper];
    
    
    ConnectionOperation * operation = [[ConnectionOperation alloc] initWithURLRequest:request delegat:newParser];
    
    
    
    
    [operation performSelector:@selector(start) onThread:self.netThread withObject:self waitUntilDone:NO];
    

}

- (NSInteger) tableView: (UITableView*) tableView numberOfRowsInSection: (NSInteger) section
{
    //Кол-во строк в таблице
    return [self.data count];
}

- (UITableViewCell*) tableView: (UITableView*) tableView cellForRowAtIndexPath: (NSIndexPath*) index_path
{
    //Создание ячеек заполняющих таблицу
    static NSString * CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [[self.data objectAtIndex: index_path.row] showTitle];
    return cell;
}

@end
