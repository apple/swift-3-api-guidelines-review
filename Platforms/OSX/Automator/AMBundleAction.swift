
@available(OSX 10.4, *)
class AMBundleAction : AMAction, Coding, Copying {
  func awakeFromBundle()
  var hasView: Bool { get }
  var view: NSView? { get }
  var bundle: Bundle { get }
  var parameters: MutableDictionary?
  init?(definition dict: [String : AnyObject], fromArchive archived: Bool)
  @available(OSX 10.5, *)
  init(contentsOf fileURL: URL) throws
  init()
  @available(OSX 10.4, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.4, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
