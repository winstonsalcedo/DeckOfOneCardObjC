//
//  DOCCardController.h
//  DeckOfOneCardObjC
//
//  Created by winston salcedo on 5/21/19.
//  Copyright © 2019 Evolve Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DOCCard.h"

NS_ASSUME_NONNULL_BEGIN

@interface DOCCardController : NSObject

+(void) fetchCardWith: (NSString *)value completion: (void (^) (DOCCard * _Nullable ))completion;

+(void) fetchCardImageFromUrlString: (NSString *)UrlString completion: (void (^) (DOCCard * _Nullable))completion;

@end

NS_ASSUME_NONNULL_END
