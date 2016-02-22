
class IOBluetoothDevicePair : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject!
  convenience init!(device: IOBluetoothDevice!)
  func start() -> IOReturn
  func stop()
  func device() -> IOBluetoothDevice!
  func setDevice(inDevice: IOBluetoothDevice!)
  func replyPINCode(PINCodeSize: Int, pinCode PINCode: UnsafeMutablePointer<BluetoothPINCode>)
  func replyUserConfirmation(reply: Bool)
  init()
}
protocol IOBluetoothDevicePairDelegate : NSObjectProtocol {
  optional func devicePairingStarted(sender: AnyObject!)
  optional func devicePairingConnecting(sender: AnyObject!)
  optional func devicePairingPINCodeRequest(sender: AnyObject!)
  optional func devicePairingUserConfirmationRequest(sender: AnyObject!, numericValue: BluetoothNumericValue)
  optional func devicePairingUserPasskeyNotification(sender: AnyObject!, passkey: BluetoothPasskey)
  optional func devicePairingFinished(sender: AnyObject!, error: IOReturn)
  optional func deviceSimplePairingComplete(sender: AnyObject!, status: BluetoothHCIEventStatus)
}
