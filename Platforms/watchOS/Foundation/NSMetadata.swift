
@available(watchOS 2.0, *)
class MetadataQuery : Object {
  unowned(unsafe) var delegate: @sil_unmanaged MetadataQueryDelegate?
  @NSCopying var predicate: Predicate?
  var sortDescriptors: [SortDescriptor]
  var valueListAttributes: [String]
  var groupingAttributes: [String]?
  var notificationBatchingInterval: TimeInterval
  var searchScopes: [AnyObject]
  @available(watchOS 2.0, *)
  var searchItems: [AnyObject]?
  @available(watchOS 2.0, *)
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
  @available(watchOS 2.0, *)
  func enumerateResults(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 2.0, *)
  func enumerateResults(opts: EnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  var results: [AnyObject] { get }
  func indexOf(result result: AnyObject) -> Int
  var valueLists: [String : [MetadataQueryAttributeValueTuple]] { get }
  var groupedResults: [MetadataQueryResultGroup] { get }
  func valueOf(attribute attrName: String, forResultAt idx: Int) -> AnyObject?
  init()
}
protocol MetadataQueryDelegate : ObjectProtocol {
  @available(watchOS 2.0, *)
  optional func metadataQuery(query: MetadataQuery, replacementObjectForResultObject result: MetadataItem) -> AnyObject
  @available(watchOS 2.0, *)
  optional func metadataQuery(query: MetadataQuery, replacementValueForAttribute attrName: String, value attrValue: AnyObject) -> AnyObject
}
@available(watchOS 2.0, *)
let metadataQueryDidStartGatheringNotification: String
@available(watchOS 2.0, *)
let metadataQueryGatheringProgressNotification: String
@available(watchOS 2.0, *)
let metadataQueryDidFinishGatheringNotification: String
@available(watchOS 2.0, *)
let metadataQueryDidUpdateNotification: String
@available(watchOS 2.0, *)
let metadataQueryUpdateAddedItemsKey: String
@available(watchOS 2.0, *)
let metadataQueryUpdateChangedItemsKey: String
@available(watchOS 2.0, *)
let metadataQueryUpdateRemovedItemsKey: String
@available(watchOS 2.0, *)
let metadataQueryResultContentRelevanceAttribute: String
@available(watchOS 2.0, *)
let metadataQueryUbiquitousDocumentsScope: String
@available(watchOS 2.0, *)
let metadataQueryUbiquitousDataScope: String
@available(watchOS 2.0, *)
let metadataQueryAccessibleUbiquitousExternalDocumentsScope: String
@available(watchOS 2.0, *)
class MetadataItem : Object {
  func valueFor(attribute key: String) -> AnyObject?
  func valuesFor(attributes keys: [String]) -> [String : AnyObject]?
  var attributes: [String] { get }
  convenience init()
}
@available(watchOS 2.0, *)
class MetadataQueryAttributeValueTuple : Object {
  var attribute: String { get }
  var value: AnyObject? { get }
  var count: Int { get }
  init()
}
@available(watchOS 2.0, *)
class MetadataQueryResultGroup : Object {
  var attribute: String { get }
  var value: AnyObject { get }
  var subgroups: [MetadataQueryResultGroup]? { get }
  var resultCount: Int { get }
  func resultAt(idx: Int) -> AnyObject
  var results: [AnyObject] { get }
  init()
}
