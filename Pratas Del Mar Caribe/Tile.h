//
//  Tile.h
//  Pratas Del Mar Caribe
//
//  Created by Erick on 02/02/17.
//  Copyright © 2017 Erick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Weapon.h"
#import "Armor.h"

@interface Tile : NSObject

@property (strong,nonatomic)NSString *history;
@property (strong,nonatomic)NSString *actionButtonTitle;
@property (strong,nonatomic)UIImage *backGroundImage;

@property (strong,nonatomic) Weapon * weapon;
@property (strong,nonatomic) Armor * armor;
@property (nonatomic) int healthEffet;

@end
