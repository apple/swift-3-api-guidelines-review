
@available(OSX 10.4, *)
class AMBundleAction : AMAction, NSCoding, NSCopying {
  func awakeFromBundle()
  var hasView: Bool { get }
  var view: NSView? { get }
  var bundle: NSBundle { get }
  var parameters: NSMutableDictionary?
  @available(OSX 10.4, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.4, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
