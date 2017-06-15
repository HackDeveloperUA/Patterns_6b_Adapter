//
//  USANotebookEuropeanAdapter.h
//  Patterns_6b_Adapter
//
//  Created by Uber on 15/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "Charger.h"

// Protocols
#import "EuropeanNotebookChargerDelegate.h"

//Models
#import "USANotebookCharger.h"
#import "EuropeanNotebookCharger.h"


@interface USANotebookEuropeanAdapter : Charger <EuropeanNotebookChargerDelegate>

@property (nonatomic, strong) USANotebookCharger *usaCharger;

-(instancetype) initWithUSANotebookCharger:(USANotebookCharger *) charger;
-(void) charge;

@end
