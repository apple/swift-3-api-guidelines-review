
protocol QLPreviewItem : ObjectProtocol {
  var previewItemURL: URL { get }
  optional var previewItemTitle: String? { get }
}
extension URL : QLPreviewItem {
  var previewItemURL: URL { get }
  var previewItemTitle: String? { get }
}
