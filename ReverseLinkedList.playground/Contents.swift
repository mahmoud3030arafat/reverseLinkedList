import UIKit
import Foundation

func reverseLinkedList(_ head: ListNode?) -> ListNode? {
    var previous: ListNode? = nil
    var current = head
    var next: ListNode? = nil
    
    while current != nil {
        // Save the next node
        next = current?.next
        
        // Reverse the `next` pointer
        current?.next = previous
        
        // Move pointers forward
        previous = current
        current = next
    }
    
    // `previous` will be the new head of the reversed list
    return previous
}




class ListNode {
    var value: Int
    var next: ListNode?
    
    init(_ value: Int) {
        self.value = value
        self.next = nil
    }
}
