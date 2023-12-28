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
    func kthSmallest_s1(_ root: TreeNode?, _ k: Int) -> Int {
        var stack = [TreeNode](), cur = root, valK = k
        
        while !stack.isEmpty || cur != nil {
            if let node = cur {
                stack.append(node)
                cur = node.left
            } else {
                let last = stack.removeLast()
                valK -= 1
                guard valK != 0 else { return last.val }
                cur = last.right
            }
        }
        return -1
    }
    
    func kthSmallest_s2(_ root: TreeNode?, _ k: Int) -> Int {
        var index = 0
        guard let node = inorderTraverse(root, k, &index) else {
            return 0
        }
        return node.val
    }

    func inorderTraverse(_ node: TreeNode?, _ k: Int, _ index: inout Int) -> TreeNode? {
        guard let node = node else {
            return nil
        }

        if let targetNode = inorderTraverse(node.left, k, &index) {
            return targetNode
        }

        index += 1
        if index == k {
            return node
        }

        return inorderTraverse(node.right, k, &index)
    }
    
    func kthSmallest_s3(_ root: TreeNode?, _ k: Int) -> Int {
        var stack = [ TreeNode? ]()
        var index = 0
        var curNode = root
        while !stack.isEmpty || curNode != nil {
            while curNode != nil {
                stack.append(curNode)
                curNode = curNode?.left
            }

            curNode = stack.removeLast()
            index += 1
            if index == k {
                break
            }
            curNode = curNode?.right
        }

        return curNode?.val ?? 0
    }
    
    
    func kthSmallest_20231228_Justin(_ root: TreeNode?, _ k: Int) -> Int {
        var numbers: [Int] = []
        
        preorderTraversal(root, &numbers)
        
        numbers = numbers.sorted { $0 < $1 }
        
        if numbers.count >= k {
            return numbers[k-1]
        }
        
        return 0
    }
    
    private func preorderTraversal(_ node: TreeNode?, _ result: inout [Int]) {
        guard let node = node else { return }
        
        result.append(node.val)
        preorderTraversal(node.left, &result)
        preorderTraversal(node.right, &result)
    }
}
