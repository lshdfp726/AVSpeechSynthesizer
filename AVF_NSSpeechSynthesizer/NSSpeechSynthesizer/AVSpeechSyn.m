//
//  AVSpeechSyn.m
//  AVF_NSSpeechSynthesizer
//
//  Created by 刘松洪 on 2017/1/18.
//  Copyright © 2017年 刘松洪. All rights reserved.
//

#import "AVSpeechSyn.h"

@implementation AVSpeechSyn

+ (instancetype)shareInstance {
    static AVSpeechSyn *_instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[AVSpeechSyn alloc]init];
    });
    return _instance;
}


- (instancetype)init {
    if (self = [super init]) {
//        @[[AVSpeechSynthesisVoice voiceWithLanguage:@"zh-Hans-US"],
//          [AVSpeechSynthesisVoice voiceWithLanguage:@"en-US"]];
        _voices        = @[[AVSpeechSynthesisVoice voiceWithLanguage:@"zh-Hans-US"]];
    }
    return self;
}




- (void)beginConversationWithString:(NSString *)str {
    if (str == nil || [str isEqualToString:@""]) {
        str = @"中华人民共和国";
    }
        AVSpeechUtterance *utterance = [[AVSpeechUtterance alloc]initWithString:str];
        utterance.voice              = [_voices firstObject];
        utterance.rate               = 0.4;
        utterance.pitchMultiplier    = 0.8f;
        utterance.postUtteranceDelay = 0.1f;
        [self speakUtterance:utterance];

}

@end
