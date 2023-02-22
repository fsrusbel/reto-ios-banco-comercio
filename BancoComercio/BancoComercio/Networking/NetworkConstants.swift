//
//  NetworkConstants.swift
//  BancoComercio
//
//  Created by Rusbel Fs on 21/02/23.
//

import Foundation

class NetworkConstants {
    
    public static var shared: NetworkConstants = NetworkConstants()
    
    public var serverAddress: String {
        get {
            return "https://jsonplaceholder.typicode.com/users"
        }
    }
    
}
