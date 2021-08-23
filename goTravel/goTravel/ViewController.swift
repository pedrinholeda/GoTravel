//
//  ViewController.swift
//  goTravel
//
//  Created by Pedro Léda on 23/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    
    // MARK: Outlets
    @IBOutlet weak var tableViewCellTravels: UITableView!
    
    // MARK: Initialization
    
    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewCellTravels.dataSource = self
    }
    
    // MARK: Actions
    
    // MARK: Methods
   


}

extension ViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        cell.textLabel?.text = "Viagem \(indexPath.row)"
        return cell
    }
}

