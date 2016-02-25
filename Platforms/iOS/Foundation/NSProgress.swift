
@available(iOS 7.0, *)
class NSProgress : NSObject {
  class func currentProgress() -> NSProgress?
  /*not inherited*/ init(totalUnitCount unitCount: Int64)
  @available(iOS 9.0, *)
  class func discreteProgressWithTotalUnitCount(_ unitCount: Int64) -> NSProgress
  @available(iOS 9.0, *)
  /*not inherited*/ init(totalUnitCount unitCount: Int64, parent parent: NSProgress, pendingUnitCount portionOfParentTotalUnitCount: Int64)
  init(parent parentProgressOrNil: NSProgress?, userInfo userInfoOrNil: [NSObject : AnyObject]?)
  func becomeCurrentWithPendingUnitCount(_ unitCount: Int64)
  func resignCurrent()
  @available(iOS 9.0, *)
  func addChild(_ child: NSProgress, withPendingUnitCount inUnitCount: Int64)
  var totalUnitCount: Int64
  var completedUnitCount: Int64
  var localizedDescription: String!
  var localizedAdditionalDescription: String!
  var cancellable: Bool
  var pausable: Bool
  var cancelled: Bool { get }
  var paused: Bool { get }
  var cancellationHandler: (() -> Void)?
  var pausingHandler: (() -> Void)?
  @available(iOS 9.0, *)
  var resumingHandler: (() -> Void)?
  func setUserInfoObject(_ objectOrNil: AnyObject?, forKey key: String)
  var indeterminate: Bool { get }
  var fractionCompleted: Double { get }
  func cancel()
  func pause()
  @available(iOS 9.0, *)
  func resume()
  var userInfo: [NSObject : AnyObject] { get }
  var kind: String?
}
typealias NSProgressUnpublishingHandler = () -> Void
typealias NSProgressPublishingHandler = (NSProgress) -> NSProgressUnpublishingHandler?
protocol NSProgressReporting : NSObjectProtocol {
  @available(iOS 7.0, *)
  var progress: NSProgress { get }
}
@available(iOS 7.0, *)
let NSProgressEstimatedTimeRemainingKey: String
@available(iOS 7.0, *)
let NSProgressThroughputKey: String
@available(iOS 7.0, *)
let NSProgressKindFile: String
@available(iOS 7.0, *)
let NSProgressFileOperationKindKey: String
@available(iOS 7.0, *)
let NSProgressFileOperationKindDownloading: String
@available(iOS 7.0, *)
let NSProgressFileOperationKindDecompressingAfterDownloading: String
@available(iOS 7.0, *)
let NSProgressFileOperationKindReceiving: String
@available(iOS 7.0, *)
let NSProgressFileOperationKindCopying: String
@available(iOS 7.0, *)
let NSProgressFileURLKey: String
@available(iOS 7.0, *)
let NSProgressFileTotalCountKey: String
@available(iOS 7.0, *)
let NSProgressFileCompletedCountKey: String
