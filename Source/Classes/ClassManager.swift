//
//  ClassManager.swift
//  Hammer
//
//  Created by Igor Matyushkin on 01.06.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import UIKit

public class ClassManager<Class: NSObjectProtocol> {
    
    public fileprivate(set) var type: Class.Type
    
    public init(type: Class.Type) {
        self.type = type
    }
    
}

/*
 Class name.
 */
public extension ClassManager {
    
    /**
     Class name with namespace.
     */
    public var fullName: String {
        get {
            return NSStringFromClass(self.type)
        }
    }
    
    /**
     Class name without namespace.
     */
    public var shortName: String {
        get {
            let classNameWithNamespace = NSStringFromClass(self.type)
            let segments = classNameWithNamespace.components(separatedBy: ".")
            let classNameWithoutNamespace = segments.last ?? ""
            return classNameWithoutNamespace
        }
    }
    
}
