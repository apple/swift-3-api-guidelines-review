
@available(iOS 7.0, *)
class Progress : Object {
  class func current() -> Progress?
  /*not inherited*/ init(totalUnitCount unitCount: Int64)
  @available(iOS 9.0, *)
  class func discreteProgressWithTotalUnitCount(unitCount: Int64) -> Progress
  @available(iOS 9.0, *)
  /*not inherited*/ init(totalUnitCount unitCount: Int64, parent: Progress, pendingUnitCount portionOfParentTotalUnitCount: Int64)
  init(parent parentProgressOrNil: Progress?, userInfo userInfoOrNil: [Object : AnyObject]? = [:])
  func becomeCurrentWithPendingUnitCount(unitCount: Int64)
  func resignCurrent()
  @available(iOS 9.0, *)
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
  @available(iOS 9.0, *)
  var resumingHandler: (() -> Void)?
  func setUserInfoObject(objectOrNil: AnyObject?, forKey key: String)
  var isIndeterminate: Bool { get }
  var fractionCompleted: Double { get }
  func cancel()
  func pause()
  @available(iOS 9.0, *)
  func resume()
  var userInfo: [Object : AnyObject] { get }
  var kind: String?
  convenience init()
}
typealias ProgressUnpublishingHandler = () -> Void
typealias ProgressPublishingHandler = (Progress) -> ProgressUnpublishingHandler?
protocol ProgressReporting : ObjectProtocol {
  @available(iOS 7.0, *)
  var progress: Progress { get }
}
@available(iOS 7.0, *)
let progressEstimatedTimeRemainingKey: String
@available(iOS 7.0, *)
let progressThroughputKey: String
@available(iOS 7.0, *)
let progressKindFile: String
@available(iOS 7.0, *)
let progressFileOperationKindKey: String
@available(iOS 7.0, *)
let progressFileOperationKindDownloading: String
@available(iOS 7.0, *)
let progressFileOperationKindDecompressingAfterDownloading: String
@available(iOS 7.0, *)
let progressFileOperationKindReceiving: String
@available(iOS 7.0, *)
let progressFileOperationKindCopying: String
@available(iOS 7.0, *)
let progressFileURLKey: String
@available(iOS 7.0, *)
let progressFileTotalCountKey: String
@available(iOS 7.0, *)
let progressFileCompletedCountKey: String
