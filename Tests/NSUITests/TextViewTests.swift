import XCTest
@testable import NSUI

final class TextViewTests: XCTestCase {
	@MainActor
    func testTextViewText() throws {
        let textView = NSUITextView()

		textView.text = "abc"

		XCTAssertEqual(textView.text, "abc")
    }

	@MainActor
	func testEditActions() throws {
		let edit = NSUITextStorageEditActions.editedAttributes

		XCTAssertTrue(edit.contains(.editedAttributes))
	}
}
