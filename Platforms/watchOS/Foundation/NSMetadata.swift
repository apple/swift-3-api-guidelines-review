
@available(watchOS 2.0, *)
class NSMetadataQuery : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged NSMetadataQueryDelegate?
  @NSCopying var predicate: NSPredicate?
  var sortDescriptors: [NSSortDescriptor]
  var valueListAttributes: [String]
  var groupingAttributes: [String]?
  var notificationBatchingInterval: NSTimeInterval
  var searchScopes: [AnyObject]
  @available(watchOS 2.0, *)
  var searchItems: [AnyObject]?
  @available(watchOS 2.0, *)
  var operationQueue: NSOperationQueue?
  func start() -> Bool
  func stop()
  var isStarted: Bool { get }
  var isGathering: Bool { get }
  var isStopped: Bool { get }
  func disableUpdates()
  func enableUpdates()
  var resultCount: Int { get }
  func result(at idx: Int) -> AnyObject
  @available(watchOS 2.0, *)
  func enumerateResults(_ block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 2.0, *)
  func enumerateResults(_ opts: NSEnumerationOptions = [], using block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  var results: [AnyObject] { get }
  func index(ofResult result: AnyObject) -> Int
  var valueLists: [String : [NSMetadataQueryAttributeValueTuple]] { get }
  var groupedResults: [NSMetadataQueryResultGroup] { get }
  func value(ofAttribute attrName: String, forResultAt idx: Int) -> AnyObject?
}
protocol NSMetadataQueryDelegate : NSObjectProtocol {
  @available(watchOS 2.0, *)
  optional func metadataQuery(_ query: NSMetadataQuery, replacementObjectForResultObject result: NSMetadataItem) -> AnyObject
  @available(watchOS 2.0, *)
  optional func metadataQuery(_ query: NSMetadataQuery, replacementValueForAttribute attrName: String, value attrValue: AnyObject) -> AnyObject
}
@available(watchOS 2.0, *)
let NSMetadataQueryDidStartGatheringNotification: String
@available(watchOS 2.0, *)
let NSMetadataQueryGatheringProgressNotification: String
@available(watchOS 2.0, *)
let NSMetadataQueryDidFinishGatheringNotification: String
@available(watchOS 2.0, *)
let NSMetadataQueryDidUpdateNotification: String
@available(watchOS 2.0, *)
let NSMetadataQueryUpdateAddedItemsKey: String
@available(watchOS 2.0, *)
let NSMetadataQueryUpdateChangedItemsKey: String
@available(watchOS 2.0, *)
let NSMetadataQueryUpdateRemovedItemsKey: String
@available(watchOS 2.0, *)
let NSMetadataQueryResultContentRelevanceAttribute: String
@available(watchOS 2.0, *)
let NSMetadataQueryUbiquitousDocumentsScope: String
@available(watchOS 2.0, *)
let NSMetadataQueryUbiquitousDataScope: String
@available(watchOS 2.0, *)
let NSMetadataQueryAccessibleUbiquitousExternalDocumentsScope: String
@available(watchOS 2.0, *)
class NSMetadataItem : NSObject {
  func value(forAttribute key: String) -> AnyObject?
  func values(forAttributes keys: [String]) -> [String : AnyObject]?
  var attributes: [String] { get }
}
@available(watchOS 2.0, *)
class NSMetadataQueryAttributeValueTuple : NSObject {
  var attribute: String { get }
  var value: AnyObject? { get }
  var count: Int { get }
}
@available(watchOS 2.0, *)
class NSMetadataQueryResultGroup : NSObject {
  var attribute: String { get }
  var value: AnyObject { get }
  var subgroups: [NSMetadataQueryResultGroup]? { get }
  var resultCount: Int { get }
  func result(at idx: Int) -> AnyObject
  var results: [AnyObject] { get }
}
