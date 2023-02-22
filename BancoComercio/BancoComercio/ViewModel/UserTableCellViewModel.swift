//
//  UserTableCellViewModel.swift
//  BancoComercio
//
//  Created by Rusbel Fs on 21/02/23.
//

import Foundation

class UserTableCellViewModel {
    var id: Int
    var name: String
    var username: String
    var email: String
    var phone: String
    var website: String
    var location: String
    
    init(user: UserModel) {
        self.id = user.id
        self.name = user.name ?? ""
        self.username = user.username ?? ""
        self.email = user.email ?? ""
        self.phone = user.phone ?? ""
        self.website = user.website ?? ""
        self.location = user.address?.city ?? ""
    }
    
}
