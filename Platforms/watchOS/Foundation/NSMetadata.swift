
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
  func startQuery() -> Bool
  func stopQuery()
  var started: Bool { get }
  var gathering: Bool { get }
  var stopped: Bool { get }
  func disableUpdates()
  func enableUpdates()
  var resultCount: Int { get }
  func resultAtIndex(_ idx: Int) -> AnyObject
  @available(watchOS 2.0, *)
  func enumerateResultsUsingBlock(_ block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 2.0, *)
  func enumerateResultsWithOptions(_ opts: NSEnumerationOptions, usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  var results: [AnyObject] { get }
  func indexOfResult(_ result: AnyObject) -> Int
  var valueLists: [String : [NSMetadataQueryAttributeValueTuple]] { get }
  var groupedResults: [NSMetadataQueryResultGroup] { get }
  func valueOfAttribute(_ attrName: String, forResultAtIndex idx: Int) -> AnyObject?
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
  func valueForAttribute(_ key: String) -> AnyObject?
  func valuesForAttributes(_ keys: [String]) -> [String : AnyObject]?
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
  func resultAtIndex(_ idx: Int) -> AnyObject
  var results: [AnyObject] { get }
}
