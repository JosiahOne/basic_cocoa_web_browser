//
//  basicWebAppDelegate.m
//  BasicWebBrowser
//
//  Created by Josiah Bruner on 12/4/12.
//  Copyright (c) 2012 Infinite Software Technologies. All rights reserved.
//

#import "basicWebAppDelegate.h"

@implementation basicWebAppDelegate

@synthesize webView;
@synthesize searchField;

NSString *homeURLString = @"http://google.com"; //This can be whatever you want.

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    [self goHome:self]; //This will load the homepage by default on launch.
}

- (IBAction)goHome:(id)sender{
    [[webView mainFrame] loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:homeURLString]]];
}

- (IBAction)go:(id)sender {
    NSString *inputString = [searchField stringValue];
    NSString *outputString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"+"];
    
    if ([inputString hasPrefix:@"http://"]) {
        [[webView mainFrame] loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:inputString]]];
    }
    else
    {
        NSString *googleString = @"http://google.com/search?q=";
        NSString *searchString = [NSString stringWithFormat:@"%@%@", googleString, outputString];
        [[webView mainFrame] loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:searchString]]];
        
    }

}

- (IBAction)goBack:(id)sender {
    [webView goBack];
}

- (IBAction)goForward:(id)sender {
    [webView goForward];
}

@end
