
class NSMenuItem : Object, Copying, Coding, NSValidatedUserInterfaceItem {
  class func setUsesUserKeyEquivalents(flag: Bool)
  class func usesUserKeyEquivalents() -> Bool
  class func separator() -> NSMenuItem
  init(title aString: String, action aSelector: Selector, keyEquivalent charCode: String)
  unowned(unsafe) var menu: @sil_unmanaged NSMenu?
  var hasSubmenu: Bool { get }
  var submenu: NSMenu?
  @available(OSX 10.6, *)
  unowned(unsafe) var parent: @sil_unmanaged NSMenuItem? { get }
  var title: String
  @NSCopying var attributedTitle: AttributedString?
  var isSeparatorItem: Bool { get }
  var keyEquivalent: String
  var keyEquivalentModifierMask: Int
  var userKeyEquivalent: String { get }
  func setTitleWithMnemonic(stringWithAmpersand: String)
  var image: NSImage?
  var state: Int
  var onStateImage: NSImage!
  var offStateImage: NSImage!
  var mixedStateImage: NSImage!
  var isEnabled: Bool
  var isAlternate: Bool
  var indentationLevel: Int
  weak var target: @sil_weak AnyObject?
  var action: Selector
  var tag: Int
  var representedObject: AnyObject?
  @available(OSX 10.5, *)
  var view: NSView?
  @available(OSX 10.5, *)
  var isHighlighted: Bool { get }
  @available(OSX 10.5, *)
  var isHidden: Bool
  @available(OSX 10.5, *)
  var isHiddenOrHasHiddenAncestor: Bool { get }
  var toolTip: String?
  init()
  func copy(zone: Zone = nil) -> AnyObject
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
struct __miFlags {
  var keGenerationCount: UInt32
  var disabled: UInt32
  var isSeparator: UInt32
  var hidden: UInt32
  var alternate: UInt32
  var moreAlternate: UInt32
  var singleAlternate: UInt32
  var indent: UInt32
  var keShareMode: UInt32
  var state: UInt32
  var destructive: UInt32
  var RESERVED1: UInt32
  var limitedView: UInt32
  var nextItemIsAlternate: UInt32
  var blockKE: UInt32
  var ignoredForAccessibility: UInt32
  var hiddenActiveKE: UInt32
  var noRepeatKEs: UInt32
  var targetWeak: UInt32
  init()
  init(keGenerationCount: UInt32, disabled: UInt32, isSeparator: UInt32, hidden: UInt32, alternate: UInt32, moreAlternate: UInt32, singleAlternate: UInt32, indent: UInt32, keShareMode: UInt32, state: UInt32, destructive: UInt32, RESERVED1: UInt32, limitedView: UInt32, nextItemIsAlternate: UInt32, blockKE: UInt32, ignoredForAccessibility: UInt32, hiddenActiveKE: UInt32, noRepeatKEs: UInt32, targetWeak: UInt32)
}
extension NSView {
  @available(OSX 10.5, *)
  var enclosingMenuItem: NSMenuItem? { get }
}
extension NSMenuItem {
}
