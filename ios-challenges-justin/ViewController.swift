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
        // Do any additional setup after loading the view.
    }


}

protocol Dependency {
    
}

// Example of Constructor Injection in Swift
class MyClass {
    private let dependency: Dependency

    init(dependency: Dependency) {
        self.dependency = dependency
    }

    // Class logic using the injected dependency
}
