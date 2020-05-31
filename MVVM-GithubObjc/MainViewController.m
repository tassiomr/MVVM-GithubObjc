//
//  ViewController.m
//  MVVM-GithubObjc
//
//  Created by Tássio Marcos Rocha on 31/05/20.
//  Copyright © 2020 Tássio Marcos Rocha. All rights reserved.
//

#import "MainViewController.h"
#import "GithubService.h"
#import "Repository.h"

@interface MainViewController ()
@property (nonnull, nonatomic) GithubService *service;
@property (nonatomic, nonnull) NSMutableArray<Repository *> *repositories;
@property (weak, nonatomic) IBOutlet UITableView *uiTableView;
@end

@implementation MainViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return  self.repositories.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	Repository *repository = self.repositories[indexPath.row];
	NSLog(@"%@", repository.language);

	UITableViewCell *cell = [[UITableViewCell alloc] init];

	cell.textLabel.text = repository.name;

	return  cell;
}

- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.service = [[GithubService alloc] init];
	[self setupController];
	self.uiTableView.delegate = self;
	// Do any additional setup after loading the view.
}


- (void) getHandlerFeedack:(NSMutableArray<Repository *> *) rep {
	_repositories = rep;
	[[self uiTableView] reloadData];
}

- (void) setupController {
	self.navigationItem.title = @"Repositories";
	self.navigationController.navigationBar.prefersLargeTitles = TRUE;
	
	[[self service] getRespositoryWithUsername:@"tassiomr" completion:^(NSMutableArray<Repository *> * _Nonnull respositories) {
		[self getHandlerFeedack:respositories];
	}];

}


@end
