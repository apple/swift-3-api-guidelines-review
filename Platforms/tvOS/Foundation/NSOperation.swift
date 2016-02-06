
@available(tvOS 2.0, *)
class Operation : Object {
  func start()
  func main()
  var isCancelled: Bool { get }
  func cancel()
  var isExecuting: Bool { get }
  var isFinished: Bool { get }
  var isConcurrent: Bool { get }
  @available(tvOS 7.0, *)
  var isAsynchronous: Bool { get }
  var isReady: Bool { get }
  func addDependency(op: Operation)
  func removeDependency(op: Operation)
  var dependencies: [Operation] { get }
  var queuePriority: OperationQueuePriority
  @available(tvOS 4.0, *)
  var completionBlock: (() -> Void)?
  @available(tvOS 4.0, *)
  func waitUntilFinished()
  @available(tvOS, introduced=4.0, deprecated=8.0)
  var threadPriority: Double
  @available(tvOS 8.0, *)
  var qualityOfService: QualityOfService
  @available(tvOS 8.0, *)
  var name: String?
  init()
}
enum OperationQueuePriority : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case VeryLow
  case Low
  case Normal
  case High
  case VeryHigh
}
@available(tvOS 4.0, *)
class BlockOperation : Operation {
  convenience init(block: () -> Void)
  func addExecutionBlock(block: () -> Void)
  var executionBlocks: [() -> Void] { get }
  init()
}
@available(tvOS 2.0, *)
let invocationOperationVoidResultException: String
@available(tvOS 2.0, *)
let invocationOperationCancelledException: String
let operationQueueDefaultMaxConcurrentOperationCount: Int
@available(tvOS 2.0, *)
class OperationQueue : Object {
  func addOperation(op: Operation)
  @available(tvOS 4.0, *)
  func addOperations(ops: [Operation], waitUntilFinished wait: Bool)
  @available(tvOS 4.0, *)
  func addOperation(block: () -> Void)
  var operations: [Operation] { get }
  @available(tvOS 4.0, *)
  var operationCount: Int { get }
  var maxConcurrentOperationCount: Int
  var isSuspended: Bool
  @available(tvOS 4.0, *)
  var name: String?
  @available(tvOS 8.0, *)
  var qualityOfService: QualityOfService
  @available(tvOS 8.0, *)
  unowned(unsafe) var underlyingQueue: @sil_unmanaged dispatch_queue_t?
  func cancelAllOperations()
  func waitUntilAllOperationsAreFinished()
  @available(tvOS 4.0, *)
  class func current() -> OperationQueue?
  @available(tvOS 4.0, *)
  class func main() -> OperationQueue
  init()
}
