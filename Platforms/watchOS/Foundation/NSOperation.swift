
@available(watchOS 2.0, *)
class Operation : Object {
  func start()
  func main()
  var isCancelled: Bool { get }
  func cancel()
  var isExecuting: Bool { get }
  var isFinished: Bool { get }
  var isConcurrent: Bool { get }
  @available(watchOS 2.0, *)
  var isAsynchronous: Bool { get }
  var isReady: Bool { get }
  func addDependency(op: Operation)
  func removeDependency(op: Operation)
  var dependencies: [Operation] { get }
  var queuePriority: OperationQueuePriority
  @available(watchOS 2.0, *)
  var completionBlock: (() -> Void)?
  @available(watchOS 2.0, *)
  func waitUntilFinished()
  @available(watchOS, introduced=2.0, deprecated=2.0)
  var threadPriority: Double
  @available(watchOS 2.0, *)
  var qualityOfService: QualityOfService
  @available(watchOS 2.0, *)
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
@available(watchOS 2.0, *)
class BlockOperation : Operation {
  convenience init(block: () -> Void)
  func addExecutionBlock(block: () -> Void)
  var executionBlocks: [() -> Void] { get }
  init()
}
@available(watchOS 2.0, *)
let invocationOperationVoidResultException: String
@available(watchOS 2.0, *)
let invocationOperationCancelledException: String
let operationQueueDefaultMaxConcurrentOperationCount: Int
@available(watchOS 2.0, *)
class OperationQueue : Object {
  func addOperation(op: Operation)
  @available(watchOS 2.0, *)
  func addOperations(ops: [Operation], waitUntilFinished wait: Bool)
  @available(watchOS 2.0, *)
  func addOperation(withBlock block: () -> Void)
  var operations: [Operation] { get }
  @available(watchOS 2.0, *)
  var operationCount: Int { get }
  var maxConcurrentOperationCount: Int
  var isSuspended: Bool
  @available(watchOS 2.0, *)
  var name: String?
  @available(watchOS 2.0, *)
  var qualityOfService: QualityOfService
  @available(watchOS 2.0, *)
  unowned(unsafe) var underlyingQueue: @sil_unmanaged dispatch_queue_t?
  func cancelAllOperations()
  func waitUntilAllOperationsAreFinished()
  @available(watchOS 2.0, *)
  class func current() -> OperationQueue?
  @available(watchOS 2.0, *)
  class func main() -> OperationQueue
  init()
}
