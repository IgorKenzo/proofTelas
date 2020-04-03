//
//  TableViewController.swift
//  proofTelas
//
//  Created by Igor Kenzo Miyamoto Dias on 31/03/20.
//  Copyright © 2020 Igor Miyamoto. All rights reserved.
//

import Foundation
import UIKit

class TableViewController : UITableViewController
{
    private let dataSource = ["English","Portugues","a","b"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return dataSource.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! TableCell
        cell.lblCell.text = dataSource[indexPath.row]
        return cell
    }
}
