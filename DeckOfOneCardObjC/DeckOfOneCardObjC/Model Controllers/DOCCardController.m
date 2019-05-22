//
//  DOCCardController.m
//  DeckOfOneCardObjC
//
//  Created by winston salcedo on 5/21/19.
//  Copyright © 2019 Evolve Technologies. All rights reserved.
//

#import "DOCCardController.h"

@implementation DOCCardController

+ (void)fetchCardFrom:(NSString *)value completion:(void (^)(DOCCard * _Nullable))completion
{
    //Contruct the url
    NSURL *baseUrl = [NSURL URLWithString: @"https://deckofcardsapi.com/api/deck/"];
    NSURL *fullUrl = [[[baseUrl URLByAppendingPathComponent:@"new"] URLByAppendingPathComponent:@"draw"] URLByAppendingPathComponent:@"count"];
    
    NSLog(@"%@", [fullUrl absoluteString]);
    
    //retrieve the data from the web api
    [[[NSURLSession sharedSession] dataTaskWithURL:fullUrl completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            NSLog(@"There was an error in %s: %@, %@,",__PRETTY_FUNCTION__, error, [error localizedDescription]);
            completion(nil);
            return;
        }
        if (data){
            NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:data options:(0) error:&error];
            DOCCard *card = [[DOCCard alloc] initWithJsonDictionary:jsonDictionary];
            completion(card);
            return;
        }
        completion(nil);
    }]resume];
}

+ (void)fetchCardImageFromUrlString:(NSString *)UrlString completion:(void (^)(DOCCard * _Nullable))completion

{
    NSURL *url = [NSURL URLWithString:UrlString];
    NSLog(@"%@", [url absoluteString]);
    
    [[[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            NSLog(@"There was an error in %s: %@, %@,",__PRETTY_FUNCTION__, error, [error localizedDescription]);
            completion(nil);
            return;
            
        }
        if(data){
            UIImage *cardImage = [UIImage imageWithData:data];
            completion(cardImage);
            return;
        }
        completion(nil);
    }]resume];
}

@end
