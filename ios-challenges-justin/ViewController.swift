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
        
        let myObject = MyClass()
        myObject.myProperty = "New value"

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

    init() {
        myProperty = "Initial value"
    }
}



