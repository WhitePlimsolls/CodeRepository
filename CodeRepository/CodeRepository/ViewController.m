//
//  ViewController.m
//  CodeRepository
//
//  Created by GZCP1897 on 2017/10/26.
//  Copyright © 2017年 GZCP1897. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /*
     u_int count;
     //class_copyMethodList 获取类的所有方法列表
     Method *mothList_f = class_copyMethodList(LSApplicationWorkspace_class,&count) ;
     for (int i = 0; i < count; i++) {
     Method temp_f = mothList_f[i];
     // method_getImplementation  由Method得到IMP函数指针
     IMP imp_f = method_getImplementation(temp_f);
     
     // method_getName由Method得到SEL
     SEL name_f = method_getName(temp_f);
     
     const char * name_s = sel_getName(name_f);
     // method_getNumberOfArguments  由Method得到参数个数
     int arguments = method_getNumberOfArguments(temp_f);
     // method_getTypeEncoding  由Method得到Encoding 类型
     const char * encoding = method_getTypeEncoding(temp_f);
     
     NSLog(@"方法名：%@\n,参数个数：%d\n,编码方式：%@\n",[NSString stringWithUTF8String:name_s],
     arguments,[NSString stringWithUTF8String:encoding]);
     }
     free(mothList_f);
     
     
     
     
     u_int count1;
     
     //使用class_copyPropertyList及property_getName获取类的属性列表及每个属性的名称
     
     objc_property_t *properties  =class_copyPropertyList(LSApplicationWorkspace_class, &count1);
     NSMutableArray *propertiesArray = [NSMutableArray arrayWithCapacity:count1];
     for (int i = 0; i<count1; i++)
     {
     const char* propertyName =property_getName(properties[i]);
     NSLog(@"属性%@\n",[NSString stringWithUTF8String: propertyName]);
     [propertiesArray addObject: [NSString stringWithUTF8String: propertyName]];
     }
     free(properties);*/
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
