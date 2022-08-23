//
//  Commnets.swift
//  ApiConsume
//
//  Created by Lucy on 23/08/22.
//

import Foundation

struct Comments: Codable, Identifiable{
    let id: Int
    let name: String
    let email: String
    let body: String
    
        
}
