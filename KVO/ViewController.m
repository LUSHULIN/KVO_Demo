//
//  ViewController.m
//  KVO
//
//  Created by Jason on 26/03/2018.
//  Copyright © 2018 Jason. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+KVO.h"

@interface Message: NSObject

@property (nonatomic,copy)NSString *text;

@end

@implementation Message

@end


@interface ViewController ()

@property (nonatomic, strong)Message *message;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.message = [Message new];
    [self.message PG_addObserver:self forKey:NSStringFromSelector(@selector(text)) withBlock:^(id observedObject, NSString *observedKey, id oldValue, id newValue) {
        NSLog(@"%@.%@ is now:%@",observedObject,observedKey,newValue);
        dispatch_async(dispatch_get_main_queue(), ^{
            self.textField.text = newValue;
        });
    }];
   // [self buttonAction:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonAction:(UIButton *)sender {
    NSArray *msgs = @[@"Hello World!", @"Objective C", @"Swift", @"Peng Gu", @"peng.gu@me.com", @"www.gupeng.me", @"glowing.com"];
    NSUInteger index = arc4random_uniform((u_int32_t)msgs.count);
    self.message.text = msgs[index];
    
}
@end
