
@available(OSX 10.11, *)
class PHAdjustmentData : NSObject {
  init(formatIdentifier: String, formatVersion: String, data: NSData)
  var formatIdentifier: String { get }
  var formatVersion: String { get }
  var data: NSData { get }
  init()
}
