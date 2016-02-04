
@available(iOS 3.0, *)
class EASession : Object {
  @available(iOS 3.0, *)
  init(accessory: EAAccessory, forProtocol protocolString: String)
  @available(iOS 3.0, *)
  var accessory: EAAccessory { get }
  @available(iOS 3.0, *)
  var protocolString: String { get }
  @available(iOS 3.0, *)
  var inputStream: InputStream? { get }
  @available(iOS 3.0, *)
  var outputStream: OutputStream? { get }
  init()
}
