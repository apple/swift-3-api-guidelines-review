
@available(watchOS 2.0, *)
class NSOperation : NSObject {
  func start()
  func main()
  var cancelled: Bool { get }
  func cancel()
  var executing: Bool { get }
  var finished: Bool { get }
  var concurrent: Bool { get }
  @available(watchOS 2.0, *)
  var asynchronous: Bool { get }
  var ready: Bool { get }
  func addDependency(op: NSOperation)
  func removeDependency(op: NSOperation)
  var dependencies: [NSOperation] { get }
  var queuePriority: NSOperationQueuePriority
  @available(watchOS 2.0, *)
  var completionBlock: (() -> Void)?
  @available(watchOS 2.0, *)
  func waitUntilFinished()
  @available(watchOS, introduced=2.0, deprecated=2.0)
  var threadPriority: Double
  @available(watchOS 2.0, *)
  var qualityOfService: NSQualityOfService
  @available(watchOS 2.0, *)
  var name: String?
  init()
}
enum NSOperationQueuePriority : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case VeryLow
  case Low
  case Normal
  case High
  case VeryHigh
}
@available(watchOS 2.0, *)
class NSBlockOperation : NSOperation {
  convenience init(block: () -> Void)
  func addExecutionBlock(block: () -> Void)
  var executionBlocks: [() -> Void] { get }
  init()
}
@available(watchOS 2.0, *)
let NSInvocationOperationVoidResultException: String
@available(watchOS 2.0, *)
let NSInvocationOperationCancelledException: String
let NSOperationQueueDefaultMaxConcurrentOperationCount: Int
@available(watchOS 2.0, *)
class NSOperationQueue : NSObject {
  func addOperation(op: NSOperation)
  @available(watchOS 2.0, *)
  func addOperations(ops: [NSOperation], waitUntilFinished wait: Bool)
  @available(watchOS 2.0, *)
  func addOperationWithBlock(block: () -> Void)
  var operations: [NSOperation] { get }
  @available(watchOS 2.0, *)
  var operationCount: Int { get }
  var maxConcurrentOperationCount: Int
  var suspended: Bool
  @available(watchOS 2.0, *)
  var name: String?
  @available(watchOS 2.0, *)
  var qualityOfService: NSQualityOfService
  @available(watchOS 2.0, *)
  unowned(unsafe) var underlyingQueue: @sil_unmanaged dispatch_queue_t?
  func cancelAllOperations()
  func waitUntilAllOperationsAreFinished()
  @available(watchOS 2.0, *)
  class func currentQueue() -> NSOperationQueue?
  @available(watchOS 2.0, *)
  class func mainQueue() -> NSOperationQueue
  init()
}
