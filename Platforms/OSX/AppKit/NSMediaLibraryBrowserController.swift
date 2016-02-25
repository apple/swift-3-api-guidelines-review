
@available(OSX 10.9, *)
struct NSMediaLibrary : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var Audio: NSMediaLibrary { get }
  static var Image: NSMediaLibrary { get }
  static var Movie: NSMediaLibrary { get }
}
@available(OSX 10.9, *)
class NSMediaLibraryBrowserController : NSObject {
  var visible: Bool
  var frame: NSRect
  var mediaLibraries: NSMediaLibrary
  class func sharedMediaLibraryBrowserController() -> NSMediaLibraryBrowserController
  @IBAction func togglePanel(_ sender: AnyObject?)
}
