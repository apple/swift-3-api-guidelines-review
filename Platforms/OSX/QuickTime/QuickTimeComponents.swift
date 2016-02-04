
struct TimeCodeDef {
  var flags: Int32
  var fTimeScale: TimeScale
  var frameDuration: TimeValue
  var numFrames: UInt8
  var padding: UInt8
  init()
  init(flags: Int32, fTimeScale: TimeScale, frameDuration: TimeValue, numFrames: UInt8, padding: UInt8)
}
struct TimeCodeDescription {
  var descSize: Int32
  var dataFormat: Int32
  var resvd1: Int32
  var resvd2: Int16
  var dataRefIndex: Int16
  var flags: Int32
  var timeCodeDef: TimeCodeDef
  var srcRef: (Int32)
  init()
  init(descSize: Int32, dataFormat: Int32, resvd1: Int32, resvd2: Int16, dataRefIndex: Int16, flags: Int32, timeCodeDef: TimeCodeDef, srcRef: (Int32))
}
typealias TimeCodeDescriptionPtr = UnsafeMutablePointer<TimeCodeDescription>
typealias TimeCodeDescriptionHandle = UnsafeMutablePointer<TimeCodeDescriptionPtr>
