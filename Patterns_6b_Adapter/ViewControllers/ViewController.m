//
//  ViewController.m
//  Patterns_6b_Adapter
//
//  Created by Uber on 15/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "ViewController.h"


// Models
#import "Charger.h"
#import "EuropeanNotebookCharger.h"
#import "USANotebookCharger.h"
#import "USANotebookEuropeanAdapter.h"

#import "EuropeanNotebookChargerDelegate.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
  
    EuropeanNotebookCharger* euroCharger = [EuropeanNotebookCharger new];
    
    [self makeTheNotebookCharge:euroCharger];
    
    USANotebookCharger* charger = [USANotebookCharger new];
    USANotebookEuropeanAdapter* adapter = [[USANotebookEuropeanAdapter alloc] initWithUSANotebookCharger: charger];
    
    [self makeTheNotebookCharge:adapter];
}


#pragma mark - Helpers Methods

- (void) makeTheNotebookCharge:(Charger*) aCharger {
    [aCharger charge];
}



@end
