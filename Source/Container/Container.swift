//
//  Container.swift
//  Hammer
//
//  Created by Igor Matyushkin on 12.08.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation

public class Container<Value: Any> {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    public init(value: Value?) {
        self.value = value
    }
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    public fileprivate(set) var value: Value?
    
    // MARK: Public object methods
    
    // MARK: Private object methods
    
}

/*
 * Nil.
 */
public extension Container {
    
    public var isNil: Bool {
        get {
            return self.value == nil
        }
    }
    
}

/*
 * Conversions.
 */
public extension Container {
    
    public func toArray() -> [Value] {
        guard self.value != nil else {
            return []
        }
        
        return [
            self.value!
        ]
    }
    
}

/*
 * Conditions.
 */
public extension Container {
    
    @discardableResult
    public func ifNotNil(_ closure: (_ value: Value) -> Void) -> Self {
        if self.value != nil {
            closure(self.value!)
        }
        
        return self
    }
    
    @discardableResult
    public func ifNil(_ closure: () -> Void) -> Self {
        if self.value == nil {
            closure()
        }
        
        return self
    }
    
}
