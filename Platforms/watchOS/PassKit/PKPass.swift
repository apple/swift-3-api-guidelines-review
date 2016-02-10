
@available(watchOS 2.0, *)
enum PKPassType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case barcode
  case payment
  case any
}
class PKPass : PKObject {
  init(data: Data, error: ErrorPointer)
  @available(watchOS 2.0, *)
  var passType: PKPassType { get }
  @available(watchOS 2.0, *)
  unowned(unsafe) var paymentPass: @sil_unmanaged PKPaymentPass? { get }
  var serialNumber: String { get }
  var passTypeIdentifier: String { get }
  @NSCopying var webServiceURL: URL? { get }
  var authenticationToken: String? { get }
  var localizedName: String { get }
  var localizedDescription: String { get }
  var organizationName: String { get }
  @NSCopying var relevantDate: Date? { get }
  @available(watchOS 2.0, *)
  var userInfo: [Object : AnyObject]? { get }
  @NSCopying var passURL: URL { get }
  @available(watchOS 2.0, *)
  var isRemotePass: Bool { get }
  @available(watchOS 2.0, *)
  var deviceName: String { get }
  func localizedValue(forFieldKey key: String) -> AnyObject?
  init()
}
