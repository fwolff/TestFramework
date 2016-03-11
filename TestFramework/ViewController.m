//
//  ViewController.m
//  TestFramework
//
//  Created by Franck Wolff on 3/9/16.
//  Copyright © 2016 Spearal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController  {
    RI4MapAPI* map;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self->map = [RI4MapAPI instance];
    [map setDelegate:self];
}

- (IBAction)showOpenGLButtonAction:(id)sender {
    [[[UIApplication sharedApplication] windows] objectAtIndex:0].hidden = true;
    [self->map showMap];
}

/*
    RI4MapAPI protocol implementation.
*/
- (void)didHide {
    dispatch_async(dispatch_get_main_queue(), ^{
        NSLog(@"didHide called!");
        [[[[UIApplication sharedApplication] windows] objectAtIndex:0] makeKeyAndVisible];
    });
}

@end
