//
//  WidgetKitWrapper.h
//  WidgetKitObjC
//
//  Created by Chris Pimlott on 26/11/2025.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

API_AVAILABLE(ios(14.0))
@interface WidgetKitObjCWrapper : NSObject

+ (void)reloadAllTimelines;
+ (void)reloadTimelinesOfKind:(NSString *)kind;

@end

NS_ASSUME_NONNULL_END
