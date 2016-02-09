
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
  func statusOfValue(forKey key: String, error outError: ErrorPointer) -> AVKeyValueStatus
  func loadValuesAsynchronously(forKeys keys: [String], completionHandler handler: (() -> Void)? = nil)
}
