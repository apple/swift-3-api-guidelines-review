# Swift 3 API Guidelines Review

This repository is part of the [Swift 3 API Design Guidelines effort](https://github.com/apple/swift-evolution/blob/master/README.md), which helps evaluate the effects of applying the [Swift API Design Guidelines](https://swift.org/documentation/api-design-guidelines/) to Objective-C APIs through [improvements to Swift's Clang importer](https://github.com/apple/swift-evolution/blob/master/proposals/0005-objective-c-name-translation.md).

This repository contains the Swift projections of Objective-C APIs for
Cocoa and Cocoa Touch across the four Apple platforms (iOS, OS X,
watchOS, tvOS) as well as sample projects that use those APIs. It is
intended to allow anyone to explore the effects of Swift 3's changes
to the Clang importer, both to the APIs themselves (are they closer to
matching the Swift API Design Guidelines?) and to sample projects that
use those APIs (is the code clearer and more "Swifty"?). This
repository contains two major branches:

* `swift-2`: This branch provides the baseline Swift 2 projections of Objective-C APIs along with sample projects that compile in Swift 2. This branch will evolve only when the source inputs change, e.g., the addition of new sample code or updated SDKs when a new version of Xcode becomes available.

* `swift-3`: This branch provides the Swift 3 versions of the APIs and code in Swift 2, branched from `swift-2`. The `swift-3` branch will evolve along with the implementation of the aforementioned improvements to Swift's Clang importer, and rebase from `swift-2` whenever `swift-2` changes.

Aside from documentation and scripts, all of the content in this
repository is drawn from other sources, either auto-generated from
those scripts and the Swift tools or imported from external sources.

Xcode version used to generate the current data: 7.2
