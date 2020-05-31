//
//  GithubService.h
//  MVVM-GithubObjc
//
//  Created by Tássio Marcos Rocha on 31/05/20.
//  Copyright © 2020 Tássio Marcos Rocha. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GithubService : NSObject
-(NSMutableArray *) getRespositoryWithUsername:(NSString *) username;
@end

NS_ASSUME_NONNULL_END
