//
//  Repository.m
//  MVVM-GithubObjc
//
//  Created by Tássio Marcos Rocha on 31/05/20.
//  Copyright © 2020 Tássio Marcos Rocha. All rights reserved.
//

#import "Repository.h"

@implementation Repository
- (instancetype)initWithRepo:(NSString *)uuid name:(NSString *)name privateRepo:(NSString *)privateRepo htmlUrl:(NSString *)htmlUrl language:(NSString *)language {
	if(self = [super init]) {
		_uuid = uuid;
		_name = name;
		_privateRepo = privateRepo;
		_htmlUrl = htmlUrl;
		_language = language;
	}
	return self;
}
@end
