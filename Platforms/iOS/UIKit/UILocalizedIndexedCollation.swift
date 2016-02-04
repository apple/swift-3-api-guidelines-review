
@available(iOS 3.0, *)
class UILocalizedIndexedCollation : NSObject {
  class func currentCollation() -> Self
  var sectionTitles: [String] { get }
  var sectionIndexTitles: [String] { get }
  func sectionForSectionIndexTitleAtIndex(indexTitleIndex: Int) -> Int
  func sectionForObject(object: AnyObject, collationStringSelector selector: Selector) -> Int
  func sortedArrayFromArray(array: [AnyObject], collationStringSelector selector: Selector) -> [AnyObject]
  init()
}
