
func IOBluetoothNSStringToDeviceAddress(_ inNameString: String!, _ outDeviceAddress: UnsafeMutablePointer<BluetoothDeviceAddress>) -> IOReturn
func IOBluetoothNSStringFromDeviceAddress(_ deviceAddress: UnsafePointer<BluetoothDeviceAddress>) -> String!
func IOBluetoothNSStringFromDeviceAddressColon(_ deviceAddress: UnsafePointer<BluetoothDeviceAddress>) -> String!
func IOBluetoothIsFileAppleDesignatedPIMData(_ inFileName: String!) -> Bool
func IOBluetoothGetUniqueFileNameAndPath(_ inName: String!, _ inPath: String!) -> String!
func IOBluetoothPackDataList(_ ioBuffer: UnsafeMutablePointer<Void>, _ inFormat: UnsafePointer<Int8>, _ inArgs: CVaListPointer) -> Int
func IOBluetoothUnpackDataList(_ inBufferSize: Int, _ inBuffer: UnsafePointer<Void>, _ inFormat: UnsafePointer<Int8>, _ inArgs: CVaListPointer) -> Int
func IOBluetoothNumberOfAvailableHIDDevices() -> Int
func IOBluetoothNumberOfPointingHIDDevices() -> Int
func IOBluetoothNumberOfKeyboardHIDDevices() -> Int
func IOBluetoothNumberOfTabletHIDDevices() -> Int
func IOBluetoothFindNumberOfRegistryEntriesOfClassName(_ deviceType: UnsafePointer<Int8>) -> Int
