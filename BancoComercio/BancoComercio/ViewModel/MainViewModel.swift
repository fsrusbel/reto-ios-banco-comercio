//
//  MainViewModel.swift
//  BancoComercio
//
//  Created by Rusbel Fs on 21/02/23.
//

import Foundation

class MainViewModel {
    var isLoadingData: Observable<Bool> = Observable(false)
    var dataSource: [UserModel]?
    var users: Observable<[UserTableCellViewModel]> = Observable(nil)
    
    func numberOfSections() -> Int {
        return 1
    }
    
    func numberOfRows(in section: Int) -> Int {
        return dataSource?.count ?? 0
    }
    
    func getData() {
        if isLoadingData.value ?? true {
            return
        }
        
        isLoadingData.value = true
        APICaller.getUsers { [weak self] result in
            self?.isLoadingData.value = false
            
            switch result {
            case .success(let usersData):
                self?.dataSource = usersData
                self?.mapUserData()
            case .failure(let err):
                print(err)
            }
        }
    }
    
    private func mapUserData() {
        users.value = self.dataSource?.compactMap({UserTableCellViewModel(user: $0)})
    }
    
    func getUserTitle(_ user: UserModel) -> String {
        return user.name ?? user.username ?? ""
    }
    
    func retriveUser(withId id: Int) -> UserModel? {
        guard let user = dataSource?.first(where: {$0.id == id}) else {
            return nil
        }
        return user
    }
    
}
