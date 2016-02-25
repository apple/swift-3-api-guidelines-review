
@available(iOS 3.0, *)
class UILocalizedIndexedCollation : NSObject {
  class func currentCollation() -> Self
  var sectionTitles: [String] { get }
  var sectionIndexTitles: [String] { get }
  func sectionForSectionIndexTitleAtIndex(_ indexTitleIndex: Int) -> Int
  func sectionForObject(_ object: AnyObject, collationStringSelector selector: Selector) -> Int
  func sortedArrayFromArray(_ array: [AnyObject], collationStringSelector selector: Selector) -> [AnyObject]
}
