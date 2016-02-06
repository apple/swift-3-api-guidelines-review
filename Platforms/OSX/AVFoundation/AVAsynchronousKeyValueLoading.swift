
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
  func statusOfValueFor(key key: String, error outError: ErrorPointer) -> AVKeyValueStatus
  func loadValuesAsynchronouslyFor(keys keys: [String], completionHandler handler: (() -> Void)? = nil)
}
