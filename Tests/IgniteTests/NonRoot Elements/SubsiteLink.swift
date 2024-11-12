//
// SubsiteLink.swift
// Ignite
// https://www.github.com/twostraws/Ignite
// See LICENSE for license information.
//

@testable import Ignite
import XCTest

/// Tests for the `title` element.
@MainActor final class SubsiteLinkTests: ElementTest {
    func test_string_target() {
        let element = Link("Go Home", target: "/")
        let output = element.render(context: publishingSubsiteContext)

        XCTAssertEqual(output, "<a href=\"/subsite/\">Go Home</a>")
    }

    func test_page_target() {
        let element = Link("This is a test", target: TestPage()).linkStyle(.button)
        let output = element.render(context: publishingSubsiteContext)

        XCTAssertEqual(output, "<a href=\"/subsite/test-page\" class=\"btn btn-primary\">This is a test</a>")
    }

    func test_page_content() {
        let element = Link(target: TestPage()) {
            "MORE "
            Text("CONTENT")
        }
        let output = element.render(context: publishingSubsiteContext)

        XCTAssertEqual(output, "<a href=\"/subsite/test-page\">MORE <p>CONTENT</p></a>")
    }
}
