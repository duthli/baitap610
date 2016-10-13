//
//  ViewController.swift
//  baitapseminar6_10_2016
//
//  Created by do duy hung on 10/7/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    @IBAction func push(_ sender: AnyObject) {
        
        if(sender.tag == 101)
        {
            let view = storyboard?.instantiateViewController(withIdentifier: "bai1")
            navigationController?.pushViewController(view!, animated: true)
        }
        if(sender.tag == 102)
        {
            let view = storyboard?.instantiateViewController(withIdentifier: "bai2")
            navigationController?.pushViewController(view!, animated: true)

        }
        if(sender.tag == 103)
        {
            let view = storyboard?.instantiateViewController(withIdentifier: "bai3")
            navigationController?.pushViewController(view!, animated: true)

        }
    }
    
    
}




//MARK: bai tap 1 dem string


//MARK: bai tap 2 em khong hieu de bai -_-



//MARK: bai tap 3 

