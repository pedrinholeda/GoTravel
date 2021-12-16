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
        configTableView()
        view.backgroundColor = UIColor(displayP3Red: 30.0/225.0, green: 59.0/225.0, blue: 119.0/225.0, alpha: 1)
    }
    
    // MARK: Actions
    
    // MARK: Methods
    func configTableView(){
        tableViewCellTravels.register(UINib(nibName: "TravelTableViewCell", bundle: nil),
                                      forCellReuseIdentifier: "TravelTableViewCell")
        tableViewCellTravels.dataSource = self
        tableViewCellTravels.delegate = self
        
    }
}

extension ViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sessaoDeViagens?[section].numeroDeLinhas ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cellTravel = tableView.dequeueReusableCell(withIdentifier: "TravelTableViewCell") as? TravelTableViewCell else {
            fatalError("Deu Ruim")
        }
        
        let viewModel = sessaoDeViagens?[indexPath.section]
        
        switch viewModel?.tipo {
        case .destaques:
            cellTravel.configCell(viewModel?.viagens[indexPath.row])
            return cellTravel
        default:
            return UITableViewCell()
        }
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let  headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader
        headerView?.configHeader()
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone ? 400 : 480
    }
}

