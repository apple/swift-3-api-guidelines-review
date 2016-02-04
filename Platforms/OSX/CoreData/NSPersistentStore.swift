
@available(OSX 10.5, *)
class NSPersistentStore : NSObject {
  class func metadataForPersistentStoreWithURL(url: NSURL) throws -> [String : AnyObject]
  class func setMetadata(metadata: [String : AnyObject]?, forPersistentStoreWithURL url: NSURL) throws
  @available(OSX 10.6, *)
  class func migrationManagerClass() -> AnyClass
  init(persistentStoreCoordinator root: NSPersistentStoreCoordinator?, configurationName name: String?, URL url: NSURL, options: [NSObject : AnyObject]?)
  func loadMetadata() throws
  weak var persistentStoreCoordinator: @sil_weak NSPersistentStoreCoordinator? { get }
  var configurationName: String { get }
  var options: [NSObject : AnyObject]? { get }
  var URL: NSURL?
  var identifier: String!
  var type: String { get }
  var readOnly: Bool
  var metadata: [String : AnyObject]!
  func didAddToPersistentStoreCoordinator(coordinator: NSPersistentStoreCoordinator)
  func willRemoveFromPersistentStoreCoordinator(coordinator: NSPersistentStoreCoordinator?)
}
struct _objectStoreFlags {
  var isReadOnly: UInt32
  var cleanOnRemove: UInt32
  var isMDDirty: UInt32
  var _RESERVED: UInt32
  init()
  init(isReadOnly: UInt32, cleanOnRemove: UInt32, isMDDirty: UInt32, _RESERVED: UInt32)
}