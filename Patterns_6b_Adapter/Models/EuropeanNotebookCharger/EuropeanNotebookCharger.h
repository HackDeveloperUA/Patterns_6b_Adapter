//
//  EuropeanNotebookCharger.h
//  Patterns_6b_Adapter
//
//  Created by Uber on 15/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "Charger.h"

// Protocols
#import "EuropeanNotebookChargerDelegate.h"


@interface EuropeanNotebookCharger : Charger <EuropeanNotebookChargerDelegate>

@property (nonatomic, weak) id<EuropeanNotebookChargerDelegate> delegate;


-(void) chargetNotebookRoundHoles:(Charger *)charger;

@end
