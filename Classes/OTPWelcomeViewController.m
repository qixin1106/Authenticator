//
//  OTPWelcomeViewController.m
//
//  Copyright 2011 Google Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License"); you may not
//  use this file except in compliance with the License.  You may obtain a copy
//  of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
//  WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
//  License for the specific language governing permissions and limitations under
//  the License.
//

#import "OTPWelcomeViewController.h"
#import "OTPAuthAppDelegate.h"

@interface OTPWelcomeViewController ()

@property (weak, nonatomic, readwrite) IBOutlet UITextView *welcomeText;

@end

@implementation OTPWelcomeViewController

@synthesize welcomeText = welcomeText_;

- (id)init {
  if ((self = [super initWithNibName:@"OTPWelcomeViewController" bundle:nil])) {
    self.hidesBottomBarWhenPushed = YES;
  }
  return self;
}


- (void)viewWillAppear:(BOOL)animated {
  NSString *title = NSLocalizedString(@"Welcome", @"Title for welcome screen");
  self.title = NSLocalizedString(@"Welcome", @"Title for welcome screen");
  self.navigationItem.hidesBackButton = YES;
    
  UIBarButtonItem *button
    = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                                     target:[[UIApplication sharedApplication] delegate]
                                                     action:@selector(addAuthURL:)];
  self.navigationItem.rightBarButtonItem = button;

  NSString *label = NSLocalizedString(@"Welcome_label", @"Welcome text");
  welcomeText_.text = label;
}

@end
