import XCTest

final class CounterAppUITests: XCTestCase {

    let app = XCUIApplication()

    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }

    override func tearDown() {
        app.terminate()
    }

    @MainActor
    func testIncrementButtonTap() throws {
        // Given
        let counterLabel = app.staticTexts["counterLabel"]
        let increaseButton = app.buttons["incrementButton"]
        // When
        increaseButton.tap()
        // Then
        XCTAssertEqual(counterLabel.label, "1")
    }

    @MainActor
    func testDecrementButtonTap() throws {
        // Given
        let counterLabel = app.staticTexts["counterLabel"]
        let decrementButton = app.buttons["decrementButton"]
        // When
        decrementButton.tap()
        // Then
        XCTAssertEqual(counterLabel.label, "-1")
    }
}
