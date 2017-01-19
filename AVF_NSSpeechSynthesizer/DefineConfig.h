//
//  DefineConfig.h
//  LJNetWorking
//
//  Created by 刘松洪 on 2017/1/3.
//  Copyright © 2017年 刘松洪. All rights reserved.
//

#ifndef DefineConfig_h
#define DefineConfig_h


//打印日志
#define NSLog(format, ...) printf("%s [%s] [第%d行] %s\n",__TIME__,__FUNCTION__,__LINE__,[[NSString stringWithFormat:format, ## __VA_ARGS__]UTF8String])



//判断当前手机系统

#endif /* DefineConfig_h */
