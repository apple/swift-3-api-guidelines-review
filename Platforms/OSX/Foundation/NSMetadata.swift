
@available(OSX 10.4, *)
class MetadataQuery : Object {
  unowned(unsafe) var delegate: @sil_unmanaged MetadataQueryDelegate?
  @NSCopying var predicate: Predicate?
  var sortDescriptors: [SortDescriptor]
  var valueListAttributes: [String]
  var groupingAttributes: [String]?
  var notificationBatchingInterval: TimeInterval
  var searchScopes: [AnyObject]
  @available(OSX 10.9, *)
  var searchItems: [AnyObject]?
  @available(OSX 10.9, *)
  var operationQueue: OperationQueue?
  func start() -> Bool
  func stop()
  var isStarted: Bool { get }
  var isGathering: Bool { get }
  var isStopped: Bool { get }
  func disableUpdates()
  func enableUpdates()
  var resultCount: Int { get }
  func resultAt(idx: Int) -> AnyObject
  @available(OSX 10.9, *)
  func enumerateResultsUsing(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.9, *)
  func enumerateResults(options opts: EnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  var results: [AnyObject] { get }
  func indexOfResult(result: AnyObject) -> Int
  var valueLists: [String : [MetadataQueryAttributeValueTuple]] { get }
  var groupedResults: [MetadataQueryResultGroup] { get }
  func valueOfAttribute(attrName: String, forResultAt idx: Int) -> AnyObject?
  init()
}
protocol MetadataQueryDelegate : ObjectProtocol {
  @available(OSX 10.4, *)
  optional func metadataQuery(query: MetadataQuery, replacementObjectForResultObject result: MetadataItem) -> AnyObject
  @available(OSX 10.4, *)
  optional func metadataQuery(query: MetadataQuery, replacementValueForAttribute attrName: String, value attrValue: AnyObject) -> AnyObject
}
@available(OSX 10.4, *)
let metadataQueryDidStartGatheringNotification: String
@available(OSX 10.4, *)
let metadataQueryGatheringProgressNotification: String
@available(OSX 10.4, *)
let metadataQueryDidFinishGatheringNotification: String
@available(OSX 10.4, *)
let metadataQueryDidUpdateNotification: String
@available(OSX 10.9, *)
let metadataQueryUpdateAddedItemsKey: String
@available(OSX 10.9, *)
let metadataQueryUpdateChangedItemsKey: String
@available(OSX 10.9, *)
let metadataQueryUpdateRemovedItemsKey: String
@available(OSX 10.4, *)
let metadataQueryResultContentRelevanceAttribute: String
@available(OSX 10.4, *)
let metadataQueryUserHomeScope: String
@available(OSX 10.4, *)
let metadataQueryLocalComputerScope: String
@available(OSX 10.4, *)
let metadataQueryNetworkScope: String
@available(OSX 10.9, *)
let metadataQueryIndexedLocalComputerScope: String
@available(OSX 10.9, *)
let metadataQueryIndexedNetworkScope: String
@available(OSX 10.7, *)
let metadataQueryUbiquitousDocumentsScope: String
@available(OSX 10.7, *)
let metadataQueryUbiquitousDataScope: String
@available(OSX 10.10, *)
let metadataQueryAccessibleUbiquitousExternalDocumentsScope: String
@available(OSX 10.4, *)
class MetadataItem : Object {
  @available(OSX 10.9, *)
  init?(url: URL)
  func valueForAttribute(key: String) -> AnyObject?
  func valuesForAttributes(keys: [String]) -> [String : AnyObject]?
  var attributes: [String] { get }
  convenience init()
}
@available(OSX 10.4, *)
class MetadataQueryAttributeValueTuple : Object {
  var attribute: String { get }
  var value: AnyObject? { get }
  var count: Int { get }
  init()
}
@available(OSX 10.4, *)
class MetadataQueryResultGroup : Object {
  var attribute: String { get }
  var value: AnyObject { get }
  var subgroups: [MetadataQueryResultGroup]? { get }
  var resultCount: Int { get }
  func resultAt(idx: Int) -> AnyObject
  var results: [AnyObject] { get }
  init()
}
