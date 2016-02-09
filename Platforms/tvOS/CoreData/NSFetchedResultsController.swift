
@available(tvOS 3.0, *)
class NSFetchedResultsController : Object {
  init(fetchRequest: NSFetchRequest, managedObjectContext context: NSManagedObjectContext, sectionNameKeyPath: String?, cacheName name: String?)
  func performFetch() throws
  var fetchRequest: NSFetchRequest { get }
  var managedObjectContext: NSManagedObjectContext { get }
  var sectionNameKeyPath: String? { get }
  var cacheName: String? { get }
  unowned(unsafe) var delegate: @sil_unmanaged NSFetchedResultsControllerDelegate?
  class func deleteCache(withName name: String?)
  var fetchedObjects: [AnyObject]? { get }
  func object(at indexPath: IndexPath) -> AnyObject
  func indexPath(forObject object: AnyObject) -> IndexPath?
  func sectionIndexTitle(forSectionName sectionName: String) -> String?
  var sectionIndexTitles: [String] { get }
  var sections: [NSFetchedResultsSectionInfo]? { get }
  func section(forSectionIndexTitle title: String, at sectionIndex: Int) -> Int
  init()
}
struct _fetchResultsControllerFlags {
  var _sendObjectChangeNotifications: UInt32
  var _sendSectionChangeNotifications: UInt32
  var _sendDidChangeContentNotifications: UInt32
  var _sendWillChangeContentNotifications: UInt32
  var _sendSectionIndexTitleForSectionName: UInt32
  var _changedResultsSinceLastSave: UInt32
  var _hasMutableFetchedResults: UInt32
  var _hasBatchedArrayResults: UInt32
  var _hasSections: UInt32
  var _usesNonpersistedProperties: UInt32
  var _includesSubentities: UInt32
  var _reservedFlags: UInt32
  init()
  init(_sendObjectChangeNotifications: UInt32, _sendSectionChangeNotifications: UInt32, _sendDidChangeContentNotifications: UInt32, _sendWillChangeContentNotifications: UInt32, _sendSectionIndexTitleForSectionName: UInt32, _changedResultsSinceLastSave: UInt32, _hasMutableFetchedResults: UInt32, _hasBatchedArrayResults: UInt32, _hasSections: UInt32, _usesNonpersistedProperties: UInt32, _includesSubentities: UInt32, _reservedFlags: UInt32)
}
protocol NSFetchedResultsSectionInfo {
  var name: String { get }
  var indexTitle: String? { get }
  var numberOfObjects: Int { get }
  var objects: [AnyObject]? { get }
}
protocol NSFetchedResultsControllerDelegate : ObjectProtocol {
  @available(tvOS 3.0, *)
  optional func controller(controller: NSFetchedResultsController, didChange anObject: AnyObject, at indexPath: IndexPath?, forChangeType type: NSFetchedResultsChangeType, newIndexPath: IndexPath?)
  @available(tvOS 3.0, *)
  optional func controller(controller: NSFetchedResultsController, didChangeSection sectionInfo: NSFetchedResultsSectionInfo, at sectionIndex: Int, forChangeType type: NSFetchedResultsChangeType)
  @available(tvOS 3.0, *)
  optional func controllerWillChangeContent(controller: NSFetchedResultsController)
  @available(tvOS 3.0, *)
  optional func controllerDidChangeContent(controller: NSFetchedResultsController)
  @available(tvOS 4.0, *)
  optional func controller(controller: NSFetchedResultsController, sectionIndexTitleForSectionName sectionName: String) -> String?
}
@available(tvOS 3.0, *)
enum NSFetchedResultsChangeType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case insert
  case delete
  case move
  case update
}
