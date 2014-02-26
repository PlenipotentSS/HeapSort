//
//  ViewController.m
//  HeapSort
//
//  Created by Stevenson on 25/02/2014.
//  Copyright (c) 2014 Steven Stevenson. All rights reserved.
//

#import "ViewController.h"
#import "NSMutableArray+HeapSort.h"
#import "IntegerNode.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray *anArray = [NSMutableArray new];
    NSMutableArray *valueArray = [NSMutableArray new];
    for (int i =0; i<20; i++) {
        NSInteger value = (NSInteger)rand()%20;
        if (![valueArray containsObject:@(value)]) {
            IntegerNode *node = [IntegerNode new];
            node.value = value;
            [anArray addObject:node];
            [valueArray addObject:@(value)];
        }
    }
    [NSMutableArray maxHeapSortForArray:anArray];
    [NSMutableArray printArray:anArray];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
