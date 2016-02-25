
@available(OSX 10.5, *)
class CBIdentityPicker : NSObject {
  var title: String?
  var allowsMultipleSelection: Bool
  func runModal() -> Int
  @available(OSX, introduced=10.5, deprecated=10.11)
  func runModalForWindow(_ window: NSWindow, modalDelegate delegate: AnyObject?, didEndSelector didEndSelector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>)
  func runModalForWindow(_ window: NSWindow, completionHandler completionHandler: ((NSModalResponse) -> Void)?)
  var identities: [CBIdentity] { get }
}
