
@available(OSX 10.4, *)
class NSMetadataQuery : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged NSMetadataQueryDelegate?
  @NSCopying var predicate: NSPredicate?
  var sortDescriptors: [NSSortDescriptor]
  var valueListAttributes: [String]
  var groupingAttributes: [String]?
  var notificationBatchingInterval: NSTimeInterval
  var searchScopes: [AnyObject]
  @available(OSX 10.9, *)
  var searchItems: [AnyObject]?
  @available(OSX 10.9, *)
  var operationQueue: NSOperationQueue?
  func startQuery() -> Bool
  func stopQuery()
  var started: Bool { get }
  var gathering: Bool { get }
  var stopped: Bool { get }
  func disableUpdates()
  func enableUpdates()
  var resultCount: Int { get }
  func resultAtIndex(idx: Int) -> AnyObject
  @available(OSX 10.9, *)
  func enumerateResultsUsingBlock(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.9, *)
  func enumerateResultsWithOptions(opts: NSEnumerationOptions, usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  var results: [AnyObject] { get }
  func indexOfResult(result: AnyObject) -> Int
  var valueLists: [String : [NSMetadataQueryAttributeValueTuple]] { get }
  var groupedResults: [NSMetadataQueryResultGroup] { get }
  func valueOfAttribute(attrName: String, forResultAtIndex idx: Int) -> AnyObject?
  init()
}
protocol NSMetadataQueryDelegate : NSObjectProtocol {
  @available(OSX 10.4, *)
  optional func metadataQuery(query: NSMetadataQuery, replacementObjectForResultObject result: NSMetadataItem) -> AnyObject
  @available(OSX 10.4, *)
  optional func metadataQuery(query: NSMetadataQuery, replacementValueForAttribute attrName: String, value attrValue: AnyObject) -> AnyObject
}
@available(OSX 10.4, *)
let NSMetadataQueryDidStartGatheringNotification: String
@available(OSX 10.4, *)
let NSMetadataQueryGatheringProgressNotification: String
@available(OSX 10.4, *)
let NSMetadataQueryDidFinishGatheringNotification: String
@available(OSX 10.4, *)
let NSMetadataQueryDidUpdateNotification: String
@available(OSX 10.9, *)
let NSMetadataQueryUpdateAddedItemsKey: String
@available(OSX 10.9, *)
let NSMetadataQueryUpdateChangedItemsKey: String
@available(OSX 10.9, *)
let NSMetadataQueryUpdateRemovedItemsKey: String
@available(OSX 10.4, *)
let NSMetadataQueryResultContentRelevanceAttribute: String
@available(OSX 10.4, *)
let NSMetadataQueryUserHomeScope: String
@available(OSX 10.4, *)
let NSMetadataQueryLocalComputerScope: String
@available(OSX 10.4, *)
let NSMetadataQueryNetworkScope: String
@available(OSX 10.9, *)
let NSMetadataQueryIndexedLocalComputerScope: String
@available(OSX 10.9, *)
let NSMetadataQueryIndexedNetworkScope: String
@available(OSX 10.7, *)
let NSMetadataQueryUbiquitousDocumentsScope: String
@available(OSX 10.7, *)
let NSMetadataQueryUbiquitousDataScope: String
@available(OSX 10.10, *)
let NSMetadataQueryAccessibleUbiquitousExternalDocumentsScope: String
@available(OSX 10.4, *)
class NSMetadataItem : NSObject {
  @available(OSX 10.9, *)
  init?(URL url: NSURL)
  func valueForAttribute(key: String) -> AnyObject?
  func valuesForAttributes(keys: [String]) -> [String : AnyObject]?
  var attributes: [String] { get }
  convenience init()
}
@available(OSX 10.4, *)
class NSMetadataQueryAttributeValueTuple : NSObject {
  var attribute: String { get }
  var value: AnyObject? { get }
  var count: Int { get }
  init()
}
@available(OSX 10.4, *)
class NSMetadataQueryResultGroup : NSObject {
  var attribute: String { get }
  var value: AnyObject { get }
  var subgroups: [NSMetadataQueryResultGroup]? { get }
  var resultCount: Int { get }
  func resultAtIndex(idx: Int) -> AnyObject
  var results: [AnyObject] { get }
  init()
}
