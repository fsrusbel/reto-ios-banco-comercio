//
//  UserTableViewCell.swift
//  BancoComercio
//
//  Created by Rusbel Fs on 21/02/23.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    static var identifier: String {
        get {
            "UserTableViewCell"
        }
    }
    
    static func register() -> UINib {
        UINib(nibName: "UserTableViewCell", bundle: nil)
    }
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblPhone: UILabel!
    @IBOutlet weak var lblWebsite: UILabel!
    @IBOutlet weak var lblLocation: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        containerView.round()
        containerView.addBorder(color: .lightGray, width: 1)
        
    }

    func setupCell(viewModel: UserTableCellViewModel) {
        self.lblName.text = viewModel.name
        self.lblEmail.text = viewModel.email
        self.lblPhone.text = viewModel.phone
        self.lblWebsite.text = viewModel.website
        self.lblLocation.text = viewModel.location
    }

}
