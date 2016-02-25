
let NSVariableStatusItemLength: CGFloat
let NSSquareStatusItemLength: CGFloat
class NSStatusBar : NSObject {
  class func system() -> NSStatusBar
  func statusItem(withLength length: CGFloat) -> NSStatusItem
  func remove(_ item: NSStatusItem)
  var isVertical: Bool { get }
  var thickness: CGFloat { get }
}
