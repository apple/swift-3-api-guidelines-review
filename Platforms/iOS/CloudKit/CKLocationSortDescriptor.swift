
@available(iOS 8.0, *)
class CKLocationSortDescriptor : NSSortDescriptor, NSSecureCoding {
  init(key: String, relativeLocation: CLLocation)
  init(coder aDecoder: NSCoder)
  @NSCopying var relativeLocation: CLLocation { get }
  convenience init(key: String?, ascending: Bool)
  convenience init(key: String?, ascending: Bool, selector: Selector)
  @available(iOS 4.0, *)
  convenience init(key: String?, ascending: Bool, comparator cmptr: NSComparator)
}
