//
//  SecondTableViewCell.m
//  TableProject
//
//  Created by Konstantin Kalivod on 9/24/17.
//  Copyright © 2017 Kostya Kalivod. All rights reserved.
//

#import "SecondTableViewCell.h"
@interface SecondTableViewCell()
@property (nonatomic, weak) IBOutlet UIButton *ButtonClear;
@property (nonatomic, weak) IBOutlet UITextField *textfield;

@end
@implementation SecondTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)ButtonClear:(UIButton *)sender {
    self.textfield.text = nil;
}


@end
