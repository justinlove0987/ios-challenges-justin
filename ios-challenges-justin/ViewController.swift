//
//  ViewController.swift
//  ios-challenges-justin
//
//  Created by 曾柏瑒 on 2023/12/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myObject = MyClass(value: "New value")
    }


}

class MyClass {
    var myProperty: String {
        willSet {
            print("Will set myProperty to \(newValue)")
        }
        didSet {
            print("Did set myProperty to \(myProperty), previously \(oldValue)")
        }
    }
    
    init(value: String) {
        myProperty = value
        setupPropertyValue(value: value)
    }

    init() {
        myProperty = "Initial value"
    }
    
    private func setupPropertyValue(value: String) {
        myProperty = value
    }
}


