//
//  FakeManager.swift
//  CartDemoA
//
//  Created by Wlad Dicario on 20/01/2018.
//  Copyright © 2018 socle. All rights reserved.
//

import Foundation

open class FakeManager: NSObject {
    
    /// instance as `FakeManager`
    fileprivate static let instance : FakeManager = FakeManager()
    
    open var shared: FakeManager {
        return FakeManager.instance
    }
    
    public func doIt() {
        #if os(iOS)
            print("Oh Yes iOS")
        #elseif os(watchOS)
            print("Oh Yes watchOS")
        #endif
        
        let bundle = infoForKey("ProjectEnvironmentTest")
        print(bundle as Any)
    }
    
    /// info for key as bundle main info dictionary
    /// - Parameter key: `String`
    /// - Returns: `String` optional
    public func infoForKey(_ key: String) -> String? {
        //Debug.print(Bundle.main.infoDictionary as Any)
        return (Bundle.main.infoDictionary?[key] as? String)?
            .replacingOccurrences(of: "\\", with: "")
    }
    
    public func bundleId() -> String? {
        return Bundle.main.bundleIdentifier ?? "com.socle.cartdemoa.unittests"
        //return infoForKey("CFBundleIdentifier")
    }
}
