//
//  FirstTableViewCell.m
//  TableProject
//
//  Created by Konstantin Kalivod on 9/20/17.
//  Copyright © 2017 Kostya Kalivod. All rights reserved.
//

#import "FirstTableViewCell.h"

@interface FirstTableViewCell()

@property (nonatomic, weak) IBOutlet UIButton *btn;
@property (nonatomic, weak) IBOutlet UIImageView *iv;
@property (nonatomic, weak) IBOutlet UILabel *label;

@end

@implementation FirstTableViewCell

- (void)setString:(NSString *)string {
    self.label.text = string;
}

- (NSString *)string {
    return self.label.text;
}



- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
