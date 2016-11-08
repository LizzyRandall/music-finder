//
//  LabeledCollectionViewCell.m
//  music-finder
//
//  Created by Lizzy Randall on 11/5/16.
//  Copyright © 2016 Lizzy Randall. All rights reserved.
//

#import "LabeledCollectionViewCell.h"

@interface LabeledCollectionViewCell()
@property (weak, nonatomic) IBOutlet UILabel *categoryLabel;

@end

@implementation LabeledCollectionViewCell

static float const pannelAlpha = 1;

- (void)awakeFromNib {
    // Initialization code
}

- (NSString*)cellText{
    return self.categoryLabel.text;
}

- (void)setImage:(NSString*)imagePath category:(NSString*)category
{
    self.categoryLabel.text = category;
    UIImageView *view = [[UIImageView alloc]initWithFrame:self.backgroundView.frame];
    view.alpha = pannelAlpha;
    [view setImage:[UIImage imageNamed:imagePath]];
    self.backgroundView = view;
}

@end
