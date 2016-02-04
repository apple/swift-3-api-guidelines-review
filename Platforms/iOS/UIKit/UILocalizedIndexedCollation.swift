
@available(iOS 3.0, *)
class UILocalizedIndexedCollation : Object {
  class func current() -> Self
  var sectionTitles: [String] { get }
  var sectionIndexTitles: [String] { get }
  func sectionForSectionIndexTitleAt(indexTitleIndex: Int) -> Int
  func sectionFor(object: AnyObject, collationStringSelector selector: Selector) -> Int
  func sortedArrayFrom(array: [AnyObject], collationStringSelector selector: Selector) -> [AnyObject]
  init()
}
