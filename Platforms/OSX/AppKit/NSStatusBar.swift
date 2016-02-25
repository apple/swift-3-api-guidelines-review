
let NSVariableStatusItemLength: CGFloat
let NSSquareStatusItemLength: CGFloat
class NSStatusBar : NSObject {
  class func systemStatusBar() -> NSStatusBar
  func statusItemWithLength(_ length: CGFloat) -> NSStatusItem
  func removeStatusItem(_ item: NSStatusItem)
  var vertical: Bool { get }
  var thickness: CGFloat { get }
}
