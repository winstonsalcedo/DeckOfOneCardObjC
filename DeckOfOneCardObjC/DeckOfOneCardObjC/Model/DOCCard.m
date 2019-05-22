//
//  DOCCard.m
//  DeckOfOneCardObjC
//
//  Created by winston salcedo on 5/21/19.
//  Copyright © 2019 Evolve Technologies. All rights reserved.
//

#import "DOCCard.h"

@implementation DOCCard

-(instancetype)initObjectWithValue:(NSString *)value suit:(NSString *)suit code:(NSString *)code imageUrl:(NSString *)imageUrl
{
    self = [super init];
    if (self) {
        _value = value;
        _suit = suit;
        _code = code;
        _imageUrl = imageUrl;
        
        
    }
    return self;
}
-(instancetype)initWithJsonDictionary:(NSDictionary *)dictionary;
{
    NSString *valueFromJson = dictionary[@"value"];
    NSString *suitFromJson = dictionary[@"suit"];
    NSString *codeFromJson = dictionary[@"code"];
    NSString *imageUrl = dictionary[@"imageUrl"];
    
    return [self initObjectWithValue:valueFromJson suit:suitFromJson code:codeFromJson imageUrl:imageUrl];
}


@end
