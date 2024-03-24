// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import LantanaNetwork

public func convert(_ amount: Double, from fcurrency: Currency, to tcurrency: Currency) async throws -> Double? {
    do {
        let conversionObject: ConversionObject = try await NetworkManager.request(
            endpoint: CurrenciesAPI.conversion(
                amount: amount,
                base: fcurrency,
                to: tcurrency
            )
        )
        return conversionObject.rates?[tcurrency.rawValue]
    } catch let error {
        throw error
    }
}
