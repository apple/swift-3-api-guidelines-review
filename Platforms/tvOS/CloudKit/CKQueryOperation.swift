
@available(tvOS 8.0, *)
class CKQueryCursor : NSObject, NSCopying, NSSecureCoding {
  @available(tvOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 8.0, *)
let CKQueryOperationMaximumResults: Int
@available(tvOS 8.0, *)
class CKQueryOperation : CKDatabaseOperation {
  convenience init(query query: CKQuery)
  convenience init(cursor cursor: CKQueryCursor)
  @NSCopying var query: CKQuery?
  @NSCopying var cursor: CKQueryCursor?
  @NSCopying var zoneID: CKRecordZoneID?
  var resultsLimit: Int
  var desiredKeys: [String]?
  var recordFetchedBlock: ((CKRecord) -> Void)?
  var queryCompletionBlock: ((CKQueryCursor?, NSError?) -> Void)?
}
