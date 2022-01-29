//
//  UIKitWorkspaceTableViewController.swift
//  Sample
//
//  Created by Hyunyou Lim on 2022/01/24.
//  Copyright © 2022 study.org. All rights reserved.
//

import Foundation
import UIKit

class UIKitWorkspaceTableViewController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    let cellIdentifier = "WorkspaceCell"
    let ws = workspaces
    
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate=self
        myTableView.dataSource=self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ws.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: cellIdentifier , for: indexPath) as! WorkspaceCell
        cell.wsLabel?.text = ws[indexPath.row].name
        cell.wsImage?.image = UIImage(named: ws[indexPath.row].imageName)
        return cell
    }
}
