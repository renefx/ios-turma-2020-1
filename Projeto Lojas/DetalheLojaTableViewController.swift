//
//  DetalheLojaTableViewController.swift
//  Projeto Lojas
//
//  Created by Rene Freire Xavier on 08/07/21.
//

import UIKit

class DetalheLojaTableViewController: UITableViewController {
    @IBOutlet var headerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return headerView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 251
    }
}
