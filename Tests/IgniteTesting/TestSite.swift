//
// TestSite.swift
// Ignite
// https://www.github.com/twostraws/Ignite
// See LICENSE for license information.
//

import Foundation
import Ignite

/// An example site used in tests.
struct TestSite: Site {
    var name = "My Test Site"
    var titleSuffix = " - My Test Site"
    var url = URL(static: "https://www.yoursite.com")

    var builtInIconsEnabled: BootstrapOptions = .localBootstrap

    var homePage = TestLayout()
    var layout = EmptyLayout()
}

/// An example page  used in tests.
struct TestLayout: StaticLayout {
    var title = "Home"

    var body: some HTML {
        Text("Hello, World!")
    }
}
