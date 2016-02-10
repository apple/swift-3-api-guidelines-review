
enum AVKeyValueStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case loading
  case loaded
  case failed
  case cancelled
}
protocol AVAsynchronousKeyValueLoading {
  func statusOfValueFor(key key: String, error outError: ErrorPointer) -> AVKeyValueStatus
  func loadValuesAsynchronouslyFor(keys keys: [String], completionHandler handler: (() -> Void)? = nil)
}
