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
        //tile.history = @"hi";
        //tile.backGroundImage = [UIImage imageNamed:@"PiratasMapa.png"];
        [arraytile addObject:tile];
    }
    
    [arraytile[0] setHistory:@"Ha llegado un mapa en un bottella que parece indicarel camino a un tesoro. Es un ruta peligrosa como ecatepec o ciudad victoria pero ......... pues podria ser peor!!."];
    [arraytile[0] setBackGroundImage:[UIImage imageNamed:@"PiratasMapa.png"]];
    [arraytile[0] setActionButtonTitle:@"A la aventura!!"];
    
    [arraytile[1] setHistory:@"Te esta atacando la compañia de CCH Orient. Defiendete! (oh correeeee!!!)."];
    [arraytile[1] setBackGroundImage:[UIImage imageNamed:@"PiratasAtaque.png"]];
    [arraytile[1] setHealthEffet:-150];
    [arraytile[1] setActionButtonTitle:@"Defenderse"];
    
    [arraytile[2] setHistory:@"Oh no tu Barco esta en llamas, intenta apagar el fuego y salir sin broncas!!."];
    [arraytile[2] setBackGroundImage:[UIImage imageNamed:@"PiratasBarco.png"]];
    [arraytile[2] setHealthEffet:-100];
    [arraytile[2] setActionButtonTitle:@"Apagar fuego"];
    
    [arraytile[3] setHistory:@"Has llegado a Neza antes de la lopez, aqui puedes recuperarte y prepararte para continuar la aventura."];
    [arraytile[3] setBackGroundImage:[UIImage imageNamed:@"PiratasComercio.png"]];
    [arraytile[3] setHealthEffet: 200];
    [arraytile[3] setActionButtonTitle:@"Ir a la taberna!!"];
    
    [arraytile[4] setHistory:@"Has encontrado a un mafioso buena onda, Te va a mejorar el armamento."];
    [arraytile[4] setBackGroundImage:[UIImage imageNamed:@"PiratasHerrero.png"]];
    Armor * armor = [[Armor alloc]init];
    armor.name = @"Blacksmith armor";
    armor.health = 250;
    [arraytile[4] setArmor:armor];
    [arraytile[4] setHealthEffet:100];
    [arraytile[4] setActionButtonTitle:@"Mejorar armadura!"];
    
    [arraytile[5] setHistory:@"Cuidado! El Kraen te esta atcando. !Defiende tu barco e intenta evitar que te mate!"];
    [arraytile[5] setBackGroundImage:[UIImage imageNamed:@"PiratasKraken.png"]];
    [arraytile[5] setHealthEffet:-200];
    [arraytile[5] setActionButtonTitle:@"Defenderse del Kraken!"];
    
    [arraytile[6] setHistory:@"Has encontrado a un loro. No para de repetir 'Dos hay, uno huesos contiene, otro monedas de oro contiene. Encuentra el camino correcto', ¿Quieres equparte al loro?"];
    [arraytile[6] setBackGroundImage:[UIImage imageNamed:@"PiratasLoro.png"]];
    Weapon *weapon = [[Weapon alloc]init];
    weapon.name = @"Parrot";
    weapon.damage = 300;
    [arraytile[6] setWeapon:weapon];
    [arraytile[6] setActionButtonTitle:@"Equipar Loro!"];
    
    [arraytile[7] setHistory:@"Un motin en el barco! Demuestra tu poder para que no te hagan caminar por la tabla."];
    [arraytile[7] setBackGroundImage:[UIImage imageNamed:@"PiratasPasarela.png"]];
    [arraytile[7] setHealthEffet:-80];
    [arraytile[7] setActionButtonTitle:@"Defender"];
    
    [arraytile[8] setHistory:@"Has encontrado un trabuco ancestral. Equipatelo para mejorar tu armamento."];
    [arraytile[8] setBackGroundImage:[UIImage imageNamed:@"PiratasTrabuco.png"]];
    Weapon *newWeapon = [[Weapon alloc]init];
    newWeapon.name = @"Pistol";
    newWeapon.damage = 350;
    [arraytile[8] setWeapon:newWeapon];
    [arraytile[8] setActionButtonTitle:@"Equipar Trabuco"];
    
    [arraytile[9] setHistory:@"Te has topado con con Barbanegra, Edward Teach! Solo podras vencerle, si has aprendido bien los secretos de Mar Caribe."];
    [arraytile[9] setBackGroundImage:[UIImage imageNamed:@"PiratasBoss"]];
    [arraytile[9] setHealthEffet:-500];
    [arraytile[9] setActionButtonTitle:@"Plantar Cara"];
    
    [arraytile[10] setHistory:@"oh no!!! Este tesoro es falso! Tiene un esqueleto dentro, pero ninguna moneda =(, ¿Quieres recojer la armadura?"];
    [arraytile[10] setBackGroundImage:[UIImage imageNamed:@"PiratasTesoro2.png"]];
    Armor *newArmor = [[Armor alloc]init];
    newArmor.name = @"Skeleton Armor";
    newArmor.health = 150;
    [arraytile[10] setArmor:newArmor];
    [arraytile[10] setActionButtonTitle:@"Llevarse la armadura"];
    
    [arraytile[11] setHistory:@"Has encontrado el tesoro!!! Ahora eres todo un pirata rico de verdad!!! A celebrar con ron!!"];
    [arraytile[11] setBackGroundImage:[UIImage imageNamed:@"PiratasTesoro.png"]];
    [arraytile[11] setActionButtonTitle:@"A disfrutar"];
    
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

-(Character *)character{

    Character *character = [[Character alloc]init];
    character.name = @"Luke Skywalker";
    character.health = 1000;
    
    Weapon *weapon = [[Weapon alloc]init];
    weapon.name = @"Espada laser";
    weapon.damage = 200;
    
    character.weapon = weapon;
    
    Armor *armor = [[Armor alloc]init];
    armor.name = @"Armadura Jedi";
    armor.health = 150;
    
    character.armor = armor;
    
    return character;
}

@end
