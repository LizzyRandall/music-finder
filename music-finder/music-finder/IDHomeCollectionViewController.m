//
//  IDHomeCollectionViewController.m
//  music-finder
//
//  Created by Lizzy Randall on 11/5/16.
//  Copyright © 2016 Lizzy Randall. All rights reserved.
//

#import "IDHomeCollectionViewController.h"

@interface IDHomeCollectionViewController ()

@end

@implementation IDHomeCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   [self.navigationItem setTitle:@"my title"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSArray*)categories{
    return @[@"Top of the world", @"Angry", @"At peace", @"Thankful", @"Help me", @"Confused", @"Worried", @"Confident"];
}

- (NSArray*)images {
    return @[@"panel1.png", @"panel2.png", @"panel3.png", @"panel4.png", @"panel5.png", @"panel6.png", @"panel8.png", @"panel7.png"];
}

- (NSArray*)songs {
    return @[@[@"Top of the world - Imagine Dragons", @"Your Love is a Song - Switchfoot", @"Happy - Pharell Williams", @"Happy Day - Sister Act", @"Best Day of my Life - American Authors", @"Amazing Day - Chris Tomlin", @"Celebrate - Kool and the Gang"], @[@"Jesus Loves Me"], @[@"The Precipice - The Classic Crime"], @[@"40 - U2"], @[@"Help me"], @[@"Life is Confusing"], @[@"Don't Worry, Be Happy"], @[@"The Precipice - The Classic Crime"]];
}


- (NSInteger)numberOfSections {
    return 4;
}

- (NSInteger)numberOfItems {
    return 2;
}

- (NSString*)titleText {
    return @"What's your state of mind";
}


@end
