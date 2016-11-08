//
//  LabeledCollectionViewCell.h
//  music-finder
//
//  Created by Lizzy Randall on 11/5/16.
//  Copyright © 2016 Lizzy Randall. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LabeledCollectionViewCell : UICollectionViewCell

- (void)setImage:(NSString*)imagePath category:(NSString*)category;
- (NSString*)cellText;

@end
