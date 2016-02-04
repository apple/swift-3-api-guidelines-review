
enum AVKeyValueStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Loading
  case Loaded
  case Failed
  case Cancelled
}
protocol AVAsynchronousKeyValueLoading {
  func statusOfValueForKey(key: String, error outError: NSErrorPointer) -> AVKeyValueStatus
  func loadValuesAsynchronouslyForKeys(keys: [String], completionHandler handler: (() -> Void)?)
}
