
@available(OSX 10.11, *)
class PHAdjustmentData : Object {
  init(formatIdentifier: String, formatVersion: String, data: Data)
  var formatIdentifier: String { get }
  var formatVersion: String { get }
  var data: Data { get }
  init()
}
