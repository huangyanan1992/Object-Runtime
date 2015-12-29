//
//  ViewController.m
//  Object+Runtime
//
//  Created by 丁丁 on 15/12/29.
//  Copyright © 2015年 huangyanan. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+Runtime.h"

@interface ViewController ()<UITextFieldDelegate,UIScrollViewDelegate>

@property (nonatomic, strong)NSString *str;
@property (nonatomic, weak)UIButton *button;
@property (nonatomic, assign)NSInteger count;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *className = [ViewController className];
    NSString *superName = [ViewController superClassName];
    NSLog(@"%@,%@",className,superName);
    
    NSDictionary *dic = [self propertyDictionary];
    NSLog(@"%@",dic);
    
    NSLog(@"%@",[self propertyKeys]);
    
    NSLog(@"%@",[self propertiesInfo]);
    
    NSLog(@"%@",[[self class] propertiesWithCodeFormat]);
    
    NSLog(@"%@",[[self class] methodList]);
    
    NSLog(@"%@",[self methodList]);
    
    //这里str，明明是个get方法，为什么是两个参数，OC的消息机制objc_mgsSend(class,SEL)
    NSLog(@"%@",[self methodListInfo]);
    
    NSLog(@"%@",[[self class] instanceVariable]);
    
    NSLog(@"%@",[self protocolList]);
    
}


@end
