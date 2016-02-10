
struct NSFetchRequestResultType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var managedObjectResultType: NSFetchRequestResultType { get }
  static var managedObjectIDResultType: NSFetchRequestResultType { get }
  @available(iOS 3.0, *)
  static var dictionaryResultType: NSFetchRequestResultType { get }
  @available(iOS 3.0, *)
  static var countResultType: NSFetchRequestResultType { get }
}
@available(iOS 3.0, *)
class NSFetchRequest : NSPersistentStoreRequest, Coding {
  init()
  @available(iOS 4.0, *)
  convenience init(entityName: String)
  var entity: NSEntityDescription?
  @available(iOS 4.0, *)
  var entityName: String? { get }
  var predicate: Predicate?
  var sortDescriptors: [SortDescriptor]?
  var fetchLimit: Int
  var affectedStores: [NSPersistentStore]?
  @available(iOS 3.0, *)
  var resultType: NSFetchRequestResultType
  @available(iOS 3.0, *)
  var includesSubentities: Bool
  @available(iOS 3.0, *)
  var includesPropertyValues: Bool
  @available(iOS 3.0, *)
  var returnsObjectsAsFaults: Bool
  @available(iOS 3.0, *)
  var relationshipKeyPathsForPrefetching: [String]?
  @available(iOS 3.0, *)
  var includesPendingChanges: Bool
  @available(iOS 3.0, *)
  var returnsDistinctResults: Bool
  @available(iOS 3.0, *)
  var propertiesToFetch: [AnyObject]?
  @available(iOS 3.0, *)
  var fetchOffset: Int
  @available(iOS 3.0, *)
  var fetchBatchSize: Int
  @available(iOS 5.0, *)
  var shouldRefreshRefetchedObjects: Bool
  @available(iOS 5.0, *)
  var propertiesToGroupBy: [AnyObject]?
  @available(iOS 5.0, *)
  var havingPredicate: Predicate?
  @available(iOS 3.0, *)
  func encode(with aCoder: Coder)
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
