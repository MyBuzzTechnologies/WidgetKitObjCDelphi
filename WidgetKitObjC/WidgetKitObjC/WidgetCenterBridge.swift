//
//  WidgetCenterBridge.swift
//  WidgetKitObjC
//
//  Created by Chris Pimlott on 26/11/2025.
//

import Foundation
import WidgetKit

@available(iOS 14.0, *)
@objcMembers
public final class WidgetCenterBridge: NSObject {

    /// Reload all timelines for all widget kinds
    public static func reloadAllTimelines() {
        #if canImport(WidgetKit)
        WidgetCenter.shared.reloadAllTimelines()
        #endif
    }

    /// Reload timelines for a specific widget kind
    public static func reloadTimelines(ofKind kind: String) {
        #if canImport(WidgetKit)
        WidgetCenter.shared.reloadTimelines(ofKind: kind)
        #endif
    }
}
