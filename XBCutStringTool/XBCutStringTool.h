//
//  XBCutStringTool.h
//  ip116_plus
//
//  Created by xxb on 2018/1/27.
//  Copyright © 2018年 DreamCatcher. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XBCutStringTool : NSObject
+ (NSString *)getCuttedStr:(NSString *)str width:(CGFloat)width font:(UIFont *)font;
@end
