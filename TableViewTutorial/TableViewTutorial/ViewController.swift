//
//  ViewController.swift
//  TableViewTutorial
//
//  Created by Wonhee Jeong on 2021/04/08.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    let cellIdentifier = "MyCell"
    let myData = ["사과","당근","카카오","샐러드"]
    
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
        let cell: UITableViewCell = self.myTableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = myData[indexPath.row]
        return cell
    }

    
}

