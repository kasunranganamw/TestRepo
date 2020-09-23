//
//  ValidatorUtil.m
//  LankaQRValidation
//
//  Created by Kasun R on 9/4/20.
//

#import "ValidatorUtil.h"

@implementation ValidatorUtil

-(void)parseData:(NSString *)code {
    @try {
        NSString *full = code;
        NSString *rest = @"";
        
        NSString *tag = [full substringToIndex:2];
        //    _tagArr = [_tagArr arrayByAddingObject:tag];
        rest = [full substringFromIndex:2];
        
        NSString *length = [rest substringToIndex:2];
        rest = [rest substringFromIndex:2];
        
        NSString *value = [rest substringToIndex:[length intValue]];
        //    _valueArr = [_valueArr arrayByAddingObject:value];
        rest = [rest substringFromIndex:[length intValue]];
        
        [_tagValueDict setValue:value forKey:tag];
        
        if (rest.length > 0) {
            [self parseData:rest];
        }
    } @catch (NSException *exception) {
        
    }
}

-(void)parseSubData:(NSString *)code subTagValueDict:(NSMutableDictionary *)subTagValueDict {
    @try {
        NSString *full = code;
        NSString *rest = @"";
        
        NSString *tag = [full substringToIndex:2];
        //    _tagArr = [_tagArr arrayByAddingObject:tag];
        rest = [full substringFromIndex:2];
        
        NSString *length = [rest substringToIndex:2];
        rest = [rest substringFromIndex:2];
        
        NSString *value = [rest substringToIndex:[length intValue]];
        //    _valueArr = [_valueArr arrayByAddingObject:value];
        rest = [rest substringFromIndex:[length intValue]];
        
        [subTagValueDict setValue:value forKey:tag];
        
        if (rest.length > 0) {
            [self parseSubData:rest subTagValueDict:subTagValueDict];
        }
    } @catch (NSException *exception) {
        
    }
}

- (NSDictionary *)parseQRCode:(NSString *)code {
    _tagArr = [NSArray new];
    _valueArr = [NSArray new];
    _tagValueDict = [NSMutableDictionary new];
    _subTagValueDict62 = [NSMutableDictionary new];
    _subTagValueDict84 = [NSMutableDictionary new];
    
    [self parseData:code];
    NSString *subTlv62 = [_tagValueDict valueForKey:@"62"];
    if (subTlv62.length > 0) {
        [self parseSubData:subTlv62 subTagValueDict:_subTagValueDict62];
    }
    NSString *subTlv84 = [_tagValueDict valueForKey:@"84"];
    if (subTlv84.length > 0) {
        [self parseSubData:subTlv84 subTagValueDict:_subTagValueDict84];
    }
    
    if (_tagValueDict.count == 0 || _subTagValueDict62.count == 0 || _subTagValueDict84.count == 0) {
//        [SBCommonUtils showErrorMessageWithTitle:MESSAGE_TITLE message:@"Unable to decode QR code. Please scan again." cancelButton:@"OK" viewController:self];
//        [self.navigationController popViewControllerAnimated:YES];
//        [self showCustomAlertWithTitle:MESSAGE_TITLE Message:@"Unable to decode QR code. Please scan again." cancelButtonTitle:@"OK" doneButtonTitle:@"" alertId:1000];
//        [self.appDelegate showTopBarToastView:@"Unable to decode QR code. Please scan again." withType:TOPBAR_ERROR_MESSAGE];
//        return;
    }
    
    NSDictionary *dict = @{@"tagValueDict": _tagValueDict, @"subTagValueDict62": _subTagValueDict62, @"subTagValueDict84": _subTagValueDict84};
    return dict;
}

@end
