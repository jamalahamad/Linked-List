//
//  ViewController.swift
//  LinkedList
//
//  Created by Jamal Ahamad on 01/02/18.
//  Copyright © 2018 Jamal Ahamad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let linked = LinkListImplementation()
        linked.insertValueInLinkList(element: 5)
        linked.insertValueInLinkList(element: 8)
        linked.insertValueInLinkList(element: 12)
        linked.insertValueInLinkList(element: 4)
        linked.printLinkList()
 //       let delete = linked.deleteNodeAtFirstEnd()
//        let delete = linked.deleteNodeAtLastEnd()
       //print(delete)
        print("")
        linked.reverseLinkedList()
        linked.printLinkList()
    }

}

