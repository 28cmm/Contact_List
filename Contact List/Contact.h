//
//  Contact.h
//  Contact List
//
//  Created by Yilei Huang on 2019-01-08.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject

- (instancetype)initWithName:name Email:email;
@property NSString *user;
@property NSString *email;
@property NSMutableArray *phone;
-(void)addPhone: (NSString*)a;
@end

NS_ASSUME_NONNULL_END
