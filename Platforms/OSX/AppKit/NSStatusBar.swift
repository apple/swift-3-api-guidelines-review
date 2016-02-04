
let NSVariableStatusItemLength: CGFloat
let NSSquareStatusItemLength: CGFloat
class NSStatusBar : NSObject {
  class func systemStatusBar() -> NSStatusBar
  func statusItemWithLength(length: CGFloat) -> NSStatusItem
  func removeStatusItem(item: NSStatusItem)
  var vertical: Bool { get }
  var thickness: CGFloat { get }
  init()
}
