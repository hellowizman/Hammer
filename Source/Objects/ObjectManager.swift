//
//  ObjectManager.swift
//  Hammer
//
//  Created by Igor Matyushkin on 01.06.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import UIKit

public class ObjectManager<Object: NSObjectProtocol> {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    public init(object: Object) {
        self.object = object
    }
    
    // MARK: Deinitializer
    
    deinit {
        print("Deinit")
    }
    
    // MARK: Object variables & properties
    
    public fileprivate(set) var object: Object!
    
    // MARK: Public object methods
    
    // MARK: Private object methods
    
    // MARK: Protocol implementation
    
}

/*
 * Conversions.
 */
public extension ObjectManager {
    
    @discardableResult
    public func use(closure: (_ object: Object) -> Void) -> Self {
        closure(self.object)
        return self
    }
    
    @discardableResult
    public func use<NewClass: NSObjectProtocol>(as type: NewClass.Type, closure: (_ object: NewClass) -> Void) -> Self {
        closure(self.object as! NewClass)
        return self
    }
    
}

/*
 * Retains.
 */
public extension ObjectManager {
    
    @discardableResult
    public func retain() -> Self {
        Retainer.shared.retain(self.object)
        return self
    }
    
    @discardableResult
    public func free() -> Self {
        Retainer.shared.free(self.object)
        return self
    }
    
}
