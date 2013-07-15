//
//  Toast.m
//
//  Created by Aviel Gross on 7/15/13.
//  Copyright (c) 2013 Aviel Gross. All rights reserved.
//

#import "Toast.h"

@implementation Toast
{
    CGRect rect;
}

+ (Toast *)toastWithMessage:(NSString *)msg
{
    Toast *t = [[Toast alloc] init];
    t.message = msg;

    CGRect screen = [[UIScreen mainScreen] bounds];
    CGSize size = [msg sizeWithFont:[UIFont systemFontOfSize:FONT_SIZE]];
    if (size.width > screen.size.width)
    {
        size.width = screen.size.width;
    }
    
    CGRect rect = CGRectMake((screen.size.width - size.width - LEFT_RIGHT_PADDING) / 2,
                      screen.size.height - BOTTOM_MARGIN,
                      size.width + LEFT_RIGHT_PADDING, size.height + TOP_BOTTOM_PADDING);
    
    t.label = [[UILabel alloc] initWithFrame:rect];
    t.label.text = msg;
    t.label.textColor = [UIColor whiteColor];
    t.label.font = [UIFont systemFontOfSize:FONT_SIZE];
    t.label.textAlignment = NSTextAlignmentCenter;
    t.label.backgroundColor = [UIColor BACKGROUND_COLOR];
    
    return t;

}

- (void)showOnView:(UIView *)view
{
    [self.label setAlpha:0];
    [view addSubview:self.label];
    
    [UIView animateWithDuration:FADE_IN_DURATION
                     animations:^{
        [self.label setAlpha:1];
    }
                     completion:^(BOOL finished) {
                         
        [UIView animateWithDuration:FADE_OUT_DURATION
                              delay:DELAY
                            options:0
                         animations:^{ [self.label setAlpha:0]; }
                         completion:^(BOOL finished) {}
         ];
    }];
}

@end
