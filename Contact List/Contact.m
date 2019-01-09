//
//  Contact.m
//  Contact List
//
//  Created by Yilei Huang on 2019-01-08.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import "Contact.h"


@implementation Contact
- (instancetype)initWithName:name Email:email{
    self = [super init];
    if (self) {
        _user = name;
        _email = email;
        _phone =[NSMutableArray new];
    }
    return self;
    
}

-(void)addPhone: (NSString*)a{
    [_phone addObject:a];
}



@end
