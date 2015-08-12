//
//  basicWebAppDelegate.h
//  BasicWebBrowser
//
//  Created by Josiah Bruner on 12/4/12.
//  Copyright (c) 2012 Infinite Software Technologies. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface basicWebAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet WebView *webView;
@property (weak) IBOutlet NSTextField *searchField;
- (IBAction)goBack:(id)sender;
- (IBAction)goForward:(id)sender;
- (IBAction)goHome:(id)sender;
- (IBAction)go:(id)sender;

@end
