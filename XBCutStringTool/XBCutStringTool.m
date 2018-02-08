//
//  XBCutStringTool.m
//  ip116_plus
//
//  Created by xxb on 2018/1/27.
//  Copyright © 2018年 DreamCatcher. All rights reserved.
//

#import "XBCutStringTool.h"

@implementation XBCutStringTool
+ (NSString *)getCuttedStr:(NSString *)str width:(CGFloat)width font:(UIFont *)font
{
    if (getWidthWith_title_font(str, font) <= width)
    {
        return str;
    }
    
    NSString *result = @"";
    for (NSInteger i = str.length - 1; i >= 0; i--)
    {
        result = [[str substringToIndex:i] stringByAppendingString:@"..."];
        CGFloat resultWidth = getWidthWith_title_font(result, font);
        if (resultWidth <= width)
        {
            return result;
        }
    }
    return result;
}
@end
