//
//  DegreeViewController.m
//  ObjectiveC_2_8
//
//  Created by Лаура Есаян on 20.03.2020.
//  Copyright © 2020 LY. All rights reserved.
//

#import "DegreeViewController.h"

@interface DegreeViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation DegreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
- (IBAction)calculate:(id)sender {
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
     NSNumber *number = [formatter numberFromString: _textField.text];
    if (number != NULL) {
        _label.text = [NSString stringWithFormat:@"%d", (int)pow(2, number.intValue)];
    } else {
        _label.text = @"Введите целое число в строку";
    }
    
    _textField.text = @"";
}

@end
