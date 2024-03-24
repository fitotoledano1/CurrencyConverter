//
//  ConversionObject.swift
//
//
//  Created by Fito Toledano on 24/03/2024.
//

import Foundation

public struct ConversionObject: Decodable {
    let amount: Double
    let base: Currency
    let date: String
    let rates: ConversionRatesObject?
}

public struct ConversionRatesObject: Decodable {
    let USD: Double?
}
