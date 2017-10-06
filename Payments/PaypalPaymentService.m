//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Nicholas Fung on 2017-10-06.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

-(void)processPaymentAmount:(NSInteger)amount{
    NSLog(@"Your Paypal account has been charged $%.2ld", amount);
}

-(BOOL)canProcessPayment{
    NSLog(@"Amazon - Processing payment...");
    return arc4random_uniform(2);
}

@end
