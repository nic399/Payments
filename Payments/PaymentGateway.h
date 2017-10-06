//
//  PaymentGateway.h
//  Payments
//
//  Created by Nicholas Fung on 2017-10-06.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PaymentGateway : NSObject

-(void)processPaymentAmount:(NSInteger)amount;

@end
