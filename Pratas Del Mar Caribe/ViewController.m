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
    
    self.currentPosition = CGPointMake(0,0);

    
    [self updateTile];
    [self updateArrowButtons];
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
            self.currentPosition = CGPointMake(self.currentPosition.x,self.currentPosition.y-1);
            break;
        
        case 1:
            NSLog(@"S");
            self.currentPosition = CGPointMake(self.currentPosition.x,self.currentPosition.y+1);
            break;
            
        case 2:
            NSLog(@"W");
            self.currentPosition = CGPointMake(self.currentPosition.x-1,self.currentPosition.y);
            break;
            
        case 3:
            NSLog(@"E");
            self.currentPosition = CGPointMake(self.currentPosition.x+1,self.currentPosition.y);
            break;
            
        default:
            break;
    }
    [self updateArrowButtons];
    [self updateTile];
}

-(void)updateArrowButtons{
    
    self.buttonN.hidden = ![self canMoveToPoint:CGPointMake(self.currentPosition.x, self.currentPosition.y-1)];
    self.buttonS.hidden = ![self canMoveToPoint:CGPointMake(self.currentPosition.x, self.currentPosition.y+1)];
    self.buttonW.hidden = ![self canMoveToPoint:CGPointMake(self.currentPosition.x-1, self.currentPosition.y)];
    self.buttonE.hidden = ![self canMoveToPoint:CGPointMake(self.currentPosition.x+1, self.currentPosition.y)];
    
}

- (BOOL) canMoveToPoint:(CGPoint)point{
    
    if(point.x<0) //me paso por W
    {
        return NO;
    }
    if(point.y<0) //me paso por N
    {
        return NO;
    }
    if(point.x >= self.tiles.count) //me paso por E
    {
        return NO;
    }
    if(point.y >= [[self.tiles objectAtIndex:point.x]count]) //me paso po S
    {
        return NO;
    }
    
    return YES;
}
@end
