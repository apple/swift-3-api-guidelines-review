
@available(OSX 10.9, *)
class NSPDFInfo : NSObject, NSCopying, NSCoding {
  @NSCopying var URL: NSURL?
  var fileExtensionHidden: Bool
  var tagNames: [String]
  var orientation: NSPaperOrientation
  var paperSize: NSSize
  var attributes: NSMutableDictionary { get }
  @available(OSX 10.9, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.9, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
