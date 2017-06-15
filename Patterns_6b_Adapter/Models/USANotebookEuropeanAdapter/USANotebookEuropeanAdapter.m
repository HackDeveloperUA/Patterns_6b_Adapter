//
//  USANotebookEuropeanAdapter.m
//  Patterns_6b_Adapter
//
//  Created by Uber on 15/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "USANotebookEuropeanAdapter.h"

@implementation USANotebookEuropeanAdapter


- (instancetype) initWithUSANotebookCharger:(USANotebookCharger *) charger
{
    self = [super init];
    if (self) {
        self.usaCharger = charger;
    }
    return self;
}


-(void) chargetNotebookRoundHoles:(Charger *) charger {
    [self.usaCharger chargeNotebookRectHoles:charger];
}


-(void) charge {
    EuropeanNotebookCharger *euroCharge = [[EuropeanNotebookCharger alloc] init];
    euroCharge.delegate = self;
    [euroCharge charge];
}


@end
