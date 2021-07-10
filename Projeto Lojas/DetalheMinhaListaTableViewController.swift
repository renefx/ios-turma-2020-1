//
//  DetalheMinhaListaTableViewController.swift
//  Projeto Lojas
//
//  Created by Rene Freire Xavier on 08/07/21.
//

import UIKit

class DetalheMinhaListaTableViewController: UITableViewController {
    @IBOutlet weak var logoDaLoja: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logoDaLoja.layer.cornerRadius = 6
    }

}
