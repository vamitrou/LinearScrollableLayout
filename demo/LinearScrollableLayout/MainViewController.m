//
//  MainViewController.m
//  LinearScrollableLayout
//
//  Created by Vasileios Mitrousis on 7/8/13.
//  Copyright (c) 2013 Vasileios Mitrousis. All rights reserved.
//

#import "MainViewController.h"
#import "LinearScrollableLayout.h"


@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // vertical view
    
    LinearScrollableLayout *layout = [[[LinearScrollableLayout alloc]
                                       initWithFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height/2)
                                       andOrientation:LINEAR_ORIENTATION_VERTICAL] autorelease];
    
    [layout setBackgroundColor:[UIColor grayColor]];
    
    // add some views in the vertical layout
    
    UIImageView *v1 = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"first.png"]] autorelease];
    UIImageView *v2 = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"first.png"]] autorelease];
    UIImageView *v3 = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"first.png"]] autorelease];
    
    [v1 setBackgroundColor:[UIColor redColor]];
    [v2 setBackgroundColor:[UIColor blueColor]];
    [v3 setBackgroundColor:[UIColor greenColor]];
    
    [layout addView:v1 withSize:
     CGSizeMake(self.view.frame.size.width - 20, 150) andPaddingLeft:10 top:10 right:0 bottom:0];
   
    [layout addView:v2 withSize:
     CGSizeMake(self.view.frame.size.width - 20, 150) andPaddingLeft:10 top:10 right:0 bottom:0];
    
    [layout addView:v3 withSize:
     CGSizeMake(self.view.frame.size.width - 20, 150) andPaddingLeft:10 top:10 right:0 bottom:10];
    
    [self.view addSubview:layout];
    
    
    // horizontal view
    
    LinearScrollableLayout *layout2 = [[[LinearScrollableLayout alloc]
                                        initWithFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.size.height/2, self.view.frame.size.width, self.view.frame.size.height/2)
                                        andOrientation:LINEAR_ORIENTATION_HORIZONTAL] autorelease];
    
    [layout2 setBackgroundColor:[UIColor lightGrayColor]];
    
    // add another views in the horizontal layout
    
    UIImageView *v4 = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"first.png"]] autorelease];
    UIImageView *v5 = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"first.png"]] autorelease];
    UIImageView *v6 = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"first.png"]] autorelease];
    
    [v4 setBackgroundColor:[UIColor redColor]];
    [v5 setBackgroundColor:[UIColor blueColor]];
    [v6 setBackgroundColor:[UIColor greenColor]];
    
    [layout2 addView:v4 withSize:
     CGSizeMake(200, self.view.frame.size.height/2 - 20) andPaddingLeft:10 top:10 right:0 bottom:0];
    
    [layout2 addView:v5 withSize:
     CGSizeMake(200, self.view.frame.size.height/2 - 20) andPaddingLeft:10 top:10 right:0 bottom:0];
    
    [layout2 addView:v6 withSize:
     CGSizeMake(200, self.view.frame.size.height/2 - 20) andPaddingLeft:10 top:10 right:10 bottom:0];
    
    [self.view addSubview:layout2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
