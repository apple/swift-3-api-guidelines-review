
@available(OSX 10.5, *)
class CBIdentityPicker : NSObject {
  var title: String?
  var allowsMultipleSelection: Bool
  func runModal() -> Int
  @available(OSX, introduced=10.5, deprecated=10.11)
  func runModalForWindow(window: NSWindow, modalDelegate delegate: AnyObject?, didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func runModalForWindow(window: NSWindow, completionHandler: ((NSModalResponse) -> Void)?)
  var identities: [CBIdentity] { get }
  init()
}
