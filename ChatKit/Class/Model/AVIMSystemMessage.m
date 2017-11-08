//
//  AVIMSystemMessage.m
//  Pods
//
//  Created by leleyun on 2017/11/6.
//
//

#import "AVIMSystemMessage.h"
#if __has_include(<ChatKit/LCChatKit.h>)
#import <ChatKit/LCChatKit.h>
#else
#import "LCChatKit.h"
#endif

@implementation AVIMSystemMessage

+ (void)load {
    [self registerSubclass];
}

+ (AVIMMessageMediaType)classMediaType {
    return kAVIMMessageMediaTypeServer;
}

+ (instancetype)messageWithText:(NSString *)text
                     attributes:(NSDictionary *)attributes {
    AVIMSystemMessage *message = [[self alloc] init];
    message.text = text;
    message.attributes = attributes;
    return message;
}

@end
