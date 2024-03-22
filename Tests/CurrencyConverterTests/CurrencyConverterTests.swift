import XCTest
@testable import CurrencyConverter

final class CurrencyConverterTests: XCTestCase {
    func testExample() throws {
        let result = convert(0, from: .USD)
        
        XCTAssert(result == (0, .EUR))
    }
}
