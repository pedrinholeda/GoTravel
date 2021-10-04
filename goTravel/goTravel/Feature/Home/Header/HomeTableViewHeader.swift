//
//  HomeTableViewHeader.swift
//  goTravel
//
//  Created by Pedro Léda on 24/08/21.
//

import UIKit

class HomeTableViewHeader: UIView {

    // MARK: Properties
    
    // MARK: Outlets
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var viewHeader: UIView!
    @IBOutlet weak var imageViewBanner: UIImageView!
    
    // MARK: Initialization
    
    // MARK: Overrides
    
    // MARK: Actions
    
    // MARK: Methods
    func configHeader() {
        viewHeader.backgroundColor = UIColor(displayP3Red: 30.0/225.0, green: 59.0/225.0, blue: 119.0/225.0, alpha: 1)
    }


}
