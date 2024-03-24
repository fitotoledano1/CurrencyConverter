// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import LantanaNetwork

public enum Currency: String, Decodable {
    case usd = "USD"
    case eur = "EUR"
}

public func convert(_ amount: Double, from fcurrency: Currency) async throws -> Double? {
    do {
        let conversionObject: ConversionObject = try await NetworkManager.request(
            endpoint: CurrenciesAPI.conversion(
                amount: amount,
                base: .eur,
                to: .usd
            )
        )
        return conversionObject.rates?.USD
    } catch let error {
        throw error
    }
}
