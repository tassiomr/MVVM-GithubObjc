//
//  Repository.h
//  MVVM-GithubObjc
//
//  Created by Tássio Marcos Rocha on 31/05/20.
//  Copyright © 2020 Tássio Marcos Rocha. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Repository : NSObject
@property (nonnull, nonatomic) NSString *uuid;
@property (nonnull, nonatomic) NSString *name;
@property (nonnull, nonatomic) NSString *privateRepo;
@property (nonnull, nonatomic) NSString *htmlUrl;
@property (nonnull, nonatomic) NSString *language;

-(instancetype) initWithRepo: (NSString *) uuid name: (NSString *) name privateRepo: (NSString *) privateRepo htmlUrl: (NSString *) htmlUrl language: (NSString *) language;
@end

NS_ASSUME_NONNULL_END
