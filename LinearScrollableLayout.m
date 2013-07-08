//
//  LinearScrollableLayout.m
//  
//
//  Created by Vasileios Mitrousis on 7/8/13.
//  Copyright (c) 2013 Vasileios Mitrousis. All rights reserved.
//

#import "LinearScrollableLayout.h"

@implementation LinearScrollableLayout

- (id)initWithFrame:(CGRect)frame andOrientation:(int)orient
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self initializeWithOrientation:orient andMarginLeft:0 top:0 right:0 bottom:0];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame orientation:(int)orient andMarginLeft:(int)left top:(int)top right:(int)right bottom:(int)bottom
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self initializeWithOrientation:orient andMarginLeft:left top:top right:right bottom:bottom];
    }
    return self;
}

- (void)initializeWithOrientation:(int)orient andMarginLeft:(int)left top:(int)top right:(int)right bottom:(int)bottom
{
    orientation = orient;
    
    marginLeft = left;
    marginTop = top;
    marginRight = right;
    marginBottom = bottom;
    
    viewCursor = (orientation == LINEAR_ORIENTATION_VERTICAL) ? marginTop : marginLeft;
}

- (void)addView:(UIView*)view withSize:(CGSize)size
{
    [self addView:view withSize:size andPaddingLeft:0 top:0 right:0 bottom:0];
}

- (void)addView:(UIView*)view withSize:(CGSize)size andPaddingLeft:(int)left top:(int)top right:(int)right bottom:(int)bottom
{
    if (orientation == LINEAR_ORIENTATION_VERTICAL)
    {
        CGRect viewFrame = CGRectMake(marginLeft + left,
                                      viewCursor + top,
                                      size.width, size.height);
        
        viewCursor += top + bottom + size.height;
        
        [view setFrame:viewFrame];
        [self addSubview:view];
        
        [self setContentSize:CGSizeMake(self.frame.size.width,
                                        viewCursor)];
    }
    else
    {
        CGRect viewFrame = CGRectMake(viewCursor + left,
                                      marginTop + top,
                                      size.width, size.height);
        
        viewCursor += left + right + size.width;
        
        [view setFrame:viewFrame];
        [self addSubview:view];
        
        [self setContentSize:CGSizeMake(viewCursor,
                                        self.frame.size.height)];
    }
}

@end
