//
//  MainViewController+TableView.swift
//  BancoComercio
//
//  Created by Rusbel Fs on 21/02/23.
//

import Foundation
import UIKit

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func setupTableView() {
        self.tbUsers.delegate = self
        self.tbUsers.dataSource = self
        self.tbUsers.backgroundColor = .clear
        self.registerCells()
    }
    
    func reloadTableView() {
        DispatchQueue.main.async {
            self.tbUsers.reloadData()
        }
    }
    
    func registerCells() {
        self.tbUsers.register(UserTableViewCell.register(), forCellReuseIdentifier: UserTableViewCell.identifier)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        viewModel.numberOfSections()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numberOfRows(in: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: UserTableViewCell.identifier, for: indexPath) as? UserTableViewCell else {
            return UITableViewCell()
        }
        cell.setupCell(viewModel: usersDataSource[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let userId = usersDataSource[indexPath.row].id
        self.openDetails(userId: userId)
    }
    
}
