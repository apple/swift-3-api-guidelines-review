
@available(iOS 2.0, *)
class Operation : Object {
  func start()
  func main()
  var isCancelled: Bool { get }
  func cancel()
  var isExecuting: Bool { get }
  var isFinished: Bool { get }
  var isConcurrent: Bool { get }
  @available(iOS 7.0, *)
  var isAsynchronous: Bool { get }
  var isReady: Bool { get }
  func addDependency(op: Operation)
  func removeDependency(op: Operation)
  var dependencies: [Operation] { get }
  var queuePriority: OperationQueuePriority
  @available(iOS 4.0, *)
  var completionBlock: (() -> Void)?
  @available(iOS 4.0, *)
  func waitUntilFinished()
  @available(iOS, introduced=4.0, deprecated=8.0)
  var threadPriority: Double
  @available(iOS 8.0, *)
  var qualityOfService: QualityOfService
  @available(iOS 8.0, *)
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
@available(iOS 4.0, *)
class BlockOperation : Operation {
  convenience init(block: () -> Void)
  func addExecutionBlock(block: () -> Void)
  var executionBlocks: [() -> Void] { get }
  init()
}
@available(iOS 2.0, *)
let invocationOperationVoidResultException: String
@available(iOS 2.0, *)
let invocationOperationCancelledException: String
let operationQueueDefaultMaxConcurrentOperationCount: Int
@available(iOS 2.0, *)
class OperationQueue : Object {
  func addOperation(op: Operation)
  @available(iOS 4.0, *)
  func addOperations(ops: [Operation], waitUntilFinished wait: Bool)
  @available(iOS 4.0, *)
  func addOperation(withBlock block: () -> Void)
  var operations: [Operation] { get }
  @available(iOS 4.0, *)
  var operationCount: Int { get }
  var maxConcurrentOperationCount: Int
  var isSuspended: Bool
  @available(iOS 4.0, *)
  var name: String?
  @available(iOS 8.0, *)
  var qualityOfService: QualityOfService
  @available(iOS 8.0, *)
  unowned(unsafe) var underlyingQueue: @sil_unmanaged dispatch_queue_t?
  func cancelAllOperations()
  func waitUntilAllOperationsAreFinished()
  @available(iOS 4.0, *)
  class func current() -> OperationQueue?
  @available(iOS 4.0, *)
  class func main() -> OperationQueue
  init()
}
