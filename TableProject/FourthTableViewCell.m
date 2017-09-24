//
//  FourthTableViewCell.m
//  TableProject
//
//  Created by Konstantin Kalivod on 9/24/17.
//  Copyright © 2017 Kostya Kalivod. All rights reserved.
//

#import "FourthTableViewCell.h"
@interface FourthTableViewCell()
@property (nonatomic, weak) IBOutlet UIButton *ButtonChange;
@property (nonatomic, weak) IBOutlet UIImageView *Image;
@property (strong, nonatomic)NSMutableArray *ColorArr;
@end
@implementation FourthTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)ButtonChange:(UIButton *)sender {
    self.ColorArr = [[NSMutableArray alloc] initWithObjects:
                     [UIColor redColor],
                     [UIColor greenColor],
                     [UIColor grayColor],
                     [UIColor yellowColor],
                     [UIColor blueColor],
                     [UIColor cyanColor],
                     [UIColor darkGrayColor],
                     [UIColor magentaColor],nil];
    _Image.backgroundColor = [self.ColorArr objectAtIndex:(arc4random() % (self.ColorArr.count))];}
@end
