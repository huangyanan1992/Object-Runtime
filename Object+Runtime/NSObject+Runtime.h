//
//  NSObject+Runtime.h
//  Object+Runtime
//
//  Created by 丁丁 on 15/12/29.
//  Copyright © 2015年 huangyanan. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface NSObject (Runtime)
//类名
- (NSString *)className;
+ (NSString *)className;

//父类名称
- (NSString *)superClassName;
+ (NSString *)superClassName;

//实例属性字典
- (NSDictionary *)propertyDictionary;

//属性名列表
- (NSArray*)propertyKeys;
+ (NSArray *)propertyKeys;

//属性详细信息列表
- (NSArray *)propertiesInfo;
+ (NSArray *)propertiesInfo;

/**
 *  格式化后的属性列表
 *
 *  @return "@property (nonatomic, strong) NSString* str;"
 */
+ (NSArray *)propertiesWithCodeFormat;

//方法列表
- (NSArray*)methodList;
+ (NSArray*)methodList;

/**
 *  方法信息列表
 *
 *  @return {
         arguments =         (
         id,
         SEL,
         ...
         );
         argumentsCount = n;
         name = str;
         returnType = id;
     }
 */
- (NSArray*)methodListInfo;

//实例变量
+ (NSArray *)instanceVariable;

//协议列表
- (NSDictionary *)protocolList;
+ (NSDictionary *)protocolList;

@end
