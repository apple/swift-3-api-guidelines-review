
@available(iOS 8.0, *)
enum PKPassType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Barcode
  case Payment
  case Any
}
class PKPass : PKObject {
  init(data: Data, error: ErrorPointer)
  @available(iOS 8.0, *)
  var passType: PKPassType { get }
  @available(iOS 8.0, *)
  unowned(unsafe) var paymentPass: @sil_unmanaged PKPaymentPass? { get }
  var serialNumber: String { get }
  var passTypeIdentifier: String { get }
  @NSCopying var webServiceURL: URL? { get }
  var authenticationToken: String? { get }
  @NSCopying var icon: UIImage { get }
  var localizedName: String { get }
  var localizedDescription: String { get }
  var organizationName: String { get }
  @NSCopying var relevantDate: Date? { get }
  @available(iOS 7.0, *)
  var userInfo: [Object : AnyObject]? { get }
  @NSCopying var passURL: URL { get }
  @available(iOS 9.0, *)
  var isRemotePass: Bool { get }
  @available(iOS 9.0, *)
  var deviceName: String { get }
  func localizedValueFor(fieldKey key: String) -> AnyObject?
  init()
}
