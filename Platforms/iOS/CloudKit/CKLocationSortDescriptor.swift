
@available(iOS 8.0, *)
class CKLocationSortDescriptor : NSSortDescriptor, NSSecureCoding {
  init(key key: String, relativeLocation relativeLocation: CLLocation)
  init(coder aDecoder: NSCoder)
  @NSCopying var relativeLocation: CLLocation { get }
  convenience init(key key: String?, ascending ascending: Bool)
  convenience init(key key: String?, ascending ascending: Bool, selector selector: Selector)
  @available(iOS 4.0, *)
  convenience init(key key: String?, ascending ascending: Bool, comparator cmptr: NSComparator)
}
