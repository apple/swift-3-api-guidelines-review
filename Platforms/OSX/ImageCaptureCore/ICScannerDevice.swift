
let ICScannerStatusWarmingUp: String
let ICScannerStatusWarmUpDone: String
let ICScannerStatusRequestsOverviewScan: String
enum ICScannerTransferMode : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case FileBased
  case MemoryBased
}
protocol ICScannerDeviceDelegate : ICDeviceDelegate {
  optional func scannerDeviceDidBecomeAvailable(_ scanner: ICScannerDevice)
  optional func scannerDevice(_ scanner: ICScannerDevice, didSelectFunctionalUnit functionalUnit: ICScannerFunctionalUnit, error error: NSError?)
  optional func scannerDevice(_ scanner: ICScannerDevice, didScanToURL url: NSURL)
  optional func scannerDevice(_ scanner: ICScannerDevice, didScanToBandData data: ICScannerBandData)
  optional func scannerDevice(_ scanner: ICScannerDevice, didCompleteOverviewScanWithError error: NSError?)
  optional func scannerDevice(_ scanner: ICScannerDevice, didCompleteScanWithError error: NSError?)
}
class ICScannerDevice : ICDevice {
  var availableFunctionalUnitTypes: [NSNumber] { get }
  var selectedFunctionalUnit: ICScannerFunctionalUnit { get }
  var transferMode: ICScannerTransferMode
  var maxMemoryBandSize: UInt32
  var downloadsDirectory: NSURL
  var documentName: String
  var documentUTI: String
  func requestSelectFunctionalUnit(_ type: ICScannerFunctionalUnitType)
  func requestOverviewScan()
  func requestScan()
  func cancelScan()
}
