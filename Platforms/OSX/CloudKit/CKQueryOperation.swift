
@available(OSX 10.10, *)
class CKQueryCursor : NSObject, NSCopying, NSSecureCoding {
  @available(OSX 10.10, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.10, *)
let CKQueryOperationMaximumResults: Int
@available(OSX 10.10, *)
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
