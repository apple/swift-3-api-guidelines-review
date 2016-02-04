
@available(iOS 3.0, *)
class SKProduct : Object {
  @available(iOS 3.0, *)
  var localizedDescription: String { get }
  @available(iOS 3.0, *)
  var localizedTitle: String { get }
  @available(iOS 3.0, *)
  var price: DecimalNumber { get }
  @available(iOS 3.0, *)
  var priceLocale: Locale { get }
  @available(iOS 3.0, *)
  var productIdentifier: String { get }
  @available(iOS 6.0, *)
  var isDownloadable: Bool { get }
  @available(iOS 6.0, *)
  var downloadContentLengths: [Number] { get }
  @available(iOS 6.0, *)
  var downloadContentVersion: String { get }
  init()
}
