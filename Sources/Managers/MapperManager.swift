//
//  MapperManager.swift
//  CartDemoA
//
//  Created by Wlad Dicario on 20/01/2018.
//  Copyright © 2018 socle. All rights reserved.
//

import Foundation
import ObjectMapper

open class User: Mappable {
    
    open var username: String?
    
    required public init?(map: Map) { }
    
    public func mapping(map: Map) {
        username <- map["username"]
    }
}

open class MapperManager: NSObject {
    
    /// instance as `MapperManager`
    fileprivate static let instance : MapperManager = MapperManager()
    
    open var shared: MapperManager {
        return MapperManager.instance
    }
    
    public func doIt() {
        print("Oh Yes iOS - mapper manager")
        
        print("username null: \(String(describing: mapTest(value: [:])?.username))")
        print("username: \(String(describing: mapTest(value: ["username": "joe"])?.username))")
    }
    
    public func mapTest(value: [String: Any]) -> User? {
        //..
        guard let user = Mapper<User>().map(JSON: value), let _ = user.username
            else { return nil }
        return user
    }
}
