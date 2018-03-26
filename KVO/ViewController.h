//
//  ViewController.h
//  KVO
//
//  Created by Jason on 26/03/2018.
//  Copyright © 2018 Jason. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textField;
- (IBAction)buttonAction:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

