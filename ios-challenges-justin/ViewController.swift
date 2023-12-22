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


public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }

        var queue: [TreeNode] = [root]
        var result = [[Int]]()

        while queue.count > 0 {
            var current: [Int] = []

            for _ in queue {
                let node = queue.removeFirst()
                current.append(node.val)

                if let left = node.left {
                    queue.append(left)
                }

                if let right = node.right {
                    queue.append(right)
                }
            }

            result.append(current)
        }

        return result
    }
}

