
@available(watchOS 2.0, *)
class NSFetchedResultsController : NSObject {
  init(fetchRequest: NSFetchRequest, managedObjectContext context: NSManagedObjectContext, sectionNameKeyPath: String?, cacheName name: String?)
  func performFetch() throws
  var fetchRequest: NSFetchRequest { get }
  var managedObjectContext: NSManagedObjectContext { get }
  var sectionNameKeyPath: String? { get }
  var cacheName: String? { get }
  unowned(unsafe) var delegate: @sil_unmanaged NSFetchedResultsControllerDelegate?
  class func deleteCacheWithName(name: String?)
  var fetchedObjects: [AnyObject]? { get }
  func objectAtIndexPath(indexPath: NSIndexPath) -> AnyObject
  func indexPathForObject(object: AnyObject) -> NSIndexPath?
  func sectionIndexTitleForSectionName(sectionName: String) -> String?
  var sectionIndexTitles: [String] { get }
  var sections: [NSFetchedResultsSectionInfo]? { get }
  func sectionForSectionIndexTitle(title: String, atIndex sectionIndex: Int) -> Int
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
protocol NSFetchedResultsControllerDelegate : NSObjectProtocol {
  @available(watchOS 2.0, *)
  optional func controller(controller: NSFetchedResultsController, didChangeObject anObject: AnyObject, atIndexPath indexPath: NSIndexPath?, forChangeType type: NSFetchedResultsChangeType, newIndexPath: NSIndexPath?)
  @available(watchOS 2.0, *)
  optional func controller(controller: NSFetchedResultsController, didChangeSection sectionInfo: NSFetchedResultsSectionInfo, atIndex sectionIndex: Int, forChangeType type: NSFetchedResultsChangeType)
  @available(watchOS 2.0, *)
  optional func controllerWillChangeContent(controller: NSFetchedResultsController)
  @available(watchOS 2.0, *)
  optional func controllerDidChangeContent(controller: NSFetchedResultsController)
  @available(watchOS 2.0, *)
  optional func controller(controller: NSFetchedResultsController, sectionIndexTitleForSectionName sectionName: String) -> String?
}
@available(watchOS 2.0, *)
enum NSFetchedResultsChangeType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Insert
  case Delete
  case Move
  case Update
}