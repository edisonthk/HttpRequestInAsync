//
//  ViewController.m
//  Apps5
//
//  Created by Edisonthk on 4/12/14.
//  Copyright (c) 2014 Edisonthk. All rights reserved.
//

#import "ViewController.h"
#import "URLConnectionDelegateExample.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)sayHello
{
    
    URLConnectionDelegateExample* d = [[URLConnectionDelegateExample alloc]init];
    
    
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://eicforum.mydns.jp/test2.php"]];
    NSURLConnection *connection = [[NSURLConnection alloc]initWithRequest:request delegate:d];
    if(connection){
        NSLog(@"yes");
        [connection start];
    }else{
        NSLog(@"no");
    }
    
}




@end
