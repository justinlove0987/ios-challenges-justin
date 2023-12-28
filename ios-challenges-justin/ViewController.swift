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
struct UserModel {
    var id: String? // optional because anonymous user has no id
    var firstName: String
    var lastName: String
    var isAdmin: Bool
}
*/

protocol AnonymousUser {

}

protocol User: AnonymousUser {
    var id: String { get }
    var firstName: String { get }
    var lastName: String { get }
}

protocol AdminUser: User { }


