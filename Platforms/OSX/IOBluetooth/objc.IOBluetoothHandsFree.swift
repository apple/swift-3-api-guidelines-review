
var IOBluetoothHandsFreeDeviceFeatureNone: Int { get }
var IOBluetoothHandsFreeDeviceFeatureECAndOrNRFunction: Int { get }
var IOBluetoothHandsFreeDeviceFeatureThreeWayCalling: Int { get }
var IOBluetoothHandsFreeDeviceFeatureCLIPresentation: Int { get }
var IOBluetoothHandsFreeDeviceFeatureVoiceRecognition: Int { get }
var IOBluetoothHandsFreeDeviceFeatureRemoteVolumeControl: Int { get }
var IOBluetoothHandsFreeDeviceFeatureEnhancedCallStatus: Int { get }
var IOBluetoothHandsFreeDeviceFeatureEnhancedCallControl: Int { get }
typealias IOBluetoothHandsFreeDeviceFeatures = Int
var IOBluetoothHandsFreeAudioGatewayFeatureNone: Int { get }
var IOBluetoothHandsFreeAudioGatewayFeatureThreeWayCalling: Int { get }
var IOBluetoothHandsFreeAudioGatewayFeatureECAndOrNRFunction: Int { get }
var IOBluetoothHandsFreeAudioGatewayFeatureVoiceRecognition: Int { get }
var IOBluetoothHandsFreeAudioGatewayFeatureInBandRingTone: Int { get }
var IOBluetoothHandsFreeAudioGatewayFeatureAttachedNumberToVoiceTag: Int { get }
var IOBluetoothHandsFreeAudioGatewayFeatureRejectCallCapability: Int { get }
var IOBluetoothHandsFreeAudioGatewayFeatureEnhancedCallStatus: Int { get }
var IOBluetoothHandsFreeAudioGatewayFeatureEnhancedCallControl: Int { get }
var IOBluetoothHandsFreeAudioGatewayFeatureExtendedErrorResultCodes: Int { get }
typealias IOBluetoothHandsFreeAudioGatewayFeatures = Int
var IOBluetoothHandsFreeCallHoldMode0: Int { get }
var IOBluetoothHandsFreeCallHoldMode1: Int { get }
var IOBluetoothHandsFreeCallHoldMode1idx: Int { get }
var IOBluetoothHandsFreeCallHoldMode2: Int { get }
var IOBluetoothHandsFreeCallHoldMode2idx: Int { get }
var IOBluetoothHandsFreeCallHoldMode3: Int { get }
var IOBluetoothHandsFreeCallHoldMode4: Int { get }
typealias IOBluetoothHandsFreeCallHoldModes = Int
let IOBluetoothHandsFreeIndicatorService: String
let IOBluetoothHandsFreeIndicatorCall: String
let IOBluetoothHandsFreeIndicatorCallSetup: String
let IOBluetoothHandsFreeIndicatorCallHeld: String
let IOBluetoothHandsFreeIndicatorSignal: String
let IOBluetoothHandsFreeIndicatorRoam: String
let IOBluetoothHandsFreeIndicatorBattChg: String
let IOBluetoothHandsFreeCallIndex: String
let IOBluetoothHandsFreeCallDirection: String
let IOBluetoothHandsFreeCallStatus: String
let IOBluetoothHandsFreeCallMode: String
let IOBluetoothHandsFreeCallMultiparty: String
let IOBluetoothHandsFreeCallNumber: String
let IOBluetoothHandsFreeCallType: String
let IOBluetoothHandsFreeCallName: String
var IOBluetoothSMSModePDU: Int { get }
var IOBluetoothSMSModeText: Int { get }
typealias IOBluetoothSMSMode = Int
var IOBluetoothHandsFreePhase2SMSSupport: Int { get }
var IOBluetoothHandsFreePhase2pSMSSupport: Int { get }
var IOBluetoothHandsFreeManufactureSpecificSMSSupport: Int { get }
typealias IOBluetoothHandsFreeSMSSupport = Int
var IOBluetoothHandsFreePDUStatusRecUnread: Int { get }
var IOBluetoothHandsFreePDUStatusRecRead: Int { get }
var IOBluetoothHandsFreePDUStatusStoUnsent: Int { get }
var IOBluetoothHandsFreePDUStatusStoSent: Int { get }
var IOBluetoothHandsFreePDUStatusAll: Int { get }
typealias IOBluetoothHandsFreePDUMessageStatus = Int
let IOBluetoothPDUServicCenterAddress: String
let IOBluetoothPDUServiceCenterAddressType: String
let IOBluetoothPDUType: String
let IOBluetoothPDUOriginatingAddress: String
let IOBluetoothPDUOriginatingAddressType: String
let IOBluetoothPDUProtocolID: String
let IOBluetoothPDUTimestamp: String
let IOBluetoothPDUEncoding: String
let IOBluetoothPDUUserData: String
@available(OSX 10.7, *)
class IOBluetoothHandsFree : NSObject {
  @available(OSX 10.7, *)
  var supportedFeatures: UInt32
  @available(OSX 10.7, *)
  var inputVolume: Float
  @available(OSX 10.7, *)
  var isInputMuted: Bool
  @available(OSX 10.7, *)
  var outputVolume: Float
  @available(OSX 10.7, *)
  var isOutputMuted: Bool
  @available(OSX 10.7, *)
  var device: IOBluetoothDevice! { get }
  @available(OSX 10.7, *)
  var deviceSupportedFeatures: UInt32 { get }
  @available(OSX 10.7, *)
  var deviceSupportedSMSServices: UInt32 { get }
  @available(OSX 10.7, *)
  var deviceCallHoldModes: UInt32 { get }
  @available(OSX 10.7, *)
  var smsMode: IOBluetoothSMSMode { get }
  @available(OSX 10.7, *)
  var isSMSEnabled: Bool { get }
  @available(OSX 10.7, *)
  unowned(unsafe) var delegate: @sil_unmanaged IOBluetoothHandsFreeDelegate!
  @available(OSX 10.7, *)
  func indicator(_ indicatorName: String!) -> Int32
  @available(OSX 10.7, *)
  func setIndicator(_ indicatorName: String!, value indicatorValue: Int32)
  @available(OSX 10.7, *)
  init!(device device: IOBluetoothDevice!, delegate inDelegate: IOBluetoothHandsFreeDelegate!)
  @available(OSX 10.7, *)
  func connect()
  @available(OSX 10.7, *)
  func disconnect()
  @available(OSX 10.7, *)
  func isConnected() -> Bool
  @available(OSX 10.7, *)
  func connectSCO()
  @available(OSX 10.7, *)
  func disconnectSCO()
  @available(OSX 10.7, *)
  func isSCOConnected() -> Bool
}
protocol IOBluetoothHandsFreeDelegate : NSObjectProtocol {
  @available(OSX 10.7, *)
  optional func handsFree(_ device: IOBluetoothHandsFree!, connected status: NSNumber!)
  @available(OSX 10.7, *)
  optional func handsFree(_ device: IOBluetoothHandsFree!, disconnected status: NSNumber!)
  @available(OSX 10.7, *)
  optional func handsFree(_ device: IOBluetoothHandsFree!, scoConnectionOpened status: NSNumber!)
  @available(OSX 10.7, *)
  optional func handsFree(_ device: IOBluetoothHandsFree!, scoConnectionClosed status: NSNumber!)
}
extension IOBluetoothDevice {
  @available(OSX 10.7, *)
  func handsFreeAudioGatewayServiceRecord() -> IOBluetoothSDPServiceRecord!
  @available(OSX 10.7, *)
  var isHandsFreeAudioGateway: Bool { get }
  @available(OSX 10.7, *)
  func handsFreeDeviceServiceRecord() -> IOBluetoothSDPServiceRecord!
  @available(OSX 10.7, *)
  var isHandsFreeDevice: Bool { get }
}
extension IOBluetoothSDPServiceRecord {
  @available(OSX 10.7, *)
  func handsFreeSupportedFeatures() -> UInt16
}
