//
//  StripePaymentService.m
//  Payments
//
//  Created by Nicholas Fung on 2017-10-06.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

-(void)processPaymentAmount:(NSInteger)amount{
    NSLog(@"Charged $%.2ld to your card", amount);
}

-(BOOL)canProcessPayment{
    return arc4random_uniform(2);
}

@end
