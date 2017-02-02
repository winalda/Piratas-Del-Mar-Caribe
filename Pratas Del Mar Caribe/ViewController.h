//
//  ViewController.h
//  Pratas Del Mar Caribe
//
//  Created by Erick on 02/02/17.
//  Copyright © 2017 Erick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *LabelHealth;
@property (strong, nonatomic) IBOutlet UILabel *LabelDamage;
@property (strong, nonatomic) IBOutlet UILabel *LabelWeapon;
@property (strong, nonatomic) IBOutlet UILabel *LabelArmor;

@property (strong, nonatomic) IBOutlet UITextView *TextViewHistory;

@property (strong, nonatomic) IBOutlet UIButton *ButtonAccion;
- (IBAction)acrionPressed:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UIButton *buttonN;
@property (strong, nonatomic) IBOutlet UIButton *buttonS;
@property (strong, nonatomic) IBOutlet UIButton *buttonW;
@property (strong, nonatomic) IBOutlet UIButton *buttonE;


-(IBAction)arrowPressed:(UIButton *)sender;

@end

