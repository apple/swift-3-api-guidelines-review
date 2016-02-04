
@available(OSX 10.5, *)
class NSOperation : NSObject {
  func start()
  func main()
  var cancelled: Bool { get }
  func cancel()
  var executing: Bool { get }
  var finished: Bool { get }
  var concurrent: Bool { get }
  @available(OSX 10.8, *)
  var asynchronous: Bool { get }
  var ready: Bool { get }
  func addDependency(op: NSOperation)
  func removeDependency(op: NSOperation)
  var dependencies: [NSOperation] { get }
  var queuePriority: NSOperationQueuePriority
  @available(OSX 10.6, *)
  var completionBlock: (() -> Void)?
  @available(OSX 10.6, *)
  func waitUntilFinished()
  @available(OSX, introduced=10.6, deprecated=10.10)
  var threadPriority: Double
  @available(OSX 10.10, *)
  var qualityOfService: NSQualityOfService
  @available(OSX 10.10, *)
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
@available(OSX 10.6, *)
class NSBlockOperation : NSOperation {
  convenience init(block: () -> Void)
  func addExecutionBlock(block: () -> Void)
  var executionBlocks: [() -> Void] { get }
  init()
}
@available(OSX 10.5, *)
let NSInvocationOperationVoidResultException: String
@available(OSX 10.5, *)
let NSInvocationOperationCancelledException: String
let NSOperationQueueDefaultMaxConcurrentOperationCount: Int
@available(OSX 10.5, *)
class NSOperationQueue : NSObject {
  func addOperation(op: NSOperation)
  @available(OSX 10.6, *)
  func addOperations(ops: [NSOperation], waitUntilFinished wait: Bool)
  @available(OSX 10.6, *)
  func addOperationWithBlock(block: () -> Void)
  var operations: [NSOperation] { get }
  @available(OSX 10.6, *)
  var operationCount: Int { get }
  var maxConcurrentOperationCount: Int
  var suspended: Bool
  @available(OSX 10.6, *)
  var name: String?
  @available(OSX 10.10, *)
  var qualityOfService: NSQualityOfService
  @available(OSX 10.10, *)
  unowned(unsafe) var underlyingQueue: @sil_unmanaged dispatch_queue_t?
  func cancelAllOperations()
  func waitUntilAllOperationsAreFinished()
  @available(OSX 10.6, *)
  class func currentQueue() -> NSOperationQueue?
  @available(OSX 10.6, *)
  class func mainQueue() -> NSOperationQueue
  init()
}
