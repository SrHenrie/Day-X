//
//  DetailViewController.m
//  DayX
//
//  Created by Sarah Henrie on 7/1/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textField.text=self.entry.title;
    self.textView.text = self.entry.entryText;
}

- (IBAction)textFieldChanged:(id)sender {
    self.entry.title = self.textField.text;
    
}


- (bool)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    
    return YES;
}
- (IBAction)clearButtonTapped:(id)sender {
    self.textField.text = @"";
    self.textView.text =@"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
