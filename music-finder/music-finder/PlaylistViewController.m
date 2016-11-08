//
//  PlaylistViewController.m
//  music-finder
//
//  Created by Lizzy Randall on 11/5/16.
//  Copyright © 2016 Lizzy Randall. All rights reserved.
//

#import "PlaylistViewController.h"
#import "SongTableViewCell.h"

@interface PlaylistViewController ()

@property (strong, nonatomic) NSArray *songs;
@property (nonatomic) NSInteger index;

@end

@implementation PlaylistViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"SongTableViewCell" bundle:nil] forCellReuseIdentifier:@"SongCell"];

    self.bibleVerse.text = [self PickBibleVerse];
    // Do any additional setup after loading the view from its nib.
}

- (NSString*)PickBibleVerse {
    return self.bibleVerses[self.index];
}

- (NSArray*)bibleVerses {
    return @[@"For you, O Lord, have made me glad by your work; at the works of your hands I sing for joy. - Psalm 92:4"], @[@"Know this, my beloved brothers: let every person be quick to hear, slow to speak, slow to anger; for the anger of man does not produce the righteousness of God. - James 1:19-20"], @[@"But godliness with contentment is great gain, for we brought nothing into the world, and[a] we cannot take anything out of the world. - 1 Timothy 6:6-7"], @[@"Praise the Lord! Oh give thanks to the Lord, for he is good, for his steadfast love endures forever! - Psalm 106:1"], @[@"God is our refuge and strength, a very present help in trouble. - Psalm 46:1"], @[@"Trust in the Lord with all your heart, and do not lean on your own understanding. In all your ways acknowledge him, and he will make straight your paths. - Proverbs 3:5-6"], @[@"Therefore I tell you, do not be anxious about your life, what you will eat or what you will drink, nor about your body, what you will put on. Is not life more than food, and the body more than clothing? Look at the birds of the air: they neither sow nor reap nor gather into barns, and yet your heavenly Father feeds them. Are you not of more value than they? - Mattthew 5:25-26"], @[@"But blessed is the one who trusts in the LORD, whose confidence is in him. - Jeremiah 17:7"];
}

- (NSArray*)categories {
    return @[@"Top of the world", @"Angry", @"At peace", @"Thankful", @"Help me", @"Confused", @"Worried", @"Confident"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setSongsWithArray:(NSArray*)songs category:(NSString*)category{
    self.category.text = category;
    self.songs = songs;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
     SongTableViewCell *cell = (SongTableViewCell*)[tableView dequeueReusableCellWithIdentifier: @"SongCell" forIndexPath:indexPath];
    cell.songName.text = self.songs[indexPath.row];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section{
    return self.songs.count;
}

- (IBAction)btnClicked:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
