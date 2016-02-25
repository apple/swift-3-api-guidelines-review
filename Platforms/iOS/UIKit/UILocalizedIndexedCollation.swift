
@available(iOS 3.0, *)
class UILocalizedIndexedCollation : NSObject {
  class func current() -> Self
  var sectionTitles: [String] { get }
  var sectionIndexTitles: [String] { get }
  func sectionForSectionIndexTitle(at indexTitleIndex: Int) -> Int
  func section(for object: AnyObject, collationStringSelector selector: Selector) -> Int
  func sortedArray(from array: [AnyObject], collationStringSelector selector: Selector) -> [AnyObject]
}
