//
//  ViewController.swift
//  ios-challenges-justin
//
//  Created by 曾柏瑒 on 2023/12/15.
//

import UIKit

/*
 ___ _ _                          _
 | __(_) |__  __ _ _ _  ___  __ __(_)
 | _|| | '_ \/ _` | ' \/ _ \/ _/ _| |
 |_| |_|_.__/\__,_|_||_\___/\__\__|_|

 */

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("===== \(fib(50))") // 70 max
    }
    
    func fibNaive(_ n: Int) -> Int {
        if n == 0 {
            return 0
        } else if n == 1 {
            return 1
        } else {
            return fibNaive(n - 1) + fibNaive(n - 2)
        }
    }

    var memo = [Int: Int]()

    func fib(_ n: Int) -> Int {
        if n == 0 { return 0 }
        else if n == 1 { return 1 }

        if let result = memo[n] { return result }

        memo[n] = fib(n - 1) + fib(n - 2)

        return memo[n]!
    }

}

