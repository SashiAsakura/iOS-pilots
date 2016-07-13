//
//  ViewController.m
//  MarcoPollo
//
//  Created by Hisashi on 2016-07-11.
//  Copyright © 2016 Hisashi. All rights reserved.
//

#import "ViewController.h"
#import "Social/Social.h"

@interface ViewController ()
- (IBAction)postItButtonPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UITextView *tweetTextView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)postItButtonPressed:(id)sender {
    NSLog(@"Post it button pressed: %@", self.tweetTextView.text);
    NSString *tweetText = [NSString stringWithFormat:@"%@ #MarcoPollo", self.tweetTextView.text];
    SLComposeViewController *composer = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    [composer setInitialText:tweetText]; // message passing usung [], like a method call in Java
    [self presentViewController:composer animated:YES completion:nil]; // [receiver object methodName: argName]
}
@end
