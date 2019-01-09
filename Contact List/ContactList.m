//
//  ContactList.m
//  Contact List
//
//  Created by Yilei Huang on 2019-01-08.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _storeContact = [NSMutableArray new];
    }
    return self;
}

-(void)addContact:(Contact*) contact {
    NSLog(@"%@ has enter email of %@", [contact user],[contact email]);
    
    [_storeContact addObject:contact];
}

-(void)addphone:(Contact *)input{
    
}
@end
