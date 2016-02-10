
@available(iOS 8.0, *)
class CKQueryCursor : Object, Copying, SecureCoding {
  @available(iOS 8.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(iOS 8.0, *)
let CKQueryOperationMaximumResults: Int
@available(iOS 8.0, *)
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
