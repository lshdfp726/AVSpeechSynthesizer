//
//  AVSpeechSyn.h
//  AVF_NSSpeechSynthesizer
//
//  Created by 刘松洪 on 2017/1/18.
//  Copyright © 2017年 刘松洪. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
@interface AVSpeechSyn : AVSpeechSynthesizer

+ (instancetype)shareInstance;

@property (strong, nonatomic) NSArray *voices;//语音种类，中文，英文。。。。

- (void)beginConversationWithString:(NSString *)str;

@end
