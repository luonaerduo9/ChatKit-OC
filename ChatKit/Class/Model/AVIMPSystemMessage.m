//
//  AVIMPSystemMessage.m
//  Pods
//
//  Created by leleyun on 2017/11/7.
//
//

#import "AVIMPSystemMessage.h"
#if __has_include(<ChatKit/LCChatKit.h>)
#import <ChatKit/LCChatKit.h>
#else
#import "LCChatKit.h"
#endif

@implementation AVIMPSystemMessage

+ (void)load {
    [self registerSubclass];
}

+ (AVIMMessageMediaType)classMediaType {
    return kAVIMMessageMediaTypePServer;
}

+ (instancetype)messageWithText:(NSString *)text
                     attributes:(NSDictionary *)attributes {
    AVIMPSystemMessage *message = [[self alloc] init];
    message.text = text;
    message.attributes = attributes;
    return message;
}

@end
