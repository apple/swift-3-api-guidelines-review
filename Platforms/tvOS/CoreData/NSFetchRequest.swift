
struct NSFetchRequestResultType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ManagedObjectResultType: NSFetchRequestResultType { get }
  static var ManagedObjectIDResultType: NSFetchRequestResultType { get }
  @available(tvOS 3.0, *)
  static var DictionaryResultType: NSFetchRequestResultType { get }
  @available(tvOS 3.0, *)
  static var CountResultType: NSFetchRequestResultType { get }
}
@available(tvOS 3.0, *)
class NSFetchRequest : NSPersistentStoreRequest, Coding {
  init()
  @available(tvOS 4.0, *)
  convenience init(entityName: String)
  var entity: NSEntityDescription?
  @available(tvOS 4.0, *)
  var entityName: String? { get }
  var predicate: Predicate?
  var sortDescriptors: [SortDescriptor]?
  var fetchLimit: Int
  var affectedStores: [NSPersistentStore]?
  @available(tvOS 3.0, *)
  var resultType: NSFetchRequestResultType
  @available(tvOS 3.0, *)
  var includesSubentities: Bool
  @available(tvOS 3.0, *)
  var includesPropertyValues: Bool
  @available(tvOS 3.0, *)
  var returnsObjectsAsFaults: Bool
  @available(tvOS 3.0, *)
  var relationshipKeyPathsForPrefetching: [String]?
  @available(tvOS 3.0, *)
  var includesPendingChanges: Bool
  @available(tvOS 3.0, *)
  var returnsDistinctResults: Bool
  @available(tvOS 3.0, *)
  var propertiesToFetch: [AnyObject]?
  @available(tvOS 3.0, *)
  var fetchOffset: Int
  @available(tvOS 3.0, *)
  var fetchBatchSize: Int
  @available(tvOS 5.0, *)
  var shouldRefreshRefetchedObjects: Bool
  @available(tvOS 5.0, *)
  var propertiesToGroupBy: [AnyObject]?
  @available(tvOS 5.0, *)
  var havingPredicate: Predicate?
  @available(tvOS 3.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
struct _fetchRequestFlags {
  var distinctValuesOnly: UInt32
  var includesSubentities: UInt32
  var includesPropertyValues: UInt32
  var resultType: UInt32
  var returnsObjectsAsFaults: UInt32
  var excludePendingChanges: UInt32
  var isInUse: UInt32
  var entityIsName: UInt32
  var refreshesRefetched: UInt32
  var propertiesValidated: UInt32
  var disableCaching: UInt32
  var _RESERVED: UInt32
  init()
  init(distinctValuesOnly: UInt32, includesSubentities: UInt32, includesPropertyValues: UInt32, resultType: UInt32, returnsObjectsAsFaults: UInt32, excludePendingChanges: UInt32, isInUse: UInt32, entityIsName: UInt32, refreshesRefetched: UInt32, propertiesValidated: UInt32, disableCaching: UInt32, _RESERVED: UInt32)
}
