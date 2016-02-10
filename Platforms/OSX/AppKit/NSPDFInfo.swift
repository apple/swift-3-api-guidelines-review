
@available(OSX 10.9, *)
class NSPDFInfo : Object, Copying, Coding {
  @NSCopying var url: URL?
  var isFileExtensionHidden: Bool
  var tagNames: [String]
  var orientation: NSPaperOrientation
  var paperSize: Size
  var attributes: MutableDictionary { get }
  init()
  @available(OSX 10.9, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(OSX 10.9, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
