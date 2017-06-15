//
//  EuropeanNotebookCharger.m
//  Patterns_6b_Adapter
//
//  Created by Uber on 15/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "EuropeanNotebookCharger.h"

@implementation EuropeanNotebookCharger

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.delegate = self;
    }
    return self;
}


-(void) charge {
    [_delegate chargetNotebookRoundHoles:self];
    [super charge];
}

-(void) chargetNotebookRoundHoles:(Charger *)charger {

    NSLog(@"Charging with 220 and round holes!");
}


@end
