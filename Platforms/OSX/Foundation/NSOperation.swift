
@available(OSX 10.5, *)
class Operation : Object {
  func start()
  func main()
  var isCancelled: Bool { get }
  func cancel()
  var isExecuting: Bool { get }
  var isFinished: Bool { get }
  var isConcurrent: Bool { get }
  @available(OSX 10.8, *)
  var isAsynchronous: Bool { get }
  var isReady: Bool { get }
  func addDependency(op: Operation)
  func removeDependency(op: Operation)
  var dependencies: [Operation] { get }
  var queuePriority: OperationQueuePriority
  @available(OSX 10.6, *)
  var completionBlock: (() -> Void)?
  @available(OSX 10.6, *)
  func waitUntilFinished()
  @available(OSX, introduced=10.6, deprecated=10.10)
  var threadPriority: Double
  @available(OSX 10.10, *)
  var qualityOfService: QualityOfService
  @available(OSX 10.10, *)
  var name: String?
  init()
}
enum OperationQueuePriority : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case veryLow
  case low
  case normal
  case high
  case veryHigh
}
@available(OSX 10.6, *)
class BlockOperation : Operation {
  convenience init(block: () -> Void)
  func addExecutionBlock(block: () -> Void)
  var executionBlocks: [() -> Void] { get }
  init()
}
@available(OSX 10.5, *)
let invocationOperationVoidResultException: String
@available(OSX 10.5, *)
let invocationOperationCancelledException: String
let operationQueueDefaultMaxConcurrentOperationCount: Int
@available(OSX 10.5, *)
class OperationQueue : Object {
  func addOperation(op: Operation)
  @available(OSX 10.6, *)
  func addOperations(ops: [Operation], waitUntilFinished wait: Bool)
  @available(OSX 10.6, *)
  func addOperation(withBlock block: () -> Void)
  var operations: [Operation] { get }
  @available(OSX 10.6, *)
  var operationCount: Int { get }
  var maxConcurrentOperationCount: Int
  var isSuspended: Bool
  @available(OSX 10.6, *)
  var name: String?
  @available(OSX 10.10, *)
  var qualityOfService: QualityOfService
  @available(OSX 10.10, *)
  unowned(unsafe) var underlyingQueue: @sil_unmanaged dispatch_queue_t?
  func cancelAllOperations()
  func waitUntilAllOperationsAreFinished()
  @available(OSX 10.6, *)
  class func current() -> OperationQueue?
  @available(OSX 10.6, *)
  class func main() -> OperationQueue
  init()
}
