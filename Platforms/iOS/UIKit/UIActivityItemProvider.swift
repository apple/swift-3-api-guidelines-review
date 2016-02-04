
protocol UIActivityItemSource : ObjectProtocol {
  @available(iOS 6.0, *)
  func activityViewControllerPlaceholderItem(activityViewController: UIActivityViewController) -> AnyObject
  @available(iOS 6.0, *)
  func activityViewController(activityViewController: UIActivityViewController, itemForActivityType activityType: String) -> AnyObject?
  @available(iOS 6.0, *)
  optional func activityViewController(activityViewController: UIActivityViewController, subjectForActivityType activityType: String?) -> String
  @available(iOS 6.0, *)
  optional func activityViewController(activityViewController: UIActivityViewController, dataTypeIdentifierForActivityType activityType: String?) -> String
  @available(iOS 6.0, *)
  optional func activityViewController(activityViewController: UIActivityViewController, thumbnailImageForActivityType activityType: String?, suggestedSize size: CGSize) -> UIImage?
}
@available(iOS 6.0, *)
class UIActivityItemProvider : Operation, UIActivityItemSource {
  init(placeholderItem: AnyObject)
  var placeholderItem: AnyObject? { get }
  var activityType: String? { get }
  func item() -> AnyObject
  @available(iOS 6.0, *)
  func activityViewControllerPlaceholderItem(activityViewController: UIActivityViewController) -> AnyObject
  @available(iOS 6.0, *)
  func activityViewController(activityViewController: UIActivityViewController, itemForActivityType activityType: String) -> AnyObject?
  @available(iOS 6.0, *)
  func activityViewController(activityViewController: UIActivityViewController, subjectForActivityType activityType: String?) -> String
  @available(iOS 6.0, *)
  func activityViewController(activityViewController: UIActivityViewController, dataTypeIdentifierForActivityType activityType: String?) -> String
  @available(iOS 6.0, *)
  func activityViewController(activityViewController: UIActivityViewController, thumbnailImageForActivityType activityType: String?, suggestedSize size: CGSize) -> UIImage?
}
