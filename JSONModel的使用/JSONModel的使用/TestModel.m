//
//  TestModel.m
//  JSONModel的使用
//
//  Created by mac on 2021/10/12.
//  Copyright © 2021 mac. All rights reserved.
//

#import "TestModel.h"

@implementation Top_StoriesModel

+ (BOOL)propertyIsOptional:(NSString *)propertyName {
    return YES;
}
@end

@implementation StoriesModel
+ (BOOL)propertyIsOptional:(NSString *)propertyName {
    return YES;
}
@end

@implementation TestModel
+ (BOOL)propertyIsOptional:(NSString *)propertyName {
    return YES;
}

@end
