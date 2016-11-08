//
//  PlaylistViewController.h
//  music-finder
//
//  Created by Lizzy Randall on 11/5/16.
//  Copyright © 2016 Lizzy Randall. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlaylistViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UILabel *category;
@property (weak, nonatomic) IBOutlet UITextView *bibleVerse;
@property (weak, nonatomic) IBOutlet UIButton *xButton;

- (void)setSongsWithArray:(NSArray*)songs category:(NSString*)category;

@end
