//
//  ViewController.m
//  ObjectiveC_2_8
//
//  Created by Лаура Есаян on 20.03.2020.
//  Copyright © 2020 LY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
- (IBAction)addTextToLabel:(id)sender {
    NSString *newStr = [_textField.text stringByAppendingFormat: @" "];
    _label.text = [_label.text stringByAppendingFormat: @"%@", newStr];
    _textField.text = @"";
}


@end
