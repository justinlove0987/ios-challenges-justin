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

/*
 Solution1
extension Optional<String> {
    var orEmpty: String {
        self ?? ""
    }
}
 */

extension String? {
    var orEmpty: String {
        self ?? ""
    }
}


