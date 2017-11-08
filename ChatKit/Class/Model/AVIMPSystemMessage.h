//
//  AVIMPSystemMessage.h
//  Pods
//
//  Created by leleyun on 2017/11/7.
//
//

#import <AVOSCloudIM/AVOSCloudIM.h>

NS_ASSUME_NONNULL_BEGIN

@interface AVIMPSystemMessage : AVIMTypedMessage<AVIMTypedMessageSubclassing>

/*!
 创建文本消息。
 @param text － 消息文本.
 @param attributes － 用户附加属性
 */

+ (instancetype)messageWithText:(NSString *)text
                     attributes:(NSDictionary *)attributes;
@end

NS_ASSUME_NONNULL_END
