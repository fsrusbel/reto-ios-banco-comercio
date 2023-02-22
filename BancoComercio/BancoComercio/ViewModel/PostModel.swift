//
//  PostModel.swift
//  BancoComercio
//
//  Created by Rusbel Fs on 21/02/23.
//

import Foundation

struct PostModel: Codable {
    let userId: String?
    let id: Int
    let title: String?
    let body: String?
}
