
func IOBluetoothNSStringToDeviceAddress(inNameString: String!, _ outDeviceAddress: UnsafeMutablePointer<BluetoothDeviceAddress>) -> IOReturn
func IOBluetoothNSStringFromDeviceAddress(deviceAddress: UnsafePointer<BluetoothDeviceAddress>) -> String!
func IOBluetoothNSStringFromDeviceAddressColon(deviceAddress: UnsafePointer<BluetoothDeviceAddress>) -> String!
func IOBluetoothIsFileAppleDesignatedPIMData(inFileName: String!) -> Bool
func IOBluetoothGetUniqueFileNameAndPath(inName: String!, _ inPath: String!) -> String!
func IOBluetoothPackDataList(ioBuffer: UnsafeMutablePointer<Void>, _ inFormat: UnsafePointer<Int8>, _ inArgs: CVaListPointer) -> Int
func IOBluetoothUnpackDataList(inBufferSize: Int, _ inBuffer: UnsafePointer<Void>, _ inFormat: UnsafePointer<Int8>, _ inArgs: CVaListPointer) -> Int
func IOBluetoothNumberOfAvailableHIDDevices() -> Int
func IOBluetoothNumberOfPointingHIDDevices() -> Int
func IOBluetoothNumberOfKeyboardHIDDevices() -> Int
func IOBluetoothNumberOfTabletHIDDevices() -> Int
func IOBluetoothFindNumberOfRegistryEntriesOfClassName(deviceType: UnsafePointer<Int8>) -> Int
