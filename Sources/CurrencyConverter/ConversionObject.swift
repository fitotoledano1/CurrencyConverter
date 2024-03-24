//
//  ConversionObject.swift
//
//
//  Created by Fito Toledano on 24/03/2024.
//

import Foundation

struct ConversionObject: Decodable {
    let amount: Double
    let base: Currency
    let date: String
    let rates: ConversionRatesObject?
}

struct ConversionRatesObject: Decodable {
    let USD: Double?
}
