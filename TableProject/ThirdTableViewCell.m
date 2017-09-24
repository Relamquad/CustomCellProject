//
//  ThirdTableViewCell.m
//  TableProject
//
//  Created by Konstantin Kalivod on 9/24/17.
//  Copyright © 2017 Kostya Kalivod. All rights reserved.
//

#import "ThirdTableViewCell.h"
@interface ThirdTableViewCell()
@property (nonatomic, weak) IBOutlet UIButton *ButtonTextOne;
@property (nonatomic, weak) IBOutlet UIButton *ButtonTextTwo;
@property (nonatomic, weak) IBOutlet UIButton *ButtonTextThree;
@property (nonatomic, weak) IBOutlet UITextField *textfield;

@end
@implementation ThirdTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (IBAction)ButtonTextOne:(UIButton *)sender {
    _ButtonTextOne.backgroundColor = [UIColor lightGrayColor];
    _ButtonTextTwo.backgroundColor = nil;
    _ButtonTextThree.backgroundColor = nil;
    self.textfield.text = @"ЛОЛ";
}
- (IBAction)ButtonTextTwo:(UIButton *)sender {
    self.textfield.text = @"КЕК";
    _ButtonTextOne.backgroundColor = nil;
    _ButtonTextTwo.backgroundColor = [UIColor lightGrayColor];
    _ButtonTextThree.backgroundColor = nil;
}
- (IBAction)ButtonTextThree:(UIButton *)sender {
    self.textfield.text = @"ЧЕБУРЕК";
    _ButtonTextOne.backgroundColor = nil;
    _ButtonTextTwo.backgroundColor = nil;
    _ButtonTextThree.backgroundColor = [UIColor lightGrayColor];
}



@end
