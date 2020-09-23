//
//  ValidatorUtil.h
//  LankaQRValidation
//
//  Created by Kasun R on 9/4/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ValidatorUtil : NSObject

@property (strong, nonatomic) NSArray *tagArr;
@property (strong, nonatomic) NSArray *valueArr;
@property (strong, nonatomic) NSMutableDictionary *tagValueDict;
@property (strong, nonatomic) NSMutableDictionary *subTagValueDict62;
@property (strong, nonatomic) NSMutableDictionary *subTagValueDict84;

- (NSDictionary *)parseQRCode:(NSString *)code;

@end

NS_ASSUME_NONNULL_END
