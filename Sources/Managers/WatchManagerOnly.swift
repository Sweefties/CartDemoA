//
//  WatchManagerOnly.swift
//  CartDemoA-watchOS
//
//  Created by Wlad Dicario on 20/01/2018.
//  Copyright © 2018 socle. All rights reserved.
//

import Foundation

open class WatchManagerOnly: NSObject {
    
    /// instance as `WatchManagerOnly`
    fileprivate static let instance : WatchManagerOnly = WatchManagerOnly()
    
    open var shared: WatchManagerOnly {
        return WatchManagerOnly.instance
    }
    
    public func doIt() {
        print("Oh Yes watchOS - only manager")
    }
}
