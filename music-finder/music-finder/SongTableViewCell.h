//
//  SongTableViewCell.h
//  music-finder
//
//  Created by Lizzy Randall on 11/5/16.
//  Copyright © 2016 Lizzy Randall. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SongTableViewCell : UITableViewCell

@property(weak, nonatomic) IBOutlet UILabel *songName;
@property(weak, nonatomic) IBOutlet UIButton *info;

@end
