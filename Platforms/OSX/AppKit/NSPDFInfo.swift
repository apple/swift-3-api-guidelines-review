
@available(OSX 10.9, *)
class NSPDFInfo : NSObject, NSCopying, NSCoding {
  @NSCopying var url: NSURL?
  var isFileExtensionHidden: Bool
  var tagNames: [String]
  var orientation: NSPaperOrientation
  var paperSize: NSSize
  var attributes: NSMutableDictionary { get }
  @available(OSX 10.9, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.9, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
