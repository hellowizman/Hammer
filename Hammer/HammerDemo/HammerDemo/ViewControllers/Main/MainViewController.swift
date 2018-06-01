//
//  MainViewController.swift
//  HammerDemo
//
//  Created by Igor Matyushkin on 01.06.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import UIKit
import Hammer

class MainViewController: UIViewController, NullableModelHolder {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Outlets
    
    @IBOutlet weak var titleLabel: UILabel!
    
    // MARK: Object variables & properties
    
    fileprivate var _model: String?
    
    var model: String? {
        get {
            return self._model
        }
        set {
            // Save data
            
            self._model = newValue
            
            // Update title label
            
            self.titleLabel.text = newValue ?? ""
        }
    }
    
    // MARK: Public object methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize navigation bar
        
        self.navigationItem.title = "Main"
        
        // Initialize title label
        
        self.titleLabel.text = ""
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Private object methods
    
    // MARK: Actions
    
    // MARK: Protocol implementation
    
}
