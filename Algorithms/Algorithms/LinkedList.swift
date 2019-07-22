//
//  LinkedList.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 5/26/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit



public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class LinkedList: NSObject {
    
    static func executeSample() {
        
        var node11 = ListNode(1)
        var node12 = ListNode(2)
        var node13 = ListNode(4)
        
        var node21 = ListNode(1)
        var node22 = ListNode(3)
        var node23 = ListNode(4)
        
        node11.next = node12
        node12.next = node13
        
        node21.next = node22
        node22.next = node23
        
//        while node11.next != nil {
//            print(node11.val)
//            node11 = node11.next!
//        }
//
//        print(node11.val)
//
//        while node21.next != nil {
//            print(node21.val)
//            node21 = node21.next!
//        }
//
//        print(node21.val)
        
        mergeTwoLists2(node11, node21)
    }
    
    static func mergeTwoLists2(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var l1 = l1, l2 = l2
        
        let sortedListHead = ListNode(-1)
        var sortedListTail: ListNode
        
        if l1 == nil && l2 == nil {
            return nil
        }
        
        sortedListTail = sortedListHead
        
            
        while l1 != nil && l2 != nil {
            
            if l1!.val <= l2!.val {
                
                sortedListTail.next = l1
                l1 = l1!.next
                
            } else {
                
                sortedListTail.next = l2
                l2 = l2!.next
            }
            
            sortedListTail = sortedListTail.next!
        }
            
        sortedListTail.next = (l1 == nil) ? l2 : l1
            
        return sortedListHead.next
    }
}
