//
//  ViewController.h
//  AVideoSpeechDemo
//
//  Created by qingyun on 6/28/13.
//  Copyright (c) 2013 qingyun. All rights reserved.
//  QQ:250895425

#import <UIKit/UIKit.h>
#import <AVfoundation/AVSpeechSynthesis.h>

@interface ViewController : UIViewController <AVSpeechSynthesizerDelegate,UITextFieldDelegate>

- (IBAction)textToSpeechBtnPress:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textS;

@end
