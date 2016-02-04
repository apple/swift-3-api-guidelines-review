
@available(tvOS 8.0, *)
class CKLocationSortDescriptor : SortDescriptor, SecureCoding {
  init(key: String, relativeLocation: CLLocation)
  init(coder aDecoder: Coder)
  @NSCopying var relativeLocation: CLLocation { get }
  convenience init(key: String?, ascending: Bool)
  convenience init(key: String?, ascending: Bool, selector: Selector)
  @available(tvOS 4.0, *)
  convenience init(key: String?, ascending: Bool, comparator cmptr: Comparator)
}
