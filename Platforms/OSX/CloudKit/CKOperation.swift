
@available(OSX 10.10, *)
class CKOperation : NSOperation {
  func activityStart() -> os_activity_t
  var container: CKContainer?
  @available(OSX, introduced=10.10, deprecated=10.11, message="Set qualityOfService to NSQualityOfServiceUtility or NSQualityOfServiceBackground")
  var usesBackgroundSession: Bool
  var allowsCellularAccess: Bool
}
