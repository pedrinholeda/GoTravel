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
    @IBOutlet weak var viewBanner: UIView!
    
    // MARK: Initialization
    
    // MARK: Overrides
    
    // MARK: Actions
    
    // MARK: Methods
    func configHeader() {
        viewHeader.backgroundColor = UIColor(displayP3Red: 30.0/225.0, green: 59.0/225.0, blue: 119.0/225.0, alpha: 1)
        viewHeader.layer.cornerRadius = UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone ? 500 : 200
        viewHeader.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        viewBanner.layer.cornerRadius = 10
        viewBanner.layer.masksToBounds = true
    }
}
