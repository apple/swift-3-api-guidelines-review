
struct ICDHeader {
  var err: ICAError
  var refcon: UInt
  init()
  init(err: ICAError, refcon: UInt)
}
typealias ICDCompletion = @convention(c) (UnsafeMutablePointer<ICDHeader>) -> Void
struct ICD_NewObjectPB {
  var header: ICDHeader
  var parentObject: ICAObject
  var objectInfo: ICAObjectInfo
  var object: ICAObject
  init()
  init(header: ICDHeader, parentObject: ICAObject, objectInfo: ICAObjectInfo, object: ICAObject)
}
struct ICD_DisposeObjectPB {
  var header: ICDHeader
  var object: ICAObject
  init()
  init(header: ICDHeader, object: ICAObject)
}
