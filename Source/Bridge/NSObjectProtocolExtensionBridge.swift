//
//  NSObjectProtocolExtensionBridge.swift
//  Hammer
//
//  Created by Igor Matyushkin on 12.08.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation

public extension NSObjectProtocol {
    
    // MARK: Class level
    
    public static var hmr: ClassManager<Self> {
        get {
            return ClassManager(type: self)
        }
    }
    
    public static var 🔨: ClassManager<Self> {
        get {
            return ClassManager(type: self)
        }
    }
    
    // MARK: Object level
    
    public var hmr: ObjectManager<Self> {
        get {
            return ObjectManager(object: self)
        }
    }
    
    public var 🔨: ObjectManager<Self> {
        get {
            return ObjectManager(object: self)
        }
    }
    
}
