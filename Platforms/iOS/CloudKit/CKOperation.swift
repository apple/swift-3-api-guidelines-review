
@available(iOS 8.0, *)
class CKOperation : NSOperation {
  func activityStart() -> os_activity_t
  var container: CKContainer?
  @available(iOS, introduced=8.0, deprecated=9.0, message="Set qualityOfService to NSQualityOfServiceUtility or NSQualityOfServiceBackground")
  var usesBackgroundSession: Bool
  var allowsCellularAccess: Bool
}
