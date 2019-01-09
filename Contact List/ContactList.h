//
//  ContactList.h
//  Contact List
//
//  Created by Yilei Huang on 2019-01-08.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactList : NSObject

@property NSMutableArray<Contact *> *storeContact;
-(void)addContact: (Contact *) contact;
-(void)addphone:(Contact *)input;


@end

NS_ASSUME_NONNULL_END
