
@available(iOS 8.0, *)
class UIPrinter : Object {
  /*not inherited*/ init(url: URL)
  @NSCopying var url: URL { get }
  var displayName: String { get }
  var displayLocation: String? { get }
  var supportedJobTypes: UIPrinterJobTypes { get }
  var makeAndModel: String? { get }
  var supportsColor: Bool { get }
  var supportsDuplex: Bool { get }
  func contactPrinter(completionHandler: ((Bool) -> Void)? = nil)
  init()
}
@available(iOS 8.0, *)
struct UIPrinterJobTypes : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var Unknown: UIPrinterJobTypes { get }
  static var Document: UIPrinterJobTypes { get }
  static var Envelope: UIPrinterJobTypes { get }
  static var Label: UIPrinterJobTypes { get }
  static var Photo: UIPrinterJobTypes { get }
  static var Receipt: UIPrinterJobTypes { get }
  static var Roll: UIPrinterJobTypes { get }
  static var LargeFormat: UIPrinterJobTypes { get }
  static var Postcard: UIPrinterJobTypes { get }
}
