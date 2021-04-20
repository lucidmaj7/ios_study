//
//  ViewController.swift
//  FraneAndBounds
//
//  Created by Wonhee Jeong on 2021/04/18.
//

import UIKit

class ViewController: UIViewController {

    let firstView:UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.clipsToBounds = true
        return view
    }()
    let secondView:UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
  
    override func viewDidLayoutSubviews() {
        firstView.frame = CGRect(x:20,y:300,width: 300,height: 300)
        secondView.frame = CGRect(x:10,y:10,width: 150,height: 150)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
  
        firstView.addSubview(secondView)
 
        view.addSubview(firstView)
       
        // Do any additional setup after loading the view.
    }

    @IBAction func onButtonAction(_ sender: Any) {
        self.firstView.bounds.origin.x = 0
        self.firstView.bounds.origin.y = 0
        self.firstView.bounds.size.width = 300
        self.firstView.bounds.size.height = 300
        UIViewPropertyAnimator(duration: 0.25, curve: .easeInOut, animations: {
            self.firstView.bounds.size.width = 400
            self.firstView.bounds.size.height = 400
            print(self.firstView.frame)
          
        }).startAnimation()
    }
    
}

