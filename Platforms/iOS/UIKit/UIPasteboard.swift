
let UIPasteboardNameGeneral: String
let UIPasteboardNameFind: String
@available(iOS 3.0, *)
class UIPasteboard : NSObject {
  class func general() -> UIPasteboard
  /*not inherited*/ init?(name pasteboardName: String, create create: Bool)
  class func withUniqueName() -> UIPasteboard
  var name: String { get }
  class func remove(withName pasteboardName: String)
  var isPersistent: Bool
  var changeCount: Int { get }
  func pasteboardTypes() -> [String]
  func containsPasteboardTypes(_ pasteboardTypes: [String]) -> Bool
  func data(forPasteboardType pasteboardType: String) -> NSData?
  func value(forPasteboardType pasteboardType: String) -> AnyObject?
  func setValue(_ value: AnyObject, forPasteboardType pasteboardType: String)
  func setData(_ data: NSData, forPasteboardType pasteboardType: String)
  var numberOfItems: Int { get }
  func pasteboardTypes(forItemSet itemSet: NSIndexSet?) -> [AnyObject]?
  func containsPasteboardTypes(_ pasteboardTypes: [String], inItemSet itemSet: NSIndexSet?) -> Bool
  func itemSet(withPasteboardTypes pasteboardTypes: [AnyObject]) -> NSIndexSet?
  func values(forPasteboardType pasteboardType: String, inItemSet itemSet: NSIndexSet?) -> [AnyObject]?
  func data(forPasteboardType pasteboardType: String, inItemSet itemSet: NSIndexSet?) -> [AnyObject]?
  var items: [AnyObject]
  func addItems(_ items: [[String : AnyObject]])
}
let UIPasteboardChangedNotification: String
let UIPasteboardChangedTypesAddedKey: String
let UIPasteboardChangedTypesRemovedKey: String
let UIPasteboardRemovedNotification: String
var UIPasteboardTypeListString: NSArray
var UIPasteboardTypeListURL: NSArray
var UIPasteboardTypeListImage: NSArray
var UIPasteboardTypeListColor: NSArray
extension UIPasteboard {
  var string: String?
  var strings: [String]?
  @NSCopying var url: NSURL?
  var urls: [NSURL]?
  @NSCopying var image: UIImage?
  var images: [UIImage]?
  @NSCopying var color: UIColor?
  var colors: [UIColor]?
}
