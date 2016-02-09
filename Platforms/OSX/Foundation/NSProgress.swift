
@available(OSX 10.9, *)
class Progress : Object {
  class func current() -> Progress?
  /*not inherited*/ init(totalUnitCount unitCount: Int64)
  @available(OSX 10.11, *)
  class func discreteProgressWithTotalUnitCount(unitCount: Int64) -> Progress
  @available(OSX 10.11, *)
  /*not inherited*/ init(totalUnitCount unitCount: Int64, parent: Progress, pendingUnitCount portionOfParentTotalUnitCount: Int64)
  init(parent parentProgressOrNil: Progress?, userInfo userInfoOrNil: [Object : AnyObject]? = [:])
  func becomeCurrentWithPendingUnitCount(unitCount: Int64)
  func resignCurrent()
  @available(OSX 10.11, *)
  func addChild(child: Progress, withPendingUnitCount inUnitCount: Int64)
  var totalUnitCount: Int64
  var completedUnitCount: Int64
  var localizedDescription: String!
  var localizedAdditionalDescription: String!
  var isCancellable: Bool
  var isPausable: Bool
  var isCancelled: Bool { get }
  var isPaused: Bool { get }
  var cancellationHandler: (() -> Void)?
  var pausingHandler: (() -> Void)?
  @available(OSX 10.11, *)
  var resumingHandler: (() -> Void)?
  func setUserInfoObject(objectOrNil: AnyObject?, forKey key: String)
  var isIndeterminate: Bool { get }
  var fractionCompleted: Double { get }
  func cancel()
  func pause()
  @available(OSX 10.11, *)
  func resume()
  var userInfo: [Object : AnyObject] { get }
  var kind: String?
  @available(OSX 10.9, *)
  func publish()
  @available(OSX 10.9, *)
  func unpublish()
  @available(OSX 10.9, *)
  class func addSubscriber(forFileURL url: URL, withPublishingHandler publishingHandler: ProgressPublishingHandler) -> AnyObject
  @available(OSX 10.9, *)
  class func removeSubscriber(subscriber: AnyObject)
  @available(OSX 10.9, *)
  var isOld: Bool { get }
  convenience init()
}
typealias ProgressUnpublishingHandler = () -> Void
typealias ProgressPublishingHandler = (Progress) -> ProgressUnpublishingHandler?
protocol ProgressReporting : ObjectProtocol {
  @available(OSX 10.9, *)
  var progress: Progress { get }
}
@available(OSX 10.9, *)
let progressEstimatedTimeRemainingKey: String
@available(OSX 10.9, *)
let progressThroughputKey: String
@available(OSX 10.9, *)
let progressKindFile: String
@available(OSX 10.9, *)
let progressFileOperationKindKey: String
@available(OSX 10.9, *)
let progressFileOperationKindDownloading: String
@available(OSX 10.9, *)
let progressFileOperationKindDecompressingAfterDownloading: String
@available(OSX 10.9, *)
let progressFileOperationKindReceiving: String
@available(OSX 10.9, *)
let progressFileOperationKindCopying: String
@available(OSX 10.9, *)
let progressFileURLKey: String
@available(OSX 10.9, *)
let progressFileTotalCountKey: String
@available(OSX 10.9, *)
let progressFileCompletedCountKey: String
@available(OSX 10.9, *)
let progressFileAnimationImageKey: String
@available(OSX 10.9, *)
let progressFileAnimationImageOriginalRectKey: String
@available(OSX 10.9, *)
let progressFileIconKey: String
