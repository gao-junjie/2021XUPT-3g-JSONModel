//
//  TestModel.h
//  JSONModel的使用
//
//  Created by mac on 2021/10/12.
//  Copyright © 2021 mac. All rights reserved.
//

@protocol StoriesModel
@end

@protocol Top_StoriesModel
@end

#import "JSONModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface StoriesModel : JSONModel
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *ga_prefix;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSString *image_hue;
@property (nonatomic, copy) NSString *id;
@end

@interface Top_StoriesModel : JSONModel
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *ga_prefix;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSString *image_hue;
@property (nonatomic, copy) NSString *id;
@end

@interface TestModel : JSONModel
@property (nonatomic, copy) NSString *date;
@property (nonatomic, copy) NSArray<StoriesModel> *stories;
@property (nonatomic, copy) NSArray<Top_StoriesModel> *top_stories;
@end

NS_ASSUME_NONNULL_END
