//
//  ViewController.m
//  AVideoSpeechDemo
//
//  Created by qingyun on 6/28/13.
//  Copyright (c) 2013 qingyun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _textS.delegate = self;
    
    UIButton *btn = [[UIButton alloc]init];
    btn.backgroundColor = [UIColor redColor];
    btn.frame = CGRectMake(0, 0, 200, 40);
    [self.view addSubview:btn];
    
    
 	// Do any additional setup after loading the view, typically from a nib.
}

-(void)aaaa
{
    //[av speakUtterance:[AVSpeechUtterance speechUtteranceWithString:@"qingjoin"]];
     //[av speakUtterance:utterance];
}
 
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)textToSpeechBtnPress:(id)sender
{
    AVSpeechSynthesizer *av = [[AVSpeechSynthesizer alloc]init];
    AVSpeechUtterance *utterance = [[AVSpeechUtterance alloc]initWithString:_textS.text];  //需要转换的文本
    [av speakUtterance:utterance];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

@end
