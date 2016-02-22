
protocol UIActivityItemSource : NSObjectProtocol {
  func activityViewControllerPlaceholderItem(_ activityViewController: UIActivityViewController) -> AnyObject
  func activityViewController(_ activityViewController: UIActivityViewController, itemForActivityType activityType: String) -> AnyObject?
  optional func activityViewController(_ activityViewController: UIActivityViewController, subjectForActivityType activityType: String?) -> String
  optional func activityViewController(_ activityViewController: UIActivityViewController, dataTypeIdentifierForActivityType activityType: String?) -> String
  @available(tvOS 2.0, *)
  optional func activityViewController(_ activityViewController: UIActivityViewController, thumbnailImageForActivityType activityType: String?, suggestedSize size: CGSize) -> UIImage?
}
