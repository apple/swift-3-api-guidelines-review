
let ICScannerStatusWarmingUp: String
let ICScannerStatusWarmUpDone: String
let ICScannerStatusRequestsOverviewScan: String
enum ICScannerTransferMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case fileBased
  case memoryBased
}
protocol ICScannerDeviceDelegate : ICDeviceDelegate {
  optional func scannerDeviceDidBecomeAvailable(scanner: ICScannerDevice)
  optional func scannerDevice(scanner: ICScannerDevice, didSelect functionalUnit: ICScannerFunctionalUnit, error: Error?)
  optional func scannerDevice(scanner: ICScannerDevice, didScanTo url: URL)
  optional func scannerDevice(scanner: ICScannerDevice, didScanTo data: ICScannerBandData)
  optional func scannerDevice(scanner: ICScannerDevice, didCompleteOverviewScanWithError error: Error?)
  optional func scannerDevice(scanner: ICScannerDevice, didCompleteScanWithError error: Error?)
}
class ICScannerDevice : ICDevice {
  var availableFunctionalUnitTypes: [Number] { get }
  var selectedFunctionalUnit: ICScannerFunctionalUnit { get }
  var transferMode: ICScannerTransferMode
  var maxMemoryBandSize: UInt32
  var downloadsDirectory: URL
  var documentName: String
  var documentUTI: String
  func requestSelect(type: ICScannerFunctionalUnitType)
  func requestOverviewScan()
  func requestScan()
  func cancelScan()
  init()
}
