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

protocol SettingsProvider {
    func openSettings() -> Void
}

extension AppDelegate: SettingsProvider {
    func openSettings() -> Void {
        
    }
}

class FooViewModel {
    init(SettingsProvider: SettingsProvider) {

    }
}

