
struct NSFetchRequestResultType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var managedObjectResultType: NSFetchRequestResultType { get }
  static var managedObjectIDResultType: NSFetchRequestResultType { get }
  @available(OSX 10.6, *)
  static var dictionaryResultType: NSFetchRequestResultType { get }
  @available(OSX 10.6, *)
  static var countResultType: NSFetchRequestResultType { get }
}
@available(OSX 10.4, *)
class NSFetchRequest : NSPersistentStoreRequest, Coding {
  init()
  @available(OSX 10.7, *)
  convenience init(entityName: String)
  var entity: NSEntityDescription?
  @available(OSX 10.7, *)
  var entityName: String? { get }
  var predicate: Predicate?
  var sortDescriptors: [SortDescriptor]?
  var fetchLimit: Int
  var affectedStores: [NSPersistentStore]?
  @available(OSX 10.5, *)
  var resultType: NSFetchRequestResultType
  @available(OSX 10.5, *)
  var includesSubentities: Bool
  @available(OSX 10.5, *)
  var includesPropertyValues: Bool
  @available(OSX 10.5, *)
  var returnsObjectsAsFaults: Bool
  @available(OSX 10.5, *)
  var relationshipKeyPathsForPrefetching: [String]?
  @available(OSX 10.6, *)
  var includesPendingChanges: Bool
  @available(OSX 10.6, *)
  var returnsDistinctResults: Bool
  @available(OSX 10.6, *)
  var propertiesToFetch: [AnyObject]?
  @available(OSX 10.6, *)
  var fetchOffset: Int
  @available(OSX 10.6, *)
  var fetchBatchSize: Int
  @available(OSX 10.7, *)
  var shouldRefreshRefetchedObjects: Bool
  @available(OSX 10.7, *)
  var propertiesToGroupBy: [AnyObject]?
  @available(OSX 10.7, *)
  var havingPredicate: Predicate?
  @available(OSX 10.4, *)
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
