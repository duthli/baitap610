//
//  bai1VC.swift
//  baitapseminar6_10_2016
//
//  Created by do duy hung on 10/13/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import UIKit

class bai1VC: UIViewController,UITextFieldDelegate {
        var chuoi : String = "HUNG la toi"
    
    
    @IBOutlet weak var tf_input: UITextField!
    
    @IBOutlet weak var lbl_wordCount: UILabel!
    
    @IBOutlet weak var lbl_Detail: UILabel!
    
    @IBOutlet weak var dao: UILabel!
    
    var x : String!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tf_input.delegate = self
        print(chuoi.countchar(str: chuoi))
        print(chuoi.countString(str: chuoi))
        print(chuoi.daonguocchuoi(str: chuoi))
        
        
        
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        x = textField.text
        lbl_wordCount.text = "\(x.countString(str: x))"
        let bang = x.countchar(str: x)
        lbl_Detail.text = "\(bang)"
        dao.text = "\(x.daonguocchuoi(str: x))"
        return true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

extension String{
    func countchar(str:String) ->[String: Int] {
        let words = str.components(separatedBy: " ")
        var wordcount = [String: Int]()
        for word in words {
            let sochu = word.characters.count
            wordcount[word] = sochu
        }
        return wordcount
    }
    func countString(str:String)->String{
        let x = str.components(separatedBy: " ").count
        return "\(x) từ"
    }
    
    func daonguocchuoi(str:String) ->[String]{
        let my = str.characters.map{String($0)}
        print(my)
        var daonguoc : [String] = [""]
        for i in 1...my.count{
            let mychar : String = my[my.count - i]
            if i == 1{
                daonguoc.removeFirst()
            }
            daonguoc.append(mychar)
        }
        return daonguoc
    }
}

