//
//  ViewController.m
//  TableProject
//
//  Created by Konstantin Kalivod on 9/17/17.
//  Copyright © 2017 Kostya Kalivod. All rights reserved.
//

#import "ViewController.h"
#import "FirstTableViewCell.h"
#import "SecondTableViewCell.h"
#import "ThirdTableViewCell.h"
#import "FourthTableViewCell.h"




@interface ViewController () <UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic)NSMutableArray *ColorArr;
@property (strong, nonatomic)NSMutableArray *DataArr;
@property (strong, nonatomic)NSArray *StringArr1;
@property (strong, nonatomic)NSArray *StringArr2;
@property (strong, nonatomic)NSArray *StringArr3;
@property (nonatomic, assign)NSInteger FirstAmount;
@property (nonatomic, assign)NSInteger SecondAmount;
@property (nonatomic, assign)NSInteger ThirdAmount;


@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.ColorArr = [[NSMutableArray alloc] initWithObjects:
                     [UIColor redColor],
                     [UIColor greenColor],
                     [UIColor grayColor],
                     [UIColor yellowColor],
                     [UIColor blueColor],
                     [UIColor cyanColor],
                     [UIColor darkGrayColor],
                     [UIColor magentaColor],nil];
    self.StringArr1 =[[NSArray alloc] initWithObjects:@"MyCustomeCell",@"MyCustomCellTwo",nil];
    self.StringArr2 =[[NSArray alloc] initWithObjects:@"Str21",@"Str22",@"Str23",@"Str24",@"Str25",@"Str26",@"Str27",nil];
    self.StringArr3 =[[NSArray alloc] initWithObjects:@"Str31",@"Str32",@"Str33",@"Str34",@"Str35",@"Str36",nil];
    self.FirstAmount = 2;
    self.SecondAmount = 3;
    self.ThirdAmount = 4;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)TableView
{
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if(section == 0){
        return self.FirstAmount;
        
    }
    else if (section == 1){
        return self.SecondAmount;
    }
    else {
        return self.ThirdAmount;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"MyCustomeCell";
    static NSString *cellIdentifierTwo = @"MyCustomCellTwo";
    static NSString *cellIdentifierThree = @"MyCustomCellThree";
    static NSString *cellIdentifierFour = @"MyCustomCellFour";

//    FirstTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (indexPath.section == 0){
        if (indexPath.row == 0) {
            ThirdTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifierThree];
            return cell;
        } else {
            FirstTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
            return cell;
        }
    }
    else if (indexPath.section == 1) {
        if (indexPath.row ==0){
            FourthTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifierFour];
            return cell;
        } else if (indexPath.row == 1) {
            FirstTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
            return cell;
        } else  {
            ThirdTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifierThree];
            return cell;

        }
    }
     else{
         if (indexPath.row ==0){
             FourthTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifierFour];
             return cell;
         } else if (indexPath.row == 1) {
             FirstTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
             return cell;
         } else if (indexPath.row == 2) {
             ThirdTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifierThree];
             return cell;
         } else {
             SecondTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifierTwo];
             return cell;
         }}}

    
//    UITableViewCell  *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
//    
    
//    if (indexPath.section == 0)
//    {
//        //cell.textLabel.text=@"Hello2";
//
//        cell.textLabel.text=[self.StringArr1 objectAtIndex:(arc4random() % (self.StringArr1.count))];
//        cell.imageView.image = [UIImage imageNamed:@"EmptyPng.png"];
//        cell.imageView.backgroundColor = [self.ColorArr objectAtIndex:(arc4random() % (self.ColorArr.count))];
//
////        cell.backgroundColor = [self.ColorArr objectAtIndex:(arc4random() % (self.ColorArr.count))];
//    }
//    else if (indexPath.section == 1){
//        cell.textLabel.text=[self.StringArr2 objectAtIndex:(arc4random() % (self.StringArr2.count))];
//        cell.imageView.image = [UIImage imageNamed:@"EmptyPng.png"];
//        cell.imageView.backgroundColor = [self.ColorArr objectAtIndex:(arc4random() % (self.ColorArr.count))];
////        cell.backgroundColor = [self.ColorArr objectAtIndex:(arc4random() % (self.ColorArr.count))];
//        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
//
//    }
//    else {
//        cell.textLabel.text=[self.StringArr3 objectAtIndex:(arc4random() % (self.StringArr3.count))];
//        cell.imageView.image = [UIImage imageNamed:@"EmptyPng.png"];
//        cell.imageView.backgroundColor = [self.ColorArr objectAtIndex:(arc4random() % (self.ColorArr.count))];
////        cell.backgroundColor = [self.ColorArr objectAtIndex:(arc4random() % (self.ColorArr.count))];
//
//    }
//    
//    return cell;

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return @"Section 1";
    } else if (section == 1) {
        return @"Section 2";
    } else {
        return @"Section 3";
    }
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"%@",indexPath);
    NSLog(@"Section=%ld,Cell=%ld",(long)indexPath.section, indexPath.row);
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (IBAction)tapGesture:(UITapGestureRecognizer *)sender {
    [self.view endEditing:YES];
}
@end
