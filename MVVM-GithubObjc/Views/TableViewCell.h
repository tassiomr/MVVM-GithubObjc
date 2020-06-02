//
//  TableViewCell.h
//  MVVM-GithubObjc
//
//  Created by Tássio Marcos Rocha on 31/05/20.
//  Copyright © 2020 Tássio Marcos Rocha. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *uiImageView;
@property (weak, nonatomic) IBOutlet UILabel *uiReponame;
@property (weak, nonatomic) IBOutlet UILabel *uiRepoUrl;

@end

NS_ASSUME_NONNULL_END
