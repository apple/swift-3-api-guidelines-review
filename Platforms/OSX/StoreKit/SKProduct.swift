
@available(OSX 10.7, *)
class SKProduct : Object {
  var localizedDescription: String? { get }
  var localizedTitle: String? { get }
  var price: DecimalNumber? { get }
  var priceLocale: Locale? { get }
  var productIdentifier: String? { get }
  var downloadable: Bool { get }
  var contentVersion: String? { get }
  var contentLengths: [Number]? { get }
  init()
}
