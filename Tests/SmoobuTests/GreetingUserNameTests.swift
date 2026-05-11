// GreetingUserNameTests.swift
// Smoobu

import XCTest
@testable import Smoobu

final class GreetingUserNameTests: XCTestCase {
    func testNormalizedDisplayNameTrimsWhitespace() {
        XCTAssertEqual(
            GreetingUserName.normalizedDisplayName(for: "  Quinn  "),
            "Quinn"
        )
    }

    func testNormalizedDisplayNameBlankBecomesEmpty() {
        XCTAssertTrue(GreetingUserName.normalizedDisplayName(for: "\n\t ").isEmpty)
    }
}
