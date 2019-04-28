//
//  ViewController.swift
//  TableviewHeader
//
//  Created by Serialxtech on 28/04/19.
//  Copyright © 2019 madhu.are. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
         let cell = tableView.dequeueReusableCell(withIdentifier: "ListviewCell", for: indexPath) as! ListviewCell
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    

    @IBOutlet var header_view: UIView!
    @IBOutlet weak var tableviewobj: UITableView!
    var names = ["one","two","three","four","five","six"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableviewobj.rowHeight = UITableView.automaticDimension
        tableviewobj.estimatedRowHeight = UITableView.automaticDimension
        self.tableviewobj.tableHeaderView = self.header_view
    }


}

