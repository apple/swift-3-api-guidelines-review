
protocol UIActivityItemSource : NSObjectProtocol {
  func activityViewControllerPlaceholderItem(activityViewController: UIActivityViewController) -> AnyObject
  func activityViewController(activityViewController: UIActivityViewController, itemForActivityType activityType: String) -> AnyObject?
  optional func activityViewController(activityViewController: UIActivityViewController, subjectForActivityType activityType: String?) -> String
  optional func activityViewController(activityViewController: UIActivityViewController, dataTypeIdentifierForActivityType activityType: String?) -> String
  @available(tvOS 2.0, *)
  optional func activityViewController(activityViewController: UIActivityViewController, thumbnailImageForActivityType activityType: String?, suggestedSize size: CGSize) -> UIImage?
}
