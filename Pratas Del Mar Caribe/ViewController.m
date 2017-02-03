//
//  ViewController.m
//  Pratas Del Mar Caribe
//
//  Created by Erick on 02/02/17.
//  Copyright © 2017 Erick. All rights reserved.
//

#import "ViewController.h"
#import "TileFactory.h"
#import "Tile.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    TileFactory *factory = [[TileFactory alloc]init];
    self.tiles = [factory tiles];
    
    self.currentPosition = CGPointMake(0, 0);
    
    [self updateTile];
}

-(void) updateTile{
    Tile *currentTile = [[self.tiles objectAtIndex:self.currentPosition.x] objectAtIndex:self.currentPosition.y];
    [self.TextViewHistory setText:currentTile.history];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)acrionPressed:(UIButton *)sender {
}

- (IBAction)arrowPressed:(UIButton *)sender{
    
    int buttonTag = (int)sender.tag;
    
    switch (buttonTag) {
        case 0:
            NSLog(@"N");
            break;
        
        case 1:
            NSLog(@"S");
            break;
            
        case 2:
            NSLog(@"W");
            break;
            
        case 3:
            NSLog(@"E");
            break;
            
        default:
            break;
    }
    
}
@end
