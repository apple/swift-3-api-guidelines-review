
struct QTVRSampleDescription {
  var descSize: UInt32
  var descType: UInt32
  var reserved1: UInt32
  var reserved2: UInt16
  var dataRefIndex: UInt16
  var data: UInt32
  init()
  init(descSize: UInt32, descType: UInt32, reserved1: UInt32, reserved2: UInt16, dataRefIndex: UInt16, data: UInt32)
}
typealias QTVRSampleDescriptionPtr = UnsafeMutablePointer<QTVRSampleDescription>
typealias QTVRSampleDescriptionHandle = UnsafeMutablePointer<QTVRSampleDescriptionPtr>
