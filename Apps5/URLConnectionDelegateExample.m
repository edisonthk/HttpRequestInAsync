//
//  URLConnectionDelegateExample.m
//  Apps5
//
//  Created by Edisonthk on 4/12/14.
//  Copyright (c) 2014 Edisonthk. All rights reserved.
//

#import "URLConnectionDelegateExample.h"

@implementation URLConnectionDelegateExample

NSMutableData* responseData = nil;

-(id)init
{
    self = [super init];

    responseData = [[NSMutableData alloc]init];
    
    
    return self;
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    NSLog(@"didReceiveResponse");
    [responseData setLength:0];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    [responseData appendData:data];
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"didFailWithError");
    NSLog([NSString stringWithFormat:@"Connection failed: %@", [error description]]);
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"connectionDidFinishLoading");
    NSLog(@"Succeeded! Received %d bytes of data",[responseData length]);
    
    
    
    NSLog([[NSString alloc]initWithData:responseData encoding:NSUTF8StringEncoding]);
    
    // convert to JSON
}

@end
