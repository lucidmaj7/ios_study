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
    let myData2 = [
        NameEmail(name: "김철수",email: "kim@gmail.com"),
        NameEmail(name: "안철수",email: "ahn@gmail.com"),
        NameEmail(name: "고길동",email: "gogo@gmail.com"),
        NameEmail(name: "백종원",email: "backback@gmail.com")
    ]
    let sections = ["mydata", "mydata2"]
    
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0)
        {
            return myData.count
        }
        return myData2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MyTableViewCell = self.myTableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! MyTableViewCell
        if( indexPath.section == 0 )
        {
            cell.emailLabel.text = myData[indexPath.row].email
            cell.nameLabel.text = myData[indexPath.row].name
        }else{
            cell.emailLabel.text = myData2[indexPath.row].email
            cell.nameLabel.text = myData2[indexPath.row].name

        }
      
        return cell
    }

    
}

