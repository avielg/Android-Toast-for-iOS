//
//  Toast.h
//
//  Created by Aviel Gross on 7/15/13.
//  Copyright (c) 2013 Aviel Gross. All rights reserved.
//

#import <Foundation/Foundation.h>

#define FONT_SIZE 14

#define LEFT_RIGHT_PADDING 14
#define TOP_BOTTOM_PADDING 10
#define BOTTOM_MARGIN 200

#define BACKGROUND_COLOR darkGrayColor

#define FADE_IN_DURATION 0.4
#define FADE_OUT_DURATION 0.3
#define DELAY 2

@interface Toast : NSObject

@property (nonatomic, strong) NSString *message;
@property (nonatomic, strong) UILabel *label;

+ (Toast *)toastWithMessage:(NSString *)msg;
- (void)showOnView:(UIView *)mainView;

@end
