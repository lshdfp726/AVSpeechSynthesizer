//
//  ViewController.m
//  AVF_NSSpeechSynthesizer
//
//  Created by 刘松洪 on 2017/1/18.
//  Copyright © 2017年 刘松洪. All rights reserved.
//

#import "ViewController.h"
#import "AVSpeechSyn.h"
@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *inputString;

@property (strong, nonatomic) IBOutlet UIButton *speakBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UITapGestureRecognizer *reg = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(hiddenView)];
    [self.view addGestureRecognizer:reg];
}


- (void)hiddenView {
    [self.view endEditing:YES];
}


- (IBAction)btnAction:(id)sender {
    AVSpeechSyn *speech = [AVSpeechSyn shareInstance];
    [speech beginConversationWithString:self.inputString.text];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
