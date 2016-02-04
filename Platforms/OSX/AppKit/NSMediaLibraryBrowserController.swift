
@available(OSX 10.9, *)
struct NSMediaLibrary : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Audio: NSMediaLibrary { get }
  static var Image: NSMediaLibrary { get }
  static var Movie: NSMediaLibrary { get }
}
@available(OSX 10.9, *)
class NSMediaLibraryBrowserController : Object {
  var isVisible: Bool
  var frame: Rect
  var mediaLibraries: NSMediaLibrary
  class func shared() -> NSMediaLibraryBrowserController
  @IBAction func togglePanel(sender: AnyObject?)
  init()
}
