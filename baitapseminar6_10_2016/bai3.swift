//
//  bai3.swift
//  baitapseminar6_10_2016
//
//  Created by do duy hung on 10/13/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import UIKit

class bai3: UIViewController {
    
    
    @IBOutlet weak var debai: UITextView!
    @IBOutlet weak var result: UILabel!
    
    @IBOutlet weak var result1: UILabel!
    
    @IBOutlet weak var result2: UILabel!
    var arr1 = [6,10,14,66,99,101]
    var arr2 = [6.9,9.6,12.3,15.5]
    var arr3 = ["a","b","c","d"]
    override func viewDidLoad() {
        super.viewDidLoad()
        debai.isEditable = false
        debai.isScrollEnabled = false
        sorttt()
    }

    func sorttt(){
        for i in 1..<arr3.count{
            
            arr3.append(compare(arr3[i - 1], arr3[i]))
            
        }
        for i in 1..<arr2.count{
            
            arr2.append(compare(arr2[i - 1], arr2[i]))
            
        }
        for i in 1..<arr1.count{
            
            arr1.append(compare(arr1[i - 1], arr1[i]))
            
        }
        self.result.text = ("3 phan tu lan nhat la : \(arr3[arr3.count-1]),\(arr3[arr3.count-2]),\(arr3[arr3.count-3])")
        self.result1.text = ("3 phan tu lan nhat la : \(arr2[arr2.count-1]),\(arr2[arr2.count-2]),\(arr2[arr2.count-3])")
        self.result2.text = ("3 phan tu lan nhat la : \(arr1[arr1.count-1]),\(arr1[arr1.count-2]),\(arr1[arr1.count-3])")
    }
    func compare<T: NumericType>(_ x: T, _ y: T) -> T
    {
        return x == y
    }

}

protocol NumericType {
    static func +(lhs: Self, rhs: Self) -> Self
    static func ==(lhs : Self, rhs : Self) -> Self
}

extension Int: NumericType{
    internal static func ==(lhs: Int, rhs: Int) -> Int {
        if(lhs < rhs)
        {
            return rhs
        }
        else
        {
            return lhs
        }
    }
}
extension Double: NumericType{
    internal static func ==(lhs: Double, rhs: Double) -> Double {
        if(lhs < rhs)
        {
            return rhs
        }
        else
        {
            return lhs
        }
    }
}
extension String: NumericType{
    internal static func ==(lhs: String, rhs: String) -> String {
        if(lhs < rhs)
        {
            return rhs
        }
        else
        {
            return lhs
        }
    }
}
