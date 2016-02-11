
@available(iOS 5.0, *)
class MetadataQuery : Object {
  unowned(unsafe) var delegate: @sil_unmanaged MetadataQueryDelegate?
  @NSCopying var predicate: Predicate?
  var sortDescriptors: [SortDescriptor]
  var valueListAttributes: [String]
  var groupingAttributes: [String]?
  var notificationBatchingInterval: TimeInterval
  var searchScopes: [AnyObject]
  @available(iOS 7.0, *)
  var searchItems: [AnyObject]?
  @available(iOS 7.0, *)
  var operationQueue: OperationQueue?
  func start() -> Bool
  func stop()
  var isStarted: Bool { get }
  var isGathering: Bool { get }
  var isStopped: Bool { get }
  func disableUpdates()
  func enableUpdates()
  var resultCount: Int { get }
  func result(at idx: Int) -> AnyObject
  @available(iOS 7.0, *)
  func enumerateResults(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 7.0, *)
  func enumerateResults(opts: EnumerationOptions = [], using block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  var results: [AnyObject] { get }
  func index(ofResult result: AnyObject) -> Int
  var valueLists: [String : [MetadataQueryAttributeValueTuple]] { get }
  var groupedResults: [MetadataQueryResultGroup] { get }
  func value(ofAttribute attrName: String, forResultAt idx: Int) -> AnyObject?
  init()
}
protocol MetadataQueryDelegate : ObjectProtocol {
  @available(iOS 5.0, *)
  optional func metadataQuery(query: MetadataQuery, replacementObjectForResultObject result: MetadataItem) -> AnyObject
  @available(iOS 5.0, *)
  optional func metadataQuery(query: MetadataQuery, replacementValueForAttribute attrName: String, value attrValue: AnyObject) -> AnyObject
}
@available(iOS 5.0, *)
let metadataQueryDidStartGatheringNotification: String
@available(iOS 5.0, *)
let metadataQueryGatheringProgressNotification: String
@available(iOS 5.0, *)
let metadataQueryDidFinishGatheringNotification: String
@available(iOS 5.0, *)
let metadataQueryDidUpdateNotification: String
@available(iOS 8.0, *)
let metadataQueryUpdateAddedItemsKey: String
@available(iOS 8.0, *)
let metadataQueryUpdateChangedItemsKey: String
@available(iOS 8.0, *)
let metadataQueryUpdateRemovedItemsKey: String
@available(iOS 5.0, *)
let metadataQueryResultContentRelevanceAttribute: String
@available(iOS 5.0, *)
let metadataQueryUbiquitousDocumentsScope: String
@available(iOS 5.0, *)
let metadataQueryUbiquitousDataScope: String
@available(iOS 8.0, *)
let metadataQueryAccessibleUbiquitousExternalDocumentsScope: String
@available(iOS 5.0, *)
class MetadataItem : Object {
  func value(forAttribute key: String) -> AnyObject?
  func values(forAttributes keys: [String]) -> [String : AnyObject]?
  var attributes: [String] { get }
  convenience init()
}
@available(iOS 5.0, *)
class MetadataQueryAttributeValueTuple : Object {
  var attribute: String { get }
  var value: AnyObject? { get }
  var count: Int { get }
  init()
}
@available(iOS 5.0, *)
class MetadataQueryResultGroup : Object {
  var attribute: String { get }
  var value: AnyObject { get }
  var subgroups: [MetadataQueryResultGroup]? { get }
  var resultCount: Int { get }
  func result(at idx: Int) -> AnyObject
  var results: [AnyObject] { get }
  init()
}
