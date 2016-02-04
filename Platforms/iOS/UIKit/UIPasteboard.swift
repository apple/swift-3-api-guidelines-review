
let UIPasteboardNameGeneral: String
let UIPasteboardNameFind: String
@available(iOS 3.0, *)
class UIPasteboard : NSObject {
  class func generalPasteboard() -> UIPasteboard
  /*not inherited*/ init?(name pasteboardName: String, create: Bool)
  class func pasteboardWithUniqueName() -> UIPasteboard
  var name: String { get }
  class func removePasteboardWithName(pasteboardName: String)
  var persistent: Bool
  var changeCount: Int { get }
  func pasteboardTypes() -> [String]
  func containsPasteboardTypes(pasteboardTypes: [String]) -> Bool
  func dataForPasteboardType(pasteboardType: String) -> NSData?
  func valueForPasteboardType(pasteboardType: String) -> AnyObject?
  func setValue(value: AnyObject, forPasteboardType pasteboardType: String)
  func setData(data: NSData, forPasteboardType pasteboardType: String)
  var numberOfItems: Int { get }
  func pasteboardTypesForItemSet(itemSet: NSIndexSet?) -> [AnyObject]?
  func containsPasteboardTypes(pasteboardTypes: [String], inItemSet itemSet: NSIndexSet?) -> Bool
  func itemSetWithPasteboardTypes(pasteboardTypes: [AnyObject]) -> NSIndexSet?
  func valuesForPasteboardType(pasteboardType: String, inItemSet itemSet: NSIndexSet?) -> [AnyObject]?
  func dataForPasteboardType(pasteboardType: String, inItemSet itemSet: NSIndexSet?) -> [AnyObject]?
  var items: [AnyObject]
  func addItems(items: [[String : AnyObject]])
  init()
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
