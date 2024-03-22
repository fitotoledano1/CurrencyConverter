// The Swift Programming Language
// https://docs.swift.org/swift-book


enum Currency {
    case USD, EUR
}

func convert(_ amount: Double, from currency: Currency) -> (amount: Double, currency: Currency) {
    switch currency {
    case .USD:
        return (amount / 0.9, .EUR)
    case .EUR:
        return (amount * 1.1, .USD)
    }
}

