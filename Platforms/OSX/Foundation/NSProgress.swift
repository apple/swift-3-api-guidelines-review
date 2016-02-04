
@available(OSX 10.9, *)
class NSProgress : NSObject {
  class func currentProgress() -> NSProgress?
  /*not inherited*/ init(totalUnitCount unitCount: Int64)
  @available(OSX 10.11, *)
  class func discreteProgressWithTotalUnitCount(unitCount: Int64) -> NSProgress
  @available(OSX 10.11, *)
  /*not inherited*/ init(totalUnitCount unitCount: Int64, parent: NSProgress, pendingUnitCount portionOfParentTotalUnitCount: Int64)
  init(parent parentProgressOrNil: NSProgress?, userInfo userInfoOrNil: [NSObject : AnyObject]?)
  func becomeCurrentWithPendingUnitCount(unitCount: Int64)
  func resignCurrent()
  @available(OSX 10.11, *)
  func addChild(child: NSProgress, withPendingUnitCount inUnitCount: Int64)
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
  @available(OSX 10.11, *)
  var resumingHandler: (() -> Void)?
  func setUserInfoObject(objectOrNil: AnyObject?, forKey key: String)
  var indeterminate: Bool { get }
  var fractionCompleted: Double { get }
  func cancel()
  func pause()
  @available(OSX 10.11, *)
  func resume()
  var userInfo: [NSObject : AnyObject] { get }
  var kind: String?
  @available(OSX 10.9, *)
  func publish()
  @available(OSX 10.9, *)
  func unpublish()
  @available(OSX 10.9, *)
  class func addSubscriberForFileURL(url: NSURL, withPublishingHandler publishingHandler: NSProgressPublishingHandler) -> AnyObject
  @available(OSX 10.9, *)
  class func removeSubscriber(subscriber: AnyObject)
  @available(OSX 10.9, *)
  var old: Bool { get }
  convenience init()
}
typealias NSProgressUnpublishingHandler = () -> Void
typealias NSProgressPublishingHandler = (NSProgress) -> NSProgressUnpublishingHandler?
protocol NSProgressReporting : NSObjectProtocol {
  @available(OSX 10.9, *)
  var progress: NSProgress { get }
}
@available(OSX 10.9, *)
let NSProgressEstimatedTimeRemainingKey: String
@available(OSX 10.9, *)
let NSProgressThroughputKey: String
@available(OSX 10.9, *)
let NSProgressKindFile: String
@available(OSX 10.9, *)
let NSProgressFileOperationKindKey: String
@available(OSX 10.9, *)
let NSProgressFileOperationKindDownloading: String
@available(OSX 10.9, *)
let NSProgressFileOperationKindDecompressingAfterDownloading: String
@available(OSX 10.9, *)
let NSProgressFileOperationKindReceiving: String
@available(OSX 10.9, *)
let NSProgressFileOperationKindCopying: String
@available(OSX 10.9, *)
let NSProgressFileURLKey: String
@available(OSX 10.9, *)
let NSProgressFileTotalCountKey: String
@available(OSX 10.9, *)
let NSProgressFileCompletedCountKey: String
@available(OSX 10.9, *)
let NSProgressFileAnimationImageKey: String
@available(OSX 10.9, *)
let NSProgressFileAnimationImageOriginalRectKey: String
@available(OSX 10.9, *)
let NSProgressFileIconKey: String
