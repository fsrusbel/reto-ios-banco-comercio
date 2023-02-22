//
//  DetailUserViewController.swift
//  BancoComercio
//
//  Created by Rusbel Fs on 21/02/23.
//

import UIKit

class DetailUserViewController: UIViewController {

    @IBOutlet weak var lblUserName: UILabel!
    @IBOutlet weak var lblPhone: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblWebSite: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblCity: UILabel!
    @IBOutlet weak var lblPostalCode: UILabel!
    @IBOutlet weak var lblLatitude: UILabel!
    @IBOutlet weak var lblLength: UILabel!
    @IBOutlet weak var lblCompanyName: UILabel!
    @IBOutlet weak var lblPhrase: UILabel!
    @IBOutlet weak var lblBusiness: UILabel!
    
    var viewModel: DetailsUserViewModel
    
    init(viewModel: DetailsUserViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "DetailUserViewController", bundle: nil)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTitle()
        configView()
    }
    
    func configTitle() {
        self.title = viewModel.name
    }
    
    func configView() {
        lblUserName.text = viewModel.username
        lblPhone.text = viewModel.phone
        lblEmail.text = viewModel.email
        lblWebSite.text = viewModel.website
        lblAddress.text = viewModel.address
        lblCity.text = viewModel.city
        lblPostalCode.text = viewModel.zipcode
        lblLatitude.text = viewModel.latitude
        lblLength.text = viewModel.length
        lblCompanyName.text = viewModel.company
        lblPhrase.text = viewModel.phrase
        lblBusiness.text = viewModel.business
    }
    
}
