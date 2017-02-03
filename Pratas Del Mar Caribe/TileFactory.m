//
//  TileFactory.m
//  Pratas Del Mar Caribe
//
//  Created by Erick Alberto Morales Ledesma on 02/02/17.
//  Copyright © 2017 Erick. All rights reserved.
//

#import "TileFactory.h"
#import "Tile.h"
#import <UIKit/UIKit.h>

@implementation TileFactory

-(NSArray*)tiles{
    
    NSMutableArray *arraytile = [[NSMutableArray alloc]init];
    
    for(int i=0;i<12;i++){
        Tile *tile = [[Tile alloc]init];
        tile.history = @"hi";
        [arraytile addObject:tile];
    }
    
    [arraytile[0] setHistory:@"Ha llegado un mapa en un bottella que parece indicarel camino a un tesoro. Es un ruta peligrosa como ecatepec o ciudad victoria pero ......... pues podria ser peor!!."];
    //[arraytile[0] setBackground:[UIImage imageNamed:@"PiratasMapa.png"]];
    
    [arraytile[1] setHistory:@"Te esta atacando la compañia de CCH Orient. Defiendete! (oh correeeee!!!)."];
    //[arraytile[1] setBackground:[UIImage imageNamed:@"PiratasAtaque.png"]];
    
    [arraytile[2] setHistory:@"Oh no tu Barco esta en llamas, intenta apagar el fuego y salir sin broncas!!."];
    //[arraytile[2] setBackground:[UIImage imageNamed:@"PiratasBarco.png"]];
    
    [arraytile[3] setHistory:@"Has llegado a Neza antes de la lopez, aqui puedes recuperarte y prepararte para continuar la aventura."];
    //[arraytile[3] setBackground:[UIImage imageNamed:@"PiratasComercio.png"]];
    
    [arraytile[4] setHistory:@"Has encontrado a un mafioso buena onda, Te va a mejorar el armamento."];
    //[arraytile[4] setBackground:[UIImage imageNamed:@"PiratasHerrero.png"]];
    
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
