//
//  DetailsUserViewModel.swift
//  BancoComercio
//
//  Created by Rusbel Fs on 21/02/23.
//

import Foundation

class DetailsUserViewModel {
    
    var id: Int
    var name: String
    var phone: String
    var username: String
    var email: String
    var website: String
    var address: String
    var city: String
    var zipcode: String
    var latitude: String
    var length: String
    var company: String
    var phrase: String
    var business: String
    
    init(user: UserModel) {
        self.id = user.id
        self.name = user.name ?? ""
        self.phone = user.phone ?? ""
        self.username = user.username ?? ""
        self.email = user.email ?? ""
        self.website = user.website ?? ""
        self.address = "\(user.address?.street ?? "") \(user.address?.suite ?? "")"
        self.city = user.address?.city ?? ""
        self.zipcode = user.address?.zipcode ?? ""
        self.latitude = user.address?.geo?.lat ?? ""
        self.length = user.address?.geo?.lng ?? ""
        self.company = user.company?.name ?? ""
        self.phrase = user.company?.catchPhrase ?? ""
        self.business = user.company?.bs ?? ""
    }
    
}
