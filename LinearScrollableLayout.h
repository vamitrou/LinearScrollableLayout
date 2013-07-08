//
//  LinearScrollabelLayout.h
//  
//
//  Created by Vasileios Mitrousis on 7/8/13.
//  Copyright (c) 2013 Vasileios Mitrousis. All rights reserved.
//

#define LINEAR_ORIENTATION_HORIZONTAL 1
#define LINEAR_ORIENTATION_VERTICAL 2

#import <UIKit/UIKit.h>

@interface LinearScrollableLayout : UIScrollView
{
    int orientation;
    
    int marginLeft;
    int marginTop;
    int marginRight;
    int marginBottom;
    
    int viewCursor;
}

- (id)initWithFrame:(CGRect)frame andOrientation:(int)orient;

- (id)initWithFrame:(CGRect)frame orientation:(int)orient andMarginLeft:(int)left top:(int)top right:(int)right bottom:(int)bottom;

- (void)addView:(UIView*)view withSize:(CGSize)size;

- (void)addView:(UIView*)view withSize:(CGSize)size andPaddingLeft:(int)left top:(int)top right:(int)right bottom:(int)bottom;

@end
