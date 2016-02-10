
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
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.4, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
