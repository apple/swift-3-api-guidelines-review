
@available(tvOS 8.0, *)
class CKOperation : Operation {
  init()
  func activityStart() -> os_activity_t
  var container: CKContainer?
  @available(tvOS, introduced=8.0, deprecated=9.0, message="Set qualityOfService to NSQualityOfServiceUtility or NSQualityOfServiceBackground")
  var usesBackgroundSession: Bool
  var allowsCellularAccess: Bool
}
