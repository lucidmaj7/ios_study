//
//  ViewController.swift
//  TableViewTutorial
//
//  Created by Wonhee Jeong on 2021/04/08.
//

import UIKit



class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    struct NameEmail {
        var name: String
        var email: String
    }
    
    let cellIdentifier = "MyCell"
    let myData = [
        NameEmail(name: "James",email: "James@gmail.com"),
        NameEmail(name: "LaLa",email: "LaLa@gmail.com"),
        NameEmail(name: "Kim",email: "Kim@gmail.com"),
        NameEmail(name: "Hong",email: "Hong@gmail.com")
    ]
    
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MyTableViewCell = self.myTableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! MyTableViewCell
       
        cell.emailLabel.text = myData[indexPath.row].email
        cell.nameLabel.text = myData[indexPath.row].name
        return cell
    }

    
}

