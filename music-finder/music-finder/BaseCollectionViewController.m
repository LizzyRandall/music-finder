//
//  BaseCollectionViewController.m
//  music-finder
//
//  Created by Lizzy Randall on 11/5/16.
//  Copyright © 2016 Lizzy Randall. All rights reserved.
//

#import "BaseCollectionViewController.h"
#import "LabeledCollectionViewCell.h"
#import "PlaylistViewController.h"
#import "SOMCategory.h"

@interface BaseCollectionViewController ()

@property (strong, nonatomic) NSDictionary *categoryImages;
@property (nonatomic) NSInteger count;

@end

@implementation BaseCollectionViewController

static NSString * const reuseIdentifier = @"IDCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.collectionView registerNib:[UINib nibWithNibName:@"LabeledCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:reuseIdentifier];
    
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    
    self.collectionView.contentInset = UIEdgeInsetsMake(80, 0, 0, 0);
    
    self.collectionView.backgroundColor = [UIColor blackColor];
    self.title = self.titleText;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSArray*)categories {
    return @[];
}

- (NSArray*)images {
    return @[];
}

- (NSArray*)songs {
    return @[];
}

- (NSInteger)numberOfSections{
    return 0;
}

- (NSInteger)numberOfItems{
    return 0;
}

- (NSString*)titleText {
    return @"Title";
}


/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
#warning Incomplete implementation, return the number of sections
    return self.numberOfSections;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of items
    return self.numberOfItems;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    LabeledCollectionViewCell *cell = (LabeledCollectionViewCell*)[collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    //NSInteger index = indexPath.s
    [cell setImage:self.images[self.count]
          category:self.categories[self.count]];
    self.count++;
    
    return cell;
}
#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath  {
    
    PlaylistViewController *playlist = [[PlaylistViewController alloc] initWithNibName:@"PlaylistViewController" bundle:nil];
    
    LabeledCollectionViewCell *cell = (LabeledCollectionViewCell*)[self.collectionView cellForItemAtIndexPath:indexPath];
    [playlist setSongsWithArray:self.songs[indexPath.row] category:cell.cellText];
    
    [self presentViewController:playlist animated:YES completion:nil];

    //[self.navigationController presentViewController:playlist animated:YES completion:nil];
}

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
