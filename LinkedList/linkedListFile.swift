//
//  linkedListFile.swift
//  LinkedList
//
//  Created by Jamal Ahamad on 01/02/18.
//  Copyright © 2018 Jamal Ahamad. All rights reserved.
//

import Foundation

class LinkNode{
    
    var value : Int? = nil
    var next : LinkNode? = nil
}

class LinkListImplementation{
    
    var head :LinkNode? = LinkNode()
    
    // insertion at end
    func insertValueInLinkList(element : Int){
        
        // check if link list is empty
        if head?.value == nil{
            
            head?.value = element
            
        }else {
            
            var currentNode = head
                // find last node
            while currentNode?.next != nil{
                currentNode = currentNode?.next!
            }
            let newNode = LinkNode()
            newNode.value = element
            
            // assign new node into last node
            currentNode?.next = newNode
        }
    }
    
    func printLinkList(){
        
        // assign head pointer in to current pointer to track node
        
        var current : LinkNode? = head
        
        // if head is nil print link list is empty
        if head?.value == nil{

            print("link List is Empty")

        }else {
         
            // iterate all node and print
            while current != nil{
                
                print("the item is : \(current?.value ?? -1)")
                current = current?.next
               
            }
        }
    }
    
    func deleteNodeAtFirstEnd()->Int{
        
        if head?.value == nil{
            
            return 0
            
        }else {
            // assign second node address to head
            let current = head
            let next = head?.next
            head = next!
            
            return current!.value!
            
        }
    }
    
    func deleteNodeAtLastEnd()->Int{
        
        if head?.value == nil{
            return 0
            
        } else {
            
            var current = head
            var prev = LinkNode()

            // find second last node and assign nil to its address field
            while current?.next != nil{
                
                // if loop is ended then it will be second lastnode
                prev = current!
                // if loop is ended then it will be last node
                current = current?.next!
            }
            
            prev.next = nil
            
            return current!.value!
        }
    }
    
    func reverseLinkedList(){
        
        var next : LinkNode?
        var prev : LinkNode?
        
        // assign head address to current pointer to keep track all node
        var current : LinkNode? = head
      
        while current?.next != nil && current?.value != nil {
            // keep address of next node
            next = current?.next!
            // assign prev node address to next node
            current?.next = prev
            // link next node to prev node
            prev = current
            // move current ponter to next node
            current = next
            
        }
        current?.next = prev
        head = current
        
    }

}



