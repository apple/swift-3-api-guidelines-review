
@available(iOS 3.0, *)
class NSFetchedResultsController : NSObject {
  init(fetchRequest fetchRequest: NSFetchRequest, managedObjectContext context: NSManagedObjectContext, sectionNameKeyPath sectionNameKeyPath: String?, cacheName name: String?)
  func performFetch() throws
  var fetchRequest: NSFetchRequest { get }
  var managedObjectContext: NSManagedObjectContext { get }
  var sectionNameKeyPath: String? { get }
  var cacheName: String? { get }
  unowned(unsafe) var delegate: @sil_unmanaged NSFetchedResultsControllerDelegate?
  class func deleteCacheWithName(_ name: String?)
  var fetchedObjects: [AnyObject]? { get }
  func objectAtIndexPath(_ indexPath: NSIndexPath) -> AnyObject
  func indexPathForObject(_ object: AnyObject) -> NSIndexPath?
  func sectionIndexTitleForSectionName(_ sectionName: String) -> String?
  var sectionIndexTitles: [String] { get }
  var sections: [NSFetchedResultsSectionInfo]? { get }
  func sectionForSectionIndexTitle(_ title: String, atIndex sectionIndex: Int) -> Int
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
  init(_sendObjectChangeNotifications _sendObjectChangeNotifications: UInt32, _sendSectionChangeNotifications _sendSectionChangeNotifications: UInt32, _sendDidChangeContentNotifications _sendDidChangeContentNotifications: UInt32, _sendWillChangeContentNotifications _sendWillChangeContentNotifications: UInt32, _sendSectionIndexTitleForSectionName _sendSectionIndexTitleForSectionName: UInt32, _changedResultsSinceLastSave _changedResultsSinceLastSave: UInt32, _hasMutableFetchedResults _hasMutableFetchedResults: UInt32, _hasBatchedArrayResults _hasBatchedArrayResults: UInt32, _hasSections _hasSections: UInt32, _usesNonpersistedProperties _usesNonpersistedProperties: UInt32, _includesSubentities _includesSubentities: UInt32, _reservedFlags _reservedFlags: UInt32)
}
protocol NSFetchedResultsSectionInfo {
  var name: String { get }
  var indexTitle: String? { get }
  var numberOfObjects: Int { get }
  var objects: [AnyObject]? { get }
}
protocol NSFetchedResultsControllerDelegate : NSObjectProtocol {
  @available(iOS 3.0, *)
  optional func controller(_ controller: NSFetchedResultsController, didChangeObject anObject: AnyObject, atIndexPath indexPath: NSIndexPath?, forChangeType type: NSFetchedResultsChangeType, newIndexPath newIndexPath: NSIndexPath?)
  @available(iOS 3.0, *)
  optional func controller(_ controller: NSFetchedResultsController, didChangeSection sectionInfo: NSFetchedResultsSectionInfo, atIndex sectionIndex: Int, forChangeType type: NSFetchedResultsChangeType)
  @available(iOS 3.0, *)
  optional func controllerWillChangeContent(_ controller: NSFetchedResultsController)
  @available(iOS 3.0, *)
  optional func controllerDidChangeContent(_ controller: NSFetchedResultsController)
  @available(iOS 4.0, *)
  optional func controller(_ controller: NSFetchedResultsController, sectionIndexTitleForSectionName sectionName: String) -> String?
}
@available(iOS 3.0, *)
enum NSFetchedResultsChangeType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Insert
  case Delete
  case Move
  case Update
}
