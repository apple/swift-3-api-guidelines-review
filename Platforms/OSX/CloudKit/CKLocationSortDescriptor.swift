
@available(OSX 10.10, *)
class CKLocationSortDescriptor : NSSortDescriptor, NSSecureCoding {
  init(key: String, relativeLocation: CLLocation)
  init(coder aDecoder: NSCoder)
  @NSCopying var relativeLocation: CLLocation { get }
  convenience init(key: String?, ascending: Bool)
  convenience init(key: String?, ascending: Bool, selector: Selector)
  @available(OSX 10.6, *)
  convenience init(key: String?, ascending: Bool, comparator cmptr: NSComparator)
}
