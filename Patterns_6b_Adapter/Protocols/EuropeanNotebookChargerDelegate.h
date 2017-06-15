//
//  EuropeanNotebookChargerDelegate.h
//  Patterns_6b_Adapter
//
//  Created by Uber on 15/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol EuropeanNotebookChargerDelegate <NSObject>

-(void) chargetNotebookRoundHoles:(Charger *)charger;

@end
