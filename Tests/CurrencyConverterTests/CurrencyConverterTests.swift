import XCTest
@testable import CurrencyConverter

final class CurrencyConverterTests: XCTestCase {
        
    func testExample() async throws {
        let converted = try! await convert(10.0, from: .eur, to: .usd)
        XCTAssertEqual(converted, 10.823)
    }
}
