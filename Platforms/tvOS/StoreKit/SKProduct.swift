
@available(tvOS 3.0, *)
class SKProduct : Object {
  @available(tvOS 3.0, *)
  var localizedDescription: String { get }
  @available(tvOS 3.0, *)
  var localizedTitle: String { get }
  @available(tvOS 3.0, *)
  var price: DecimalNumber { get }
  @available(tvOS 3.0, *)
  var priceLocale: Locale { get }
  @available(tvOS 3.0, *)
  var productIdentifier: String { get }
  @available(tvOS 6.0, *)
  var isDownloadable: Bool { get }
  @available(tvOS 6.0, *)
  var downloadContentLengths: [Number] { get }
  @available(tvOS 6.0, *)
  var downloadContentVersion: String { get }
  init()
}
