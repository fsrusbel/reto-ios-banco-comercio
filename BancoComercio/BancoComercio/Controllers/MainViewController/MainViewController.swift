//
//  MainViewController.swift
//  BancoComercio
//
//  Created by Rusbel Fs on 21/02/23.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var tbUsers: UITableView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var viewModel: MainViewModel = MainViewModel()
    var usersDataSource: [UserTableCellViewModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTitle()
        configView()
        bindViewModel()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.getData()
    }
    
    func configTitle() {
        self.title = "Usuarios"
    }
    
    func configView() {
        self.setupTableView()
    }
    
    func bindViewModel() {
        viewModel.isLoadingData.bind { [weak self] isLoading in
            guard let isLoading = isLoading else {
                return
            }
            DispatchQueue.main.async {
                if isLoading {
                    self?.activityIndicator.startAnimating()
                } else {
                    self?.activityIndicator.stopAnimating()
                }
            }
        }
        
        viewModel.users.bind { [weak self] users in
            guard let self = self,
                  let users = users else {
                return
            }
            self.usersDataSource = users
            self.reloadTableView()
        }
    }
    
    func openDetails(userId: Int) {
        guard let user = viewModel.retriveUser(withId: userId) else {
            return
        }
        DispatchQueue.main.async {
            let userViewModel = DetailsUserViewModel(user: user)
            let controller = DetailUserViewController(viewModel: userViewModel)
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
    
}
