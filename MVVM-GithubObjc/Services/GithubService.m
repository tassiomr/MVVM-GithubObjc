//
//  GithubService.m
//  MVVM-GithubObjc
//
//  Created by Tássio Marcos Rocha on 31/05/20.
//  Copyright © 2020 Tássio Marcos Rocha. All rights reserved.
//

#import "GithubService.h"
#import "Repository.h"

@implementation GithubService
- (NSMutableArray *)getRespositoryWithUsername:(NSString *)username {
	NSMutableArray<Repository *> *repos = @[];
	NSURLSession *defaultSession = [NSURLSession sessionWithConfiguration:NSURLSessionConfiguration.defaultSessionConfiguration];
	NSURLSessionDataTask *dataTask;
	
	[dataTask cancel];
	NSURLComponents *urlComponent = [NSURLComponents componentsWithString:@"https://api.github.com/users/tassiomr/repos"];
	
	dataTask = [defaultSession dataTaskWithURL:urlComponent.URL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
		if(error != nil) {
			
		} else {
			NSHTTPURLResponse *resp = (NSHTTPURLResponse*) response;
			if(resp.statusCode == 200) {
				NSError *error;
				NSArray *dataSerialized = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
				
				if(error != nil) {
					NSLog(@"%@", error);
				}
				
				for(NSDictionary *repo in dataSerialized) {
					Repository *repository = [[Repository alloc] initWithRepo:repo[@"id"] name:repo[@"full_names"] privateRepo:repo[@"private"] htmlUrl:repo[@"html_url"] language:repo[@"language"]];
					[repos addObject:repository];
				}
			}
		}
	}];
	
	[dataTask resume];
	
	return repos;
}
@end
