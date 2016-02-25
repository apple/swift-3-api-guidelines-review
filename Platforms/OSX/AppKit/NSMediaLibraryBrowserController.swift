
@available(OSX 10.9, *)
struct NSMediaLibrary : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var audio: NSMediaLibrary { get }
  static var image: NSMediaLibrary { get }
  static var movie: NSMediaLibrary { get }
}
@available(OSX 10.9, *)
class NSMediaLibraryBrowserController : NSObject {
  var isVisible: Bool
  var frame: NSRect
  var mediaLibraries: NSMediaLibrary
  class func shared() -> NSMediaLibraryBrowserController
  @IBAction func togglePanel(_ sender: AnyObject?)
}
