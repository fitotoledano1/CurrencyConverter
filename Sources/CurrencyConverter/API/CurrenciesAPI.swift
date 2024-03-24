//
//  File.swift
//  
//
//  Created by Fito Toledano on 24/03/2024.
//

import Foundation
import LantanaNetwork

enum CurrenciesAPI: API {
    
    case conversion(amount: Double, base: Currency, to: Currency)
    
    var scheme: LantanaNetwork.HTTPScheme {
        .https
    }
    
    var baseURL: String {
        "api.frankfurter.app"
    }
    
    var path: String {
        switch self {
        case .conversion(_, _, _):
            "/latest"
        }
    }
    
    var parameters: [URLQueryItem] {
        switch self {
        case .conversion(let amount, let base, let to):
            return [
                URLQueryItem(name: "amount", value: String(amount)),
                URLQueryItem(name: "from", value: base.rawValue),
                URLQueryItem(name: "to", value: to.rawValue)
            ]
        }
    }
    
    var method: LantanaNetwork.HTTPMethod {
        switch self {
        case .conversion(_, _, _):
            .get
        }
    }
}
