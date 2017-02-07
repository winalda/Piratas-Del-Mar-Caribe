//
//  Character.h
//  Pratas Del Mar Caribe
//
//  Created by Erick Alberto Morales Ledesma on 06/02/17.
//  Copyright © 2017 Erick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Weapon.h"
#import "Armor.h"

@interface Character : NSObject

@property (strong,nonatomic) NSString *name;
@property (strong,nonatomic) Weapon *weapon;
@property (strong,nonatomic) Armor *armor;
@property (nonatomic) int health;
@property (nonatomic) int damage;

@end
