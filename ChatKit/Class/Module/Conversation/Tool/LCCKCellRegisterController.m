//
//  UIself+LCCKCellRegister.m
//  LCCKChatBarExample
//
//  v0.8.5 Created by ElonChan  ( https://github.com/leancloud/ChatKit-OC ) on 15/11/23.
//  Copyright © 2015年 https://LeanCloud.cn . All rights reserved.
//

#import "LCCKCellRegisterController.h"
#import "LCCKChatSystemMessageCell.h"
#import "LCCKChatServerMessageCell.h"
#import "LCCKChatPServerMessageCell.h"
#import "LCCKChatRecallMessageCell.h"
#import "LCCKConstants.h"

@implementation LCCKCellRegisterController
//
+ (void)registerChatMessageCellClassForTableView:(UITableView *)tableView {
    [LCCKChatMessageCellMediaTypeDict enumerateKeysAndObjectsUsingBlock:^(NSNumber * _Nonnull mediaType, Class _Nonnull aClass, BOOL * _Nonnull stop) {
        if (mediaType.intValue != -7) {
            [self registerMessageCellClass:aClass ForTableView:tableView];
        }
    }];
    [self registerSystemMessageCellClassForTableView:tableView];
    [self registerServerMessageCellClassForTableView:tableView];
}

+ (void)registerMessageCellClass:(Class)messageCellClass ForTableView:(UITableView *)tableView  {
    NSString *messageCellClassString = NSStringFromClass(messageCellClass);
    UINib *nib = [UINib nibWithNibName:messageCellClassString bundle:nil];
    if([[NSBundle mainBundle] pathForResource:messageCellClassString ofType:@"nib"] != nil) {
    [tableView registerNib:nib forCellReuseIdentifier:[NSString stringWithFormat:@"%@_%@_%@", messageCellClassString, LCCKCellIdentifierOwnerSelf, LCCKCellIdentifierGroup]];
    [tableView registerNib:nib forCellReuseIdentifier:[NSString stringWithFormat:@"%@_%@_%@", messageCellClassString, LCCKCellIdentifierOwnerSelf, LCCKCellIdentifierSingle]];
    [tableView registerNib:nib forCellReuseIdentifier:[NSString stringWithFormat:@"%@_%@_%@", messageCellClassString, LCCKCellIdentifierOwnerOther, LCCKCellIdentifierGroup]];
    [tableView registerNib:nib forCellReuseIdentifier:[NSString stringWithFormat:@"%@_%@_%@", messageCellClassString, LCCKCellIdentifierOwnerOther , LCCKCellIdentifierSingle]];
    } else {
        [tableView registerClass:messageCellClass forCellReuseIdentifier:[NSString stringWithFormat:@"%@_%@_%@", messageCellClassString, LCCKCellIdentifierOwnerSelf, LCCKCellIdentifierGroup]];
        [tableView registerClass:messageCellClass forCellReuseIdentifier:[NSString stringWithFormat:@"%@_%@_%@", messageCellClassString, LCCKCellIdentifierOwnerSelf, LCCKCellIdentifierSingle]];
        [tableView registerClass:messageCellClass forCellReuseIdentifier:[NSString stringWithFormat:@"%@_%@_%@", messageCellClassString, LCCKCellIdentifierOwnerOther, LCCKCellIdentifierGroup]];
        [tableView registerClass:messageCellClass forCellReuseIdentifier:[NSString stringWithFormat:@"%@_%@_%@", messageCellClassString, LCCKCellIdentifierOwnerOther , LCCKCellIdentifierSingle]];
    }
}

+ (void)registerSystemMessageCellClassForTableView:(UITableView *)tableView {
    [tableView registerClass:[LCCKChatSystemMessageCell class] forCellReuseIdentifier:@"LCCKChatSystemMessageCell_LCCKCellIdentifierOwnerSystem_LCCKCellIdentifierSingle"];
    [tableView registerClass:[LCCKChatSystemMessageCell class] forCellReuseIdentifier:@"LCCKChatSystemMessageCell_LCCKCellIdentifierOwnerSystem_LCCKCellIdentifierGroup"];
}

+ (void)registerServerMessageCellClassForTableView:(UITableView *)tableView {
    [tableView registerClass:[LCCKChatServerMessageCell class] forCellReuseIdentifier:@"LCCKChatServerMessageCell_LCCKCellIdentifierOwnerSystem_LCCKCellIdentifierSingle"];
    [tableView registerClass:[LCCKChatServerMessageCell class] forCellReuseIdentifier:@"LCCKChatServerMessageCell_LCCKCellIdentifierOwnerSystem_LCCKCellIdentifierGroup"];
    [tableView registerClass:[LCCKChatPServerMessageCell class] forCellReuseIdentifier:@"LCCKChatPServerMessageCell_LCCKCellIdentifierOwnerSystem_LCCKCellIdentifierSingle"];
    [tableView registerClass:[LCCKChatPServerMessageCell class] forCellReuseIdentifier:@"LCCKChatPServerMessageCell_LCCKCellIdentifierOwnerSystem_LCCKCellIdentifierGroup"];

    [tableView registerClass:[LCCKChatRecallMessageCell class] forCellReuseIdentifier:@"LCCKChatRecallMessageCell_LCCKCellIdentifierOwnerSystem_LCCKCellIdentifierSingle"];
    [tableView registerClass:[LCCKChatRecallMessageCell class] forCellReuseIdentifier:@"LCCKChatRecallMessageCell_LCCKCellIdentifierOwnerSystem_LCCKCellIdentifierGroup"];

}

@end
