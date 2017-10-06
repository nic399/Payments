//
//  PaymentGateway.m
//  Payments
//
//  Created by Nicholas Fung on 2017-10-06.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void) processPaymentAmount:(NSInteger)amount{
    [self.paymentDelegate canProcessPayment] ? [self.paymentDelegate processPaymentAmount:amount] : NSLog(@"Payment failed");
}

@end
