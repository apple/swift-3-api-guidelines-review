
let UIPasteboardNameGeneral: String
let UIPasteboardNameFind: String
@available(iOS 3.0, *)
class UIPasteboard : NSObject {
  class func generalPasteboard() -> UIPasteboard
  /*not inherited*/ init?(name pasteboardName: String, create create: Bool)
  class func pasteboardWithUniqueName() -> UIPasteboard
  var name: String { get }
  class func removePasteboardWithName(_ pasteboardName: String)
  var persistent: Bool
  var changeCount: Int { get }
  func pasteboardTypes() -> [String]
  func containsPasteboardTypes(_ pasteboardTypes: [String]) -> Bool
  func dataForPasteboardType(_ pasteboardType: String) -> NSData?
  func valueForPasteboardType(_ pasteboardType: String) -> AnyObject?
  func setValue(_ value: AnyObject, forPasteboardType pasteboardType: String)
  func setData(_ data: NSData, forPasteboardType pasteboardType: String)
  var numberOfItems: Int { get }
  func pasteboardTypesForItemSet(_ itemSet: NSIndexSet?) -> [AnyObject]?
  func containsPasteboardTypes(_ pasteboardTypes: [String], inItemSet itemSet: NSIndexSet?) -> Bool
  func itemSetWithPasteboardTypes(_ pasteboardTypes: [AnyObject]) -> NSIndexSet?
  func valuesForPasteboardType(_ pasteboardType: String, inItemSet itemSet: NSIndexSet?) -> [AnyObject]?
  func dataForPasteboardType(_ pasteboardType: String, inItemSet itemSet: NSIndexSet?) -> [AnyObject]?
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
  @NSCopying var URL: NSURL?
  var URLs: [NSURL]?
  @NSCopying var image: UIImage?
  var images: [UIImage]?
  @NSCopying var color: UIColor?
  var colors: [UIColor]?
}
