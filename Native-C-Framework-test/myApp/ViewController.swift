//
//  ViewController.swift
//  myApp
//
//  Created by Wonhee Jeong on 2021/04/15.
//

import UIKit
import mylib
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var sum = 0
        sum =  Int(mylib.add(511, 5))
        print(sum)
        let str = String(cString: mylib.hello()) 
        print(str)
        // Do any additional setup after loading the view.
    }


}

