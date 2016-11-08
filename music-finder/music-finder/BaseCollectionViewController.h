//
//  BaseCollectionViewController.h
//  music-finder
//
//  Created by Lizzy Randall on 11/5/16.
//  Copyright © 2016 Lizzy Randall. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseCollectionViewController : UICollectionViewController

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

//overrride with data
- (NSArray*)categories;
- (NSArray*)images;
- (NSArray*)songs;

- (NSInteger)numberOfSections;
- (NSInteger)numberOfItems;
- (NSString*)titleText;

@end
