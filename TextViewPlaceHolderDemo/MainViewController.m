//
//  MainViewController.m
//  TextViewPlaceHolderDemo
//
//  Created by Brant on 14-8-8.
//  Copyright (c) 2014年 Brant. All rights reserved.
//

#import "MainViewController.h"
#import "UITextView+PlaceHolder.h"

@interface MainViewController () <UITextViewDelegate>

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
    // Do any additional setup after loading the view.
    
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(10, 100, 100, 100)];
    
    [textView addPlaceHolder:@"place holder"];
    self.view.backgroundColor = [UIColor grayColor];
    [self.view addSubview:textView];
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
