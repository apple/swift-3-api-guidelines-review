
@available(tvOS 8.0, *)
class CKQueryCursor : Object, Copying, SecureCoding {
  @available(tvOS 8.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(tvOS 8.0, *)
let CKQueryOperationMaximumResults: Int
@available(tvOS 8.0, *)
class CKQueryOperation : CKDatabaseOperation {
  init()
  convenience init(query: CKQuery)
  convenience init(cursor: CKQueryCursor)
  @NSCopying var query: CKQuery?
  @NSCopying var cursor: CKQueryCursor?
  @NSCopying var zoneID: CKRecordZoneID?
  var resultsLimit: Int
  var desiredKeys: [String]?
  var recordFetchedBlock: ((CKRecord) -> Void)?
  var queryCompletionBlock: ((CKQueryCursor?, Error?) -> Void)?
}
