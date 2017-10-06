//
//  ApplePaymentService.m
//  Payments
//
//  Created by Nicholas Fung on 2017-10-06.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

-(void)processPaymentAmount:(NSInteger)amount{
    NSLog(@"ApplePay has processed your $%.2ld purchase", amount);
}

-(BOOL)canProcessPayment{
    NSLog(@"ApplePay - Processing payment...");
    return arc4random_uniform(2);
}

@end
