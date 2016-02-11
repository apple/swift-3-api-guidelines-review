
class NSScreen : Object {
  class func screens() -> [NSScreen]?
  class func main() -> NSScreen?
  class func deepest() -> NSScreen?
  @available(OSX 10.9, *)
  class func screensHaveSeparateSpaces() -> Bool
  var depth: NSWindowDepth { get }
  var frame: Rect { get }
  var visibleFrame: Rect { get }
  var deviceDescription: [String : AnyObject] { get }
  @available(OSX 10.6, *)
  var colorSpace: NSColorSpace? { get }
  var supportedWindowDepths: UnsafePointer<NSWindowDepth> { get }
  @available(OSX 10.7, *)
  func convertRectToBacking(aRect: Rect) -> Rect
  @available(OSX 10.7, *)
  func convertRect(fromBacking aRect: Rect) -> Rect
  @available(OSX 10.7, *)
  func backingAlignedRect(aRect: Rect, options: AlignmentOptions = []) -> Rect
  @available(OSX 10.7, *)
  var backingScaleFactor: CGFloat { get }
  init()
}
@available(OSX 10.6, *)
let NSScreenColorSpaceDidChangeNotification: String
extension NSScreen {
  @available(OSX 10.11, *)
  var maximumExtendedDynamicRangeColorComponentValue: CGFloat { get }
}
extension NSScreen {
}
