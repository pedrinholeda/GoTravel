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
        tableViewCellTravels.delegate = self
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

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let  headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }
}

