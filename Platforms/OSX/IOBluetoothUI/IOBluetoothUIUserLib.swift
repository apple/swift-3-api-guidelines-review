
class IOBluetoothDeviceSelectorControllerRef {
}
class IOBluetoothPairingControllerRef {
}
class IOBluetoothServiceBrowserControllerRef {
}
typealias IOBluetoothServiceBrowserControllerOptions = UInt32
var kIOBluetoothServiceBrowserControllerOptionsNone: Int { get }
var kIOBluetoothServiceBrowserControllerOptionsAutoStartInquiry: Int { get }
var kIOBluetoothServiceBrowserControllerOptionsDisconnectWhenDone: Int { get }
var kIOBluetoothUISuccess: Int { get }
var kIOBluetoothUIUserCanceledErr: Int { get }
@available(OSX 10.7, *)
func IOBluetoothValidateHardwareWithDescription(_ cancelButtonTitle: CFString!, _ descriptionText: CFString!) -> IOReturn
func IOBluetoothGetPairingController() -> Unmanaged<IOBluetoothPairingControllerRef>!
func IOBluetoothGetDeviceSelectorController() -> Unmanaged<IOBluetoothDeviceSelectorControllerRef>!
