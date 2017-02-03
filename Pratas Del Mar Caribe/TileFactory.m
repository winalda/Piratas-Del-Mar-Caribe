//
//  TileFactory.m
//  Pratas Del Mar Caribe
//
//  Created by Erick Alberto Morales Ledesma on 02/02/17.
//  Copyright © 2017 Erick. All rights reserved.
//

#import "TileFactory.h"
#import "Tile.h"

@implementation TileFactory

-(NSArray*)tiles{
    
    NSMutableArray *arraytile = [[NSMutableArray alloc]init];
    
    for(int i=0;i<12;i++){
        Tile *tile = [[Tile alloc]init];
        tile.history =  [NSString stringWithFormat:@"Tile %i",i];
        [arraytile addObject:tile];
    }
    
    NSMutableArray *col1 = [[NSMutableArray alloc]init];
    NSMutableArray *col2 = [[NSMutableArray alloc]init];
    NSMutableArray *col3 = [[NSMutableArray alloc]init];
    NSMutableArray *col4 = [[NSMutableArray alloc]init];
    
    for(int i=0;i<arraytile.count;i++){
        
        if(i<3)
        {
            [col1 addObject:arraytile[i]];
        }else if(i<6)
        {
            [col2 addObject:arraytile[i]];
        }else if(i<9)
        {
            [col3 addObject:arraytile[i]];
        }else
        {
            [col4 addObject:arraytile[i]];
        }
        
    }
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:col1,col2,col3,col4, nil];
    
    return tiles;
}

@end
