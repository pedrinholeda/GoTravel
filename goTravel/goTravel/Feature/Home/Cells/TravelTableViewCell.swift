//
//  TravelTableViewCell.swift
//  goTravel
//
//  Created by Pedro Henrique on 07/10/21.
//

import UIKit

class TravelTableViewCell: UITableViewCell {

  // MARK: - IBOutlets
    @IBOutlet weak var backgroundViewCell: UIView!
    @IBOutlet weak var viagemImage: UIImageView!
    @IBOutlet weak var tituloViagemLabel: UILabel!
    @IBOutlet weak var subtituloViagemLabel: UILabel!
    @IBOutlet weak var diariaViagemLabel: UILabel!
    @IBOutlet weak var precoSemDescontoLabel: UILabel!    
    @IBOutlet weak var precoViagemLabel: UILabel!
    @IBOutlet weak var statusCancelamentoLabel: UILabel!
}
