//
//  DOCCard.h
//  DeckOfOneCardObjC
//
//  Created by winston salcedo on 5/21/19.
//  Copyright © 2019 Evolve Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DOCCard : NSObject
//
@property (nonatomic, copy, readonly) NSString *value;
@property (nonatomic, readonly) NSString *suit;
@property (nonatomic, readonly) NSString *code;
@property (nonatomic, copy, readonly) NSString *imageUrl;


-(instancetype)initObjectWithValue:(NSString *)value suit:(NSString *)suit code:(NSString *)code imageUrl:(NSString *)imageUrl;

-(instancetype)initWithJsonDictionary: (NSDictionary<NSString *, id> *)dictionary;


@end

NS_ASSUME_NONNULL_END

