
@available(OSX 10.9, *)
struct NSMediaLibrary : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var audio: NSMediaLibrary { get }
  static var image: NSMediaLibrary { get }
  static var movie: NSMediaLibrary { get }
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
