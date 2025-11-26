//
//  WidgetKitWrapper.m
//  WidgetKitObjC
//
//  Created by Chris Pimlott on 26/11/2025.
//

#import <Foundation/Foundation.h>
#import "WidgetKitObjCWrapper.h"
#import <WidgetKitObjC/WidgetKitObjC-Swift.h>

@implementation WidgetKitObjCWrapper

+ (void)reloadAllTimelines {
    if (@available(iOS 14.0, *)) {
        [WidgetCenterBridge reloadAllTimelines];
    }
}

+ (void)reloadTimelinesOfKind:(NSString *)kind {
    if (@available(iOS 14.0, *)) {
        [WidgetCenterBridge reloadTimelinesOfKind:kind];
    }
}

@end
