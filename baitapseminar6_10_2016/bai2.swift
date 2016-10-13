//
//  bai2.swift
//  baitapseminar6_10_2016
//
//  Created by do duy hung on 10/13/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import UIKit

class bai2: UIViewController {

    
    @IBOutlet weak var lbl_edge1: UILabel!
    
    @IBOutlet weak var lbl_edge2: UILabel!
    
    @IBOutlet weak var lbl_edge3: UILabel!
    
    @IBOutlet weak var lbl_edge4: UILabel!
    
    @IBOutlet weak var lbl_result: UILabel!
    
    
    var a = 0.0
    var b = 0.0
    var c = 0.0
    var d = 0.0
    var arrx : [Double] = []
    @IBAction func adder(_ sender: UIStepper) {

        if (sender.tag == 110){
            self.lbl_edge1.text = sender.value.description
            a = sender.value
        }
        if (sender.tag == 111){
            self.lbl_edge2.text = sender.value.description
            b = sender.value
            
        }
        if (sender.tag == 112){
            self.lbl_edge3.text = sender.value.description
            c = sender.value
        }
        if (sender.tag == 113){
            self.lbl_edge4.text = sender.value.description
            d = sender.value
        }

        
    }
    
    
    @IBAction func isCheck(_ sender: UIButton) {
        arrx.append(a)
        arrx.append(b)
        arrx.append(c)
        arrx.append(d)
        var x = kiemtrasocach(arr: arrx)
        ketqua(x: x)
        arrx.removeAll()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func kiemtrasocach(arr: [Double])->Int
    {
        var count = 0
        for (index,element) in arr.enumerated()
        {
            var idx = 0
            if (element != 0)
            {
                count += 1
            }
            if (element == 0)
            {
                    delete(element: element)
            }
        }
        //print(count)
        
        return count
    }
    func delete(element: Double) {
        arrx = arrx.filter { $0 != element }
        print(arrx)
    }
    
// MARK : kết quả chung
    func ketqua(x : Int)
    {
        if(x == 1)
        {
            lbl_result.text = "đây là một điểm"
        
        }
        else if (x == 2 && arrx[0] != arrx[1])
        {
            var z = abs(arrx[0]-arrx[1])
            lbl_result.text = "đây là một đoạn thẳng có chiều dài là : \(z)"
            
        }
        else if (x == 3)
        {
            //print("day la mot tam giac")
            isTamGiac(arr: arrx)
            
        }
        else if (x == 4)
        {
            lbl_result.text = "Đây là một tứ giác"
        }
        else
        {
            lbl_result.text = "bạn đã nhập sai"
        }
    }
// MARK : kiểm tra tam giác
    func isTamGiac(arr:[Double]){
        let a = arr[0]
        let b = arr[1]
        let c = arr[2]
        if ((a + b > c) && (a + c > b) && (b + c > a))
        {
            let dt = triCal(a: a, b: b, c: c)
            lbl_result.text = " tam giac thuong co dien tich la : \(dt)"
            if ((a == b) && (b == c))
            {
                let dt = triCal(a: a, b: b, c: c)
                
                lbl_result.text = " tam giac deu co dien tich la : \(dt)"
            }
            else
            {
                if ((a*a+b*b==c*c)||(a*a+c*c==b*b)||(c*c+b*b==a*a))
                {
                    let dt = triCal(a: a, b: b, c: c)
                    lbl_result.text = " tam giac vuong co dien tich la : \(dt)"
                }
                if ((a==b)||(b==c)||(c==a))
                {
                    let dt = triCal(a: a, b: b, c: c)
                    lbl_result.text = " tam giac can co dien tich la : \(dt)"
                }
            
            }

        }
        else
        {
            lbl_result.text = "khong phai la tam giac"
        }
    }
    func triCal(a:Double,b:Double,c:Double)->Double
    {
        let p = (a + b + c) / 2
        let result = sqrt(p*(p-a)*(p-b)*(p-c))
        return result
    }
    
    func kiemtratugiac(arr:[Double])
    {
        let a = arr[0]
        let b = arr[1]
        let c = arr[2]
        let d = arr[3]
    
    }
    
    
    
    
    
}
