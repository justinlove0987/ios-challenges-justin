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
    func isValidBST(_ root: TreeNode?) -> Bool {
        guard let root = root else { return false }
        
        return isValidBST(root, nil, nil)
    }
    
    func isValidBST(_ node: TreeNode?, _ max: Int?, _ min: Int?) -> Bool {
        guard let node = node else { return true }
        
        if let max, max <= node.val {
            return false
        }
        
        if let min, min >= node.val {
            return false
        }
        
        return isValidBST(node.left, node.val, min) && isValidBST(node.right, max, node.val)
    }
}
