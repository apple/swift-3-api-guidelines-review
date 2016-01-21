
typealias BluetoothConnectionHandle = UInt16
typealias BluetoothLMPHandle = UInt8
var kBluetoothConnectionHandleNone: Int { get }
typealias BluetoothReasonCode = UInt8
typealias BluetoothEncryptionEnable = UInt8
var kBluetoothEncryptionEnableOff: Int { get }
var kBluetoothEncryptionEnableOn: Int { get }
var kBluetoothEncryptionEnableBREDRE0: Int { get }
var kBluetoothEncryptionEnableLEAESCCM: Int { get }
var kBluetoothEncryptionEnableBREDRAESCCM: Int { get }
typealias BluetoothKeyFlag = UInt8
var kBluetoothKeyFlagSemiPermanent: Int { get }
var kBluetoothKeyFlagTemporary: Int { get }
typealias BluetoothKeyType = UInt8
var kBluetoothKeyTypeCombination: Int { get }
var kBluetoothKeyTypeLocalUnit: Int { get }
var kBluetoothKeyTypeRemoteUnit: Int { get }
var kBluetoothKeyTypeDebugCombination: Int { get }
var kBluetoothKeyTypeUnauthenticatedCombination: Int { get }
var kBluetoothKeyTypeAuthenticatedCombination: Int { get }
var kBluetoothKeyTypeChangedCombination: Int { get }
typealias BluetoothPacketType = UInt16
var kBluetoothPacketTypeReserved1: Int { get }
var kBluetoothPacketType2DH1Omit: Int { get }
var kBluetoothPacketType3DH1Omit: Int { get }
var kBluetoothPacketTypeDM1: Int { get }
var kBluetoothPacketTypeDH1: Int { get }
var kBluetoothPacketTypeHV1: Int { get }
var kBluetoothPacketTypeHV2: Int { get }
var kBluetoothPacketTypeHV3: Int { get }
var kBluetoothPacketTypeDV: Int { get }
var kBluetoothPacketType2DH3Omit: Int { get }
var kBluetoothPacketType3DH3Omit: Int { get }
var kBluetoothPacketTypeAUX: Int { get }
var kBluetoothPacketTypeDM3: Int { get }
var kBluetoothPacketTypeDH3: Int { get }
var kBluetoothPacketType2DH5Omit: Int { get }
var kBluetoothPacketType3DM5Omit: Int { get }
var kBluetoothPacketTypeDM5: Int { get }
var kBluetoothPacketTypeDH5: Int { get }
var kBluetoothPacketTypeEnd: Int { get }
var kBluetoothSynchronousConnectionPacketTypeNone: Int { get }
var kBluetoothSynchronousConnectionPacketTypeHV1: Int { get }
var kBluetoothSynchronousConnectionPacketTypeHV2: Int { get }
var kBluetoothSynchronousConnectionPacketTypeHV3: Int { get }
var kBluetoothSynchronousConnectionPacketTypeEV3: Int { get }
var kBluetoothSynchronousConnectionPacketTypeEV4: Int { get }
var kBluetoothSynchronousConnectionPacketTypeEV5: Int { get }
var kBluetoothSynchronousConnectionPacketType2EV3Omit: Int { get }
var kBluetoothSynchronousConnectionPacketType3EV3Omit: Int { get }
var kBluetoothSynchronousConnectionPacketType2EV5Omit: Int { get }
var kBluetoothSynchronousConnectionPacketType3EV5Omit: Int { get }
var kBluetoothSynchronousConnectionPacketTypeFutureUse: Int { get }
var kBluetoothSynchronousConnectionPacketTypeAll: Int { get }
var kBluetoothSynchronousConnectionPacketTypeEnd: Int { get }
typealias BluetoothLAP = UInt32
var kBluetoothGeneralInquiryAccessCodeIndex: Int { get }
var kBluetoothGeneralInquiryAccessCodeLAPValue: Int { get }
var kBluetoothLimitedInquiryAccessCodeIndex: Int { get }
var kBluetoothLimitedInquiryAccessCodeLAPValue: Int { get }
var kBluetoothLimitedInquiryAccessCodeEnd: Int { get }
typealias BluetoothPageScanRepetitionMode = UInt8
var kBluetoothPageScanRepetitionModeR0: Int { get }
var kBluetoothPageScanRepetitionModeR1: Int { get }
var kBluetoothPageScanRepetitionModeR2: Int { get }
typealias BluetoothPageScanPeriodMode = UInt8
var kBluetoothPageScanPeriodModeP0: Int { get }
var kBluetoothPageScanPeriodModeP1: Int { get }
var kBluetoothPageScanPeriodModeP2: Int { get }
typealias BluetoothPageScanMode = UInt8
var kBluetoothPageScanModeMandatory: Int { get }
var kBluetoothPageScanModeOptional1: Int { get }
var kBluetoothPageScanModeOptional2: Int { get }
var kBluetoothPageScanModeOptional3: Int { get }
typealias BluetoothHCIPageScanType = UInt8
struct BluetoothHCIPageScanTypes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothHCIPageScanTypeStandard: BluetoothHCIPageScanTypes { get }
var kBluetoothHCIPageScanTypeInterlaced: BluetoothHCIPageScanTypes { get }
var kBluetoothHCIPageScanTypeReservedStart: BluetoothHCIPageScanTypes { get }
var kBluetoothHCIPageScanTypeReservedEnd: BluetoothHCIPageScanTypes { get }
typealias BluetoothHCIErroneousDataReporting = UInt8
var kBluetoothHCIErroneousDataReportingDisabled: Int { get }
var kBluetoothHCIErroneousDataReportingEnabled: Int { get }
var kBluetoothHCIErroneousDataReportingReservedStart: Int { get }
var kBluetoothHCIErroneousDataReportingReservedEnd: Int { get }
struct BluetoothDeviceAddress {
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct BluetoothKey {
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct BluetoothIRK {
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct BluetoothPINCode {
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
typealias BluetoothClassOfDevice = UInt32

///
/// Major Service Classes (11-bit value - bits 13-23 of Device/Service field)
///
typealias BluetoothServiceClassMajor = UInt32

///
/// Major Device Classes (5-bit value - bits 8-12 of Device/Service field)
///
typealias BluetoothDeviceClassMajor = UInt32

///
/// Minor Device Classes (6-bit value - bits 2-7 of Device/Service field)
///
typealias BluetoothDeviceClassMinor = UInt32
var kBluetoothDeviceNameMaxLength: Int { get }
typealias BluetoothDeviceName = (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
typealias BluetoothClockOffset = UInt16
typealias BluetoothRole = UInt8
typealias BluetoothAllowRoleSwitch = UInt8
var kBluetoothDontAllowRoleSwitch: Int { get }
var kBluetoothAllowRoleSwitch: Int { get }
var kBluetoothRoleBecomeMaster: Int { get }
var kBluetoothRoleRemainSlave: Int { get }
struct BluetoothSetEventMask {
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
typealias BluetoothPINType = UInt8
var kBluetoothL2CAPMaxPacketSize: Int { get }
var kBluetoothACLLogicalChannelReserved: Int { get }
var kBluetoothACLLogicalChannelL2CAPContinue: Int { get }
var kBluetoothACLLogicalChannelL2CAPStart: Int { get }
var kBluetoothACLLogicalChannelLMP: Int { get }
typealias BluetoothL2CAPChannelID = UInt16
var kBluetoothL2CAPChannelNull: Int { get }
var kBluetoothL2CAPChannelSignalling: Int { get }
var kBluetoothL2CAPChannelConnectionLessData: Int { get }
var kBluetoothL2CAPChannelAMPManagerProtocol: Int { get }
var kBluetoothL2CAPChannelAttributeProtocol: Int { get }
var kBluetoothL2CAPChannelLESignalling: Int { get }
var kBluetoothL2CAPChannelSecurityManager: Int { get }
var kBluetoothL2CAPChannelReservedStart: Int { get }
var kBluetoothL2CAPChannelLEAP: Int { get }
var kBluetoothL2CAPChannelLEAS: Int { get }
var kBluetoothL2CAPChannelMagnet: Int { get }
var kBluetoothL2CAPChannelReservedEnd: Int { get }
var kBluetoothL2CAPChannelDynamicStart: Int { get }
var kBluetoothL2CAPChannelDynamicEnd: Int { get }
var kBluetoothL2CAPChannelEnd: Int { get }
typealias BluetoothL2CAPGroupID = BluetoothL2CAPChannelID
typealias BluetoothL2CAPPSM = UInt16
struct BluetoothL2CAPCommandCode : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothL2CAPCommandCodeReserved: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeCommandReject: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeConnectionRequest: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeConnectionResponse: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeConfigureRequest: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeConfigureResponse: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeDisconnectionRequest: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeDisconnectionResponse: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeEchoRequest: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeEchoResponse: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeInformationRequest: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeInformationResponse: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeCreateChannelRequest: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeCreateChannelResponse: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeMoveChannelRequest: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeMoveChannelResponse: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeMoveChannelConfirmation: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeMoveChannelConfirmationResponse: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeConnectionParameterUpdateRequest: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeConnectionParameterUpdateResponse: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeLECreditBasedConnectionRequest: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeLECreditBasedConnectionResponse: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeLEFlowControlCredit: BluetoothL2CAPCommandCode { get }
struct BluetoothL2CAPCommandRejectReason : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothL2CAPCommandRejectReasonCommandNotUnderstood: BluetoothL2CAPCommandRejectReason { get }
var kBluetoothL2CAPCommandRejectReasonSignallingMTUExceeded: BluetoothL2CAPCommandRejectReason { get }
var kBluetoothL2CAPCommandRejectReasonInvalidCIDInRequest: BluetoothL2CAPCommandRejectReason { get }
typealias BluetoothL2CAPMTU = UInt16
typealias BluetoothL2CAPLinkTimeout = UInt16
typealias BluetoothL2CAPFlushTimeout = UInt16
var kBluetoothL2CAPFlushTimeoutUseExisting: Int { get }
var kBluetoothL2CAPFlushTimeoutImmediate: Int { get }
var kBluetoothL2CAPFlushTimeoutForever: Int { get }
var kBluetoothL2CAPFlushTimeoutEnd: Int { get }
struct BluetoothL2CAPQualityOfServiceOptions {
  var flags: UInt8
  var serviceType: UInt8
  var tokenRate: UInt32
  var tokenBucketSize: UInt32
  var peakBandwidth: UInt32
  var latency: UInt32
  var delayVariation: UInt32
  init()
  init(flags: UInt8, serviceType: UInt8, tokenRate: UInt32, tokenBucketSize: UInt32, peakBandwidth: UInt32, latency: UInt32, delayVariation: UInt32)
}
struct BluetoothL2CAPRetransmissionAndFlowControlOptions {
  var flags: UInt8
  var txWindowSize: UInt8
  var maxTransmit: UInt8
  var retransmissionTimeout: UInt16
  var monitorTimeout: UInt16
  var maxPDUPayloadSize: UInt16
  init()
  init(flags: UInt8, txWindowSize: UInt8, maxTransmit: UInt8, retransmissionTimeout: UInt16, monitorTimeout: UInt16, maxPDUPayloadSize: UInt16)
}
var kBluetoothL2CAPInfoTypeMaxConnectionlessMTUSize: Int { get }
var kBluetoothL2CAPPacketHeaderSize: Int { get }
typealias BluetoothL2CAPByteCount = UInt16
typealias BluetoothL2CAPCommandID = UInt8
typealias BluetoothL2CAPCommandByteCount = UInt16
struct BluetoothL2CAPConnectionResult : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothL2CAPConnectionResultSuccessful: BluetoothL2CAPConnectionResult { get }
var kBluetoothL2CAPConnectionResultPending: BluetoothL2CAPConnectionResult { get }
var kBluetoothL2CAPConnectionResultRefusedPSMNotSupported: BluetoothL2CAPConnectionResult { get }
var kBluetoothL2CAPConnectionResultRefusedSecurityBlock: BluetoothL2CAPConnectionResult { get }
var kBluetoothL2CAPConnectionResultRefusedNoResources: BluetoothL2CAPConnectionResult { get }
struct BluetoothL2CAPConnectionStatus : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothL2CAPConnectionStatusNoInfoAvailable: BluetoothL2CAPConnectionStatus { get }
var kBluetoothL2CAPConnectionStatusAuthenticationPending: BluetoothL2CAPConnectionStatus { get }
var kBluetoothL2CAPConnectionStatusAuthorizationPending: BluetoothL2CAPConnectionStatus { get }
struct BluetoothL2CAPConfigurationResult : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothL2CAPConfigurationResultSuccess: BluetoothL2CAPConfigurationResult { get }
var kBluetoothL2CAPConfigurationResultUnacceptableParams: BluetoothL2CAPConfigurationResult { get }
var kBluetoothL2CAPConfigurationResultRejected: BluetoothL2CAPConfigurationResult { get }
var kBluetoothL2CAPConfigurationResultUnknownOptions: BluetoothL2CAPConfigurationResult { get }
struct BluetoothL2CAPConfigurationOption : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothL2CAPConfigurationOptionMTU: BluetoothL2CAPConfigurationOption { get }
var kBluetoothL2CAPConfigurationOptionFlushTimeout: BluetoothL2CAPConfigurationOption { get }
var kBluetoothL2CAPConfigurationOptionQoS: BluetoothL2CAPConfigurationOption { get }
var kBluetoothL2CAPConfigurationOptionRetransmissionAndFlowControl: BluetoothL2CAPConfigurationOption { get }
var kBluetoothL2CAPConfigurationOptionFrameCheckSequence: BluetoothL2CAPConfigurationOption { get }
var kBluetoothL2CAPConfigurationOptionExtendedFlowSpecification: BluetoothL2CAPConfigurationOption { get }
var kBluetoothL2CAPConfigurationOptionExtendedWindowSize: BluetoothL2CAPConfigurationOption { get }
var kBluetoothL2CAPConfigurationOptionMTULength: Int { get }
var kBluetoothL2CAPConfigurationOptionFlushTimeoutLength: Int { get }
var kBluetoothL2CAPConfigurationOptionQoSLength: Int { get }
var kBluetoothL2CAPConfigurationOptionRetransmissionAndFlowControlLength: Int { get }
struct BluetoothL2CAPConfigurationRetransmissionAndFlowControlFlags : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothL2CAPConfigurationBasicL2CAPModeFlag: BluetoothL2CAPConfigurationRetransmissionAndFlowControlFlags { get }
var kBluetoothL2CAPConfigurationRetransmissionModeFlag: BluetoothL2CAPConfigurationRetransmissionAndFlowControlFlags { get }
var kBluetoothL2CAPConfigurationFlowControlModeFlag: BluetoothL2CAPConfigurationRetransmissionAndFlowControlFlags { get }
var kBluetoothL2CAPConfigurationEnhancedRetransmissionMode: BluetoothL2CAPConfigurationRetransmissionAndFlowControlFlags { get }
var kBluetoothL2CAPConfigurationStreamingMode: BluetoothL2CAPConfigurationRetransmissionAndFlowControlFlags { get }
struct BluetoothL2CAPInformationType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothL2CAPInformationTypeConnectionlessMTU: BluetoothL2CAPInformationType { get }
var kBluetoothL2CAPInformationTypeExtendedFeatures: BluetoothL2CAPInformationType { get }
var kBluetoothL2CAPInformationTypeFixedChannelsSupported: BluetoothL2CAPInformationType { get }
struct BluetoothL2CAPInformationResult : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothL2CAPInformationResultSuccess: BluetoothL2CAPInformationResult { get }
var kBluetoothL2CAPInformationResultNotSupported: BluetoothL2CAPInformationResult { get }
struct BluetoothL2CAPInformationExtendedFeaturesMask : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothL2CAPInformationNoExtendedFeatures: BluetoothL2CAPInformationExtendedFeaturesMask { get }
var kBluetoothL2CAPInformationFlowControlMode: BluetoothL2CAPInformationExtendedFeaturesMask { get }
var kBluetoothL2CAPInformationRetransmissionMode: BluetoothL2CAPInformationExtendedFeaturesMask { get }
var kBluetoothL2CAPInformationBidirectionalQoS: BluetoothL2CAPInformationExtendedFeaturesMask { get }
var kBluetoothL2CAPInformationEnhancedRetransmissionMode: BluetoothL2CAPInformationExtendedFeaturesMask { get }
var kBluetoothL2CAPInformationStreamingMode: BluetoothL2CAPInformationExtendedFeaturesMask { get }
var kBluetoothL2CAPInformationFCSOption: BluetoothL2CAPInformationExtendedFeaturesMask { get }
var kBluetoothL2CAPInformationExtendedFlowSpecification: BluetoothL2CAPInformationExtendedFeaturesMask { get }
var kBluetoothL2CAPInformationFixedChannels: BluetoothL2CAPInformationExtendedFeaturesMask { get }
var kBluetoothL2CAPInformationExtendedWindowSize: BluetoothL2CAPInformationExtendedFeaturesMask { get }
var kBluetoothL2CAPUnicastConnectionlessDataReception: BluetoothL2CAPInformationExtendedFeaturesMask { get }
struct BluetoothL2CAPQoSType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothL2CAPQoSTypeNoTraffic: BluetoothL2CAPQoSType { get }
var kBluetoothL2CAPQoSTypeBestEffort: BluetoothL2CAPQoSType { get }
var kBluetoothL2CAPQoSTypeGuaranteed: BluetoothL2CAPQoSType { get }
var kBluetoothL2CAPMTULowEnergyDefault: UInt32 { get }
var kBluetoothL2CAPMTUMinimum: UInt32 { get }
var kBluetoothL2CAPMTUDefault: UInt32 { get }
var kBluetoothL2CAPMTUMaximum: UInt32 { get }
var kBluetoothL2CAPMTUStart: UInt32 { get }
var kBluetoothL2CAPMTUSIG: UInt32 { get }
var kBluetoothL2CAPFlushTimeoutDefault: UInt32 { get }
var kBluetoothL2CAPQoSFlagsDefault: UInt32 { get }
var kBluetoothL2CAPQoSTypeDefault: UInt32 { get }
var kBluetoothL2CAPQoSTokenRateDefault: UInt32 { get }
var kBluetoothL2CAPQoSTokenBucketSizeDefault: UInt32 { get }
var kBluetoothL2CAPQoSPeakBandwidthDefault: UInt32 { get }
var kBluetoothL2CAPQoSLatencyDefault: UInt32 { get }
var kBluetoothL2CAPQoSDelayVariationDefault: UInt32 { get }
var kBluetoothLESMPTimeout: Int32 { get }
var kBluetoothLESMPMinEncryptionKeySize: Int32 { get }
var kBluetoothLESMPMaxEncryptionKeySize: Int32 { get }
struct BluetoothLESecurityManagerKeyDistributionFormat : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothLESecurityManagerEncryptionKey: BluetoothLESecurityManagerKeyDistributionFormat { get }
var kBluetoothLESecurityManagerIDKey: BluetoothLESecurityManagerKeyDistributionFormat { get }
var kBluetoothLESecurityManagerSignKey: BluetoothLESecurityManagerKeyDistributionFormat { get }
var kBluetoothLESecurityManagerLinkKey: BluetoothLESecurityManagerKeyDistributionFormat { get }
struct BluetoothLESecurityManagerCommandCode : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothLESecurityManagerCommandCodeReserved: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodePairingRequest: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodePairingResponse: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodePairingConfirm: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodePairingRandom: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodePairingFailed: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodeEncryptionInfo: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodeMasterIdentification: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodeIdentityInfo: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodeIdentityAddressInfo: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodeSigningInfo: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodeSecurityRequest: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodePairingPublicKey: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodePairingDHKeyCheck: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodePairingKeypressNotification: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodeReservedStart: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodeReservedEnd: BluetoothLESecurityManagerCommandCode { get }
struct BluetoothLESecurityManagerUserInputCapability : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothLESecurityManagerUserInputCapabilityNoInput: BluetoothLESecurityManagerUserInputCapability { get }
var kBluetoothLESecurityManagerUserInputCapabilityYesNo: BluetoothLESecurityManagerUserInputCapability { get }
var kBluetoothLESecurityManagerUserInputCapabilityKeyboard: BluetoothLESecurityManagerUserInputCapability { get }
struct BluetoothLESecurityManagerUserOutputCapability : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothLESecurityManagerUserOutputCapabilityNoOutput: BluetoothLESecurityManagerUserOutputCapability { get }
var kBluetoothLESecurityManagerUserOutputCapabilityNumericOutput: BluetoothLESecurityManagerUserOutputCapability { get }
struct BluetoothLESecurityManagerIOCapability : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothLESecurityManagerIOCapabilityDisplayOnly: BluetoothLESecurityManagerIOCapability { get }
var kBluetoothLESecurityManagerIOCapabilityDisplayYesNo: BluetoothLESecurityManagerIOCapability { get }
var kBluetoothLESecurityManagerIOCapabilityKeyboardOnly: BluetoothLESecurityManagerIOCapability { get }
var kBluetoothLESecurityManagerIOCapabilityNoInputNoOutput: BluetoothLESecurityManagerIOCapability { get }
var kBluetoothLESecurityManagerIOCapabilityKeyboardDisplay: BluetoothLESecurityManagerIOCapability { get }
var kBluetoothLESecurityManagerIOCapabilityReservedStart: BluetoothLESecurityManagerIOCapability { get }
var kBluetoothLESecurityManagerIOCapabilityReservedEnd: BluetoothLESecurityManagerIOCapability { get }
struct BluetoothLESecurityManagerOOBData : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothLESecurityManagerOOBAuthenticationDataNotPresent: BluetoothLESecurityManagerOOBData { get }
var kBluetoothLESecurityManagerOOBAuthenticationDataPresent: BluetoothLESecurityManagerOOBData { get }
var kBluetoothLESecurityManagerOOBDataReservedStart: BluetoothLESecurityManagerOOBData { get }
var kBluetoothLESecurityManagerOOBDataReservedEnd: BluetoothLESecurityManagerOOBData { get }
var kBluetoothLESecurityManagerNoBonding: Int { get }
var kBluetoothLESecurityManagerBonding: Int { get }
var kBluetoothLESecurityManagerReservedStart: Int { get }
var kBluetoothLESecurityManagerReservedEnd: Int { get }
struct BluetoothLESecurityManagerPairingFailedReasonCode : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothLESecurityManagerReasonCodeReserved: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodePasskeyEntryFailed: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodeOOBNotAvailbale: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodeAuthenticationRequirements: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodeConfirmValueFailed: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodePairingNotSupported: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodeEncryptionKeySize: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodeCommandNotSupported: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodeUnspecifiedReason: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodeRepeatedAttempts: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodeInvalidParameters: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodeDHKeyCheckFailed: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodeNumericComparisonFailed: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodeBREDRPairingInProgress: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodeCrossTransportKeyDerivationGenerationNotAllowed: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodeReservedStart: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodeReservedEnd: BluetoothLESecurityManagerPairingFailedReasonCode { get }
struct BluetoothLESecurityManagerKeypressNotificationType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothLESecurityManagerNotificationTypePasskeyEntryStarted: BluetoothLESecurityManagerKeypressNotificationType { get }
var kBluetoothLESecurityManagerNotificationTypePasskeyDigitEntered: BluetoothLESecurityManagerKeypressNotificationType { get }
var kBluetoothLESecurityManagerNotificationTypePasskeyDigitErased: BluetoothLESecurityManagerKeypressNotificationType { get }
var kBluetoothLESecurityManagerNotificationTypePasskeyCleared: BluetoothLESecurityManagerKeypressNotificationType { get }
var kBluetoothLESecurityManagerNotificationTypePasskeyEntryCompleted: BluetoothLESecurityManagerKeypressNotificationType { get }
var kBluetoothLESecurityManagerNotificationTypeReservedStart: BluetoothLESecurityManagerKeypressNotificationType { get }
var kBluetoothLESecurityManagerNotificationTypeReservedEnd: BluetoothLESecurityManagerKeypressNotificationType { get }
struct BluetoothAMPManagerCode : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothAMPManagerCodeReserved: BluetoothAMPManagerCode { get }
var kBluetoothAMPManagerCodeAMPCommandReject: BluetoothAMPManagerCode { get }
var kBluetoothAMPManagerCodeAMPDiscoverRequest: BluetoothAMPManagerCode { get }
var kBluetoothAMPManagerCodeAMPDiscoverResponse: BluetoothAMPManagerCode { get }
var kBluetoothAMPManagerCodeAMPChangeNotify: BluetoothAMPManagerCode { get }
var kBluetoothAMPManagerCodeAMPChangeResponse: BluetoothAMPManagerCode { get }
var kBluetoothAMPManagerCodeAMPGetInfoRequest: BluetoothAMPManagerCode { get }
var kBluetoothAMPManagerCodeAMPGetInfoResponse: BluetoothAMPManagerCode { get }
var kBluetoothAMPManagerCodeAMPGetAssocRequest: BluetoothAMPManagerCode { get }
var kBluetoothAMPManagerCodeAMPGetAssocResponse: BluetoothAMPManagerCode { get }
var kBluetoothAMPManagerCodeAMPCreatePhysicalLinkRequest: BluetoothAMPManagerCode { get }
var kBluetoothAMPManagerCodeAMPCreatePhysicalLinkResponse: BluetoothAMPManagerCode { get }
var kBluetoothAMPManagerCodeAMPDisconnectPhysicalLinkRequest: BluetoothAMPManagerCode { get }
var kBluetoothAMPManagerCodeAMPDisconnectPhysicalLinkResponse: BluetoothAMPManagerCode { get }
struct BluetoothAMPCommandRejectReason : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothAMPManagerCommandRejectReasonCommandNotRecognized: BluetoothAMPCommandRejectReason { get }
struct BluetoothAMPDiscoverResponseControllerStatus : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothAMPManagerDiscoverResponseControllerStatusPoweredDown: BluetoothAMPDiscoverResponseControllerStatus { get }
var kBluetoothAMPManagerDiscoverResponseControllerStatusBluetoothOnly: BluetoothAMPDiscoverResponseControllerStatus { get }
var kBluetoothAMPManagerDiscoverResponseControllerStatusNoCapacity: BluetoothAMPDiscoverResponseControllerStatus { get }
var kBluetoothAMPManagerDiscoverResponseControllerStatusLowCapacity: BluetoothAMPDiscoverResponseControllerStatus { get }
var kBluetoothAMPManagerDiscoverResponseControllerStatusMediumCapacity: BluetoothAMPDiscoverResponseControllerStatus { get }
var kBluetoothAMPManagerDiscoverResponseControllerStatusHighCapacity: BluetoothAMPDiscoverResponseControllerStatus { get }
var kBluetoothAMPManagerDiscoverResponseControllerStatusFullCapacity: BluetoothAMPDiscoverResponseControllerStatus { get }
struct BluetoothAMPGetInfoResponseStatus : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothAMPManagerGetInfoResponseSuccess: BluetoothAMPGetInfoResponseStatus { get }
var kBluetoothAMPManagerGetInfoResponseInvalidControllerID: BluetoothAMPGetInfoResponseStatus { get }
struct BluetoothAMPGetAssocResponseStatus : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothAMPManagerGetAssocResponseSuccess: BluetoothAMPGetAssocResponseStatus { get }
var kBluetoothAMPManagerGetAssocResponseInvalidControllerID: BluetoothAMPGetAssocResponseStatus { get }
struct BluetoothAMPCreatePhysicalLinkResponseStatus : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothAMPManagerCreatePhysicalLinkResponseSuccess: BluetoothAMPCreatePhysicalLinkResponseStatus { get }
var kBluetoothAMPManagerCreatePhysicalLinkResponseInvalidControllerID: BluetoothAMPCreatePhysicalLinkResponseStatus { get }
var kBluetoothAMPManagerCreatePhysicalLinkResponseUnableToStartLinkCreation: BluetoothAMPCreatePhysicalLinkResponseStatus { get }
var kBluetoothAMPManagerCreatePhysicalLinkResponseCollisionOccurred: BluetoothAMPCreatePhysicalLinkResponseStatus { get }
var kBluetoothAMPManagerCreatePhysicalLinkResponseAMPDisconnectedPhysicalLinkRequestReceived: BluetoothAMPCreatePhysicalLinkResponseStatus { get }
var kBluetoothAMPManagerCreatePhysicalLinkResponsePhysicalLinkAlreadyExists: BluetoothAMPCreatePhysicalLinkResponseStatus { get }
var kBluetoothAMPManagerCreatePhysicalLinkResponseSecurityViolation: BluetoothAMPCreatePhysicalLinkResponseStatus { get }
struct BluetoothAMPDisconnectPhysicalLinkResponseStatus : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothAMPManagerDisconnectPhysicalLinkResponseSuccess: BluetoothAMPDisconnectPhysicalLinkResponseStatus { get }
var kBluetoothAMPManagerDisconnectPhysicalLinkResponseInvalidControllerID: BluetoothAMPDisconnectPhysicalLinkResponseStatus { get }
var kBluetoothAMPManagerDisconnectPhysicalLinkResponseNoPhysicalLink: BluetoothAMPDisconnectPhysicalLinkResponseStatus { get }
typealias BluetoothHCICommandOpCodeGroup = UInt8
typealias BluetoothHCICommandOpCodeCommand = UInt16
typealias BluetoothHCICommandOpCode = UInt16
typealias BluetoothHCIVendorCommandSelector = UInt32
var kBluetoothHCIOpCodeNoOp: Int { get }
var kBluetoothHCICommandGroupNoOp: Int { get }
var kBluetoothHCICommandNoOp: Int { get }
var kBluetoothHCICommandGroupLinkControl: Int { get }
var kBluetoothHCICommandInquiry: Int { get }
var kBluetoothHCICommandInquiryCancel: Int { get }
var kBluetoothHCICommandPeriodicInquiryMode: Int { get }
var kBluetoothHCICommandExitPeriodicInquiryMode: Int { get }
var kBluetoothHCICommandCreateConnection: Int { get }
var kBluetoothHCICommandDisconnect: Int { get }
var kBluetoothHCICommandAddSCOConnection: Int { get }
var kBluetoothHCICommandCreateConnectionCancel: Int { get }
var kBluetoothHCICommandAcceptConnectionRequest: Int { get }
var kBluetoothHCICommandRejectConnectionRequest: Int { get }
var kBluetoothHCICommandLinkKeyRequestReply: Int { get }
var kBluetoothHCICommandLinkKeyRequestNegativeReply: Int { get }
var kBluetoothHCICommandPINCodeRequestReply: Int { get }
var kBluetoothHCICommandPINCodeRequestNegativeReply: Int { get }
var kBluetoothHCICommandChangeConnectionPacketType: Int { get }
var kBluetoothHCICommandAuthenticationRequested: Int { get }
var kBluetoothHCICommandSetConnectionEncryption: Int { get }
var kBluetoothHCICommandChangeConnectionLinkKey: Int { get }
var kBluetoothHCICommandMasterLinkKey: Int { get }
var kBluetoothHCICommandRemoteNameRequest: Int { get }
var kBluetoothHCICommandReadRemoteSupportedFeatures: Int { get }
var kBluetoothHCICommandReadRemoteExtendedFeatures: Int { get }
var kBluetoothHCICommandReadRemoteVersionInformation: Int { get }
var kBluetoothHCICommandReadClockOffset: Int { get }
var kBluetoothHCICommandRemoteNameRequestCancel: Int { get }
var kBluetoothHCICommandReadLMPHandle: Int { get }
var kBluetoothHCICommandSetupSynchronousConnection: Int { get }
var kBluetoothHCICommandAcceptSynchronousConnectionRequest: Int { get }
var kBluetoothHCICommandRejectSynchronousConnectionRequest: Int { get }
var kBluetoothHCICommandIOCapabilityRequestReply: Int { get }
var kBluetoothHCICommandUserConfirmationRequestReply: Int { get }
var kBluetoothHCICommandUserConfirmationRequestNegativeReply: Int { get }
var kBluetoothHCICommandUserPasskeyRequestReply: Int { get }
var kBluetoothHCICommandUserPasskeyRequestNegativeReply: Int { get }
var kBluetoothHCICommandRemoteOOBDataRequestReply: Int { get }
var kBluetoothHCICommandRemoteOOBDataRequestNegativeReply: Int { get }
var kBluetoothHCICommandIOCapabilityRequestNegativeReply: Int { get }
var kBluetoothHCICommandEnhancedSetupSynchronousConnection: Int { get }
var kBluetoothHCICommandEnhancedAcceptSynchronousConnectionRequest: Int { get }
var kBluetoothHCICommandTruncatedPage: Int { get }
var kBluetoothHCICommandTruncatedPageCancel: Int { get }
var kBluetoothHCICommandSetConnectionlessSlaveBroadcast: Int { get }
var kBluetoothHCICommandSetConnectionlessSlaveBroadcastReceive: Int { get }
var kBluetoothHCICommandStartSynchronizationTrain: Int { get }
var kBluetoothHCICommandReceiveSynchronizationTrain: Int { get }
var kBluetoothHCICommandRemoteOOBExtendedDataRequestReply: Int { get }
var kBluetoothHCICommandGroupLinkPolicy: Int { get }
var kBluetoothHCICommandHoldMode: Int { get }
var kBluetoothHCICommandSniffMode: Int { get }
var kBluetoothHCICommandExitSniffMode: Int { get }
var kBluetoothHCICommandParkMode: Int { get }
var kBluetoothHCICommandExitParkMode: Int { get }
var kBluetoothHCICommandQoSSetup: Int { get }
var kBluetoothHCICommandRoleDiscovery: Int { get }
var kBluetoothHCICommandSwitchRole: Int { get }
var kBluetoothHCICommandReadLinkPolicySettings: Int { get }
var kBluetoothHCICommandWriteLinkPolicySettings: Int { get }
var kBluetoothHCICommandReadDefaultLinkPolicySettings: Int { get }
var kBluetoothHCICommandWriteDefaultLinkPolicySettings: Int { get }
var kBluetoothHCICommandFlowSpecification: Int { get }
var kBluetoothHCICommandSniffSubrating: Int { get }
var kBluetoothHCICommandAcceptSniffRequest: Int { get }
var kBluetoothHCICommandRejectSniffRequest: Int { get }
var kBluetoothHCICommandGroupHostController: Int { get }
var kBluetoothHCICommandSetEventMask: Int { get }
var kBluetoothHCICommandReset: Int { get }
var kBluetoothHCICommandSetEventFilter: Int { get }
var kBluetoothHCICommandFlush: Int { get }
var kBluetoothHCICommandReadPINType: Int { get }
var kBluetoothHCICommandWritePINType: Int { get }
var kBluetoothHCICommandCreateNewUnitKey: Int { get }
var kBluetoothHCICommandReadStoredLinkKey: Int { get }
var kBluetoothHCICommandWriteStoredLinkKey: Int { get }
var kBluetoothHCICommandDeleteStoredLinkKey: Int { get }
var kBluetoothHCICommandChangeLocalName: Int { get }
var kBluetoothHCICommandReadLocalName: Int { get }
var kBluetoothHCICommandReadConnectionAcceptTimeout: Int { get }
var kBluetoothHCICommandWriteConnectionAcceptTimeout: Int { get }
var kBluetoothHCICommandReadPageTimeout: Int { get }
var kBluetoothHCICommandWritePageTimeout: Int { get }
var kBluetoothHCICommandReadScanEnable: Int { get }
var kBluetoothHCICommandWriteScanEnable: Int { get }
var kBluetoothHCICommandReadPageScanActivity: Int { get }
var kBluetoothHCICommandWritePageScanActivity: Int { get }
var kBluetoothHCICommandReadInquiryScanActivity: Int { get }
var kBluetoothHCICommandWriteInquiryScanActivity: Int { get }
var kBluetoothHCICommandReadAuthenticationEnable: Int { get }
var kBluetoothHCICommandWriteAuthenticationEnable: Int { get }
var kBluetoothHCICommandReadEncryptionMode: Int { get }
var kBluetoothHCICommandWriteEncryptionMode: Int { get }
var kBluetoothHCICommandReadClassOfDevice: Int { get }
var kBluetoothHCICommandWriteClassOfDevice: Int { get }
var kBluetoothHCICommandReadVoiceSetting: Int { get }
var kBluetoothHCICommandWriteVoiceSetting: Int { get }
var kBluetoothHCICommandReadAutomaticFlushTimeout: Int { get }
var kBluetoothHCICommandWriteAutomaticFlushTimeout: Int { get }
var kBluetoothHCICommandReadNumberOfBroadcastRetransmissions: Int { get }
var kBluetoothHCICommandWriteNumberOfBroadcastRetransmissions: Int { get }
var kBluetoothHCICommandReadHoldModeActivity: Int { get }
var kBluetoothHCICommandWriteHoldModeActivity: Int { get }
var kBluetoothHCICommandReadTransmitPowerLevel: Int { get }
var kBluetoothHCICommandReadSCOFlowControlEnable: Int { get }
var kBluetoothHCICommandWriteSCOFlowControlEnable: Int { get }
var kBluetoothHCICommandSetHostControllerToHostFlowControl: Int { get }
var kBluetoothHCICommandHostBufferSize: Int { get }
var kBluetoothHCICommandHostNumberOfCompletedPackets: Int { get }
var kBluetoothHCICommandReadLinkSupervisionTimeout: Int { get }
var kBluetoothHCICommandWriteLinkSupervisionTimeout: Int { get }
var kBluetoothHCICommandReadNumberOfSupportedIAC: Int { get }
var kBluetoothHCICommandReadCurrentIACLAP: Int { get }
var kBluetoothHCICommandWriteCurrentIACLAP: Int { get }
var kBluetoothHCICommandReadPageScanPeriodMode: Int { get }
var kBluetoothHCICommandWritePageScanPeriodMode: Int { get }
var kBluetoothHCICommandReadPageScanMode: Int { get }
var kBluetoothHCICommandWritePageScanMode: Int { get }
var kBluetoothHCICommandSetAFHClassification: Int { get }
var kBluetoothHCICommandReadInquiryScanType: Int { get }
var kBluetoothHCICommandWriteInquiryScanType: Int { get }
var kBluetoothHCICommandReadInquiryMode: Int { get }
var kBluetoothHCICommandWriteInquiryMode: Int { get }
var kBluetoothHCICommandReadPageScanType: Int { get }
var kBluetoothHCICommandWritePageScanType: Int { get }
var kBluetoothHCICommandReadAFHChannelAssessmentMode: Int { get }
var kBluetoothHCICommandWriteAFHChannelAssessmentMode: Int { get }
var kBluetoothHCICommandReadExtendedInquiryResponse: Int { get }
var kBluetoothHCICommandWriteExtendedInquiryResponse: Int { get }
var kBluetoothHCICommandRefreshEncryptionKey: Int { get }
var kBluetoothHCICommandReadSimplePairingMode: Int { get }
var kBluetoothHCICommandWriteSimplePairingMode: Int { get }
var kBluetoothHCICommandReadLocalOOBData: Int { get }
var kBluetoothHCICommandReadInquiryResponseTransmitPower: Int { get }
var kBluetoothHCICommandWriteInquiryResponseTransmitPower: Int { get }
var kBluetoothHCICommandSendKeypressNotification: Int { get }
var kBluetoothHCICommandReadDefaultErroneousDataReporting: Int { get }
var kBluetoothHCICommandWriteDefaultErroneousDataReporting: Int { get }
var kBluetoothHCICommandEnhancedFlush: Int { get }
var kBluetoothHCICommandReadLogicalLinkAcceptTimeout: Int { get }
var kBluetoothHCICommandWriteLogicalLinkAcceptTimeout: Int { get }
var kBluetoothHCICommandSetEventMaskPageTwo: Int { get }
var kBluetoothHCICommandReadLocationData: Int { get }
var kBluetoothHCICommandWriteLocationData: Int { get }
var kBluetoothHCICommandReadFlowControlMode: Int { get }
var kBluetoothHCICommandWriteFlowControlMode: Int { get }
var kBluetoothHCICommandReadEnhancedTransmitPowerLevel: Int { get }
var kBluetoothHCICommandReadBestEffortFlushTimeout: Int { get }
var kBluetoothHCICommandWriteBestEffortFlushTimeout: Int { get }
var kBluetoothHCICommandShortRangeMode: Int { get }
var kBluetoothHCICommandReadLEHostSupported: Int { get }
var kBluetoothHCICommandWriteLEHostSupported: Int { get }
var kBluetoothHCICommandSetMWSChannelParameters: Int { get }
var kBluetoothHCICommandSetExternalFrameConfiguration: Int { get }
var kBluetoothHCICommandSetMWSSignaling: Int { get }
var kBluetoothHCICommandSetMWSTransportLayer: Int { get }
var kBluetoothHCICommandSetMWSScanFrequencyTable: Int { get }
var kBluetoothHCICommandSetMWSPATTERNConfiguration: Int { get }
var kBluetoothHCICommandSetReservedLTADDR: Int { get }
var kBluetoothHCICommandDeleteReservedLTADDR: Int { get }
var kBluetoothHCICommandSetConnectionlessSlaveBroadcastData: Int { get }
var kBluetoothHCICommandReadSynchronizationTrainParameters: Int { get }
var kBluetoothHCICommandWriteSynchronizationTrainParameters: Int { get }
var kBluetoothHCICommandReadSecureConnectionsHostSupport: Int { get }
var kBluetoothHCICommandWriteSecureConnectionsHostSupport: Int { get }
var kBluetoothHCICommandReadAuthenticatedPayloadTimeout: Int { get }
var kBluetoothHCICommandWriteAuthenticatedPayloadTimeout: Int { get }
var kBluetoothHCICommandReadLocalOOBExtendedData: Int { get }
var kBluetoothHCICommandReadExtendedPageTimeout: Int { get }
var kBluetoothHCICommandWriteExtendedPageTimeout: Int { get }
var kBluetoothHCICommandReadExtendedInquiryLength: Int { get }
var kBluetoothHCICommandWriteExtendedInquiryLength: Int { get }
var kBluetoothHCICommandGroupInformational: Int { get }
var kBluetoothHCICommandReadLocalVersionInformation: Int { get }
var kBluetoothHCICommandReadLocalSupportedCommands: Int { get }
var kBluetoothHCICommandReadLocalSupportedFeatures: Int { get }
var kBluetoothHCICommandReadLocalExtendedFeatures: Int { get }
var kBluetoothHCICommandReadBufferSize: Int { get }
var kBluetoothHCICommandReadCountryCode: Int { get }
var kBluetoothHCICommandReadDeviceAddress: Int { get }
var kBluetoothHCICommandReadDataBlockSize: Int { get }
var kBluetoothHCICommandReadLocalSupportedCodecs: Int { get }
var kBluetoothHCICommandGroupStatus: Int { get }
var kBluetoothHCICommandReadFailedContactCounter: Int { get }
var kBluetoothHCICommandResetFailedContactCounter: Int { get }
var kBluetoothHCICommandGetLinkQuality: Int { get }
var kBluetoothHCICommandReadRSSI: Int { get }
var kBluetoothHCICommandReadAFHMappings: Int { get }
var kBluetoothHCICommandReadClock: Int { get }
var kBluetoothHCICommandReadEncryptionKeySize: Int { get }
var kBluetoothHCICommandReadLocalAMPInfo: Int { get }
var kBluetoothHCICommandReadLocalAMPASSOC: Int { get }
var kBluetoothHCICommandWriteRemoteAMPASSOC: Int { get }
var kBluetoothHCICommandGetMWSTransportLayerConfiguration: Int { get }
var kBluetoothHCICommandSetTriggeredClockCapture: Int { get }
var kBluetoothHCICommandGroupTesting: Int { get }
var kBluetoothHCICommandReadLoopbackMode: Int { get }
var kBluetoothHCICommandWriteLoopbackMode: Int { get }
var kBluetoothHCICommandEnableDeviceUnderTestMode: Int { get }
var kBluetoothHCICommandWriteSimplePairingDebugMode: Int { get }
var kBluetoothHCICommandEnableAMPReceiverReports: Int { get }
var kBluetoothHCICommandAMPTestEnd: Int { get }
var kBluetoothHCICommandAMPTest: Int { get }
var kBluetoothHCICommandGroupLowEnergy: Int { get }
var kBluetoothHCICommandLESetEventMask: Int { get }
var kBluetoothHCICommandLEReadBufferSize: Int { get }
var kBluetoothHCICommandLEReadLocalSupportedFeatures: Int { get }
var kBluetoothHCICommandLESetRandomAddress: Int { get }
var kBluetoothHCICommandLESetAdvertisingParameters: Int { get }
var kBluetoothHCICommandLEReadAdvertisingChannelTxPower: Int { get }
var kBluetoothHCICommandLESetAdvertisingData: Int { get }
var kBluetoothHCICommandLESetScanResponseData: Int { get }
var kBluetoothHCICommandLESetAdvertiseEnable: Int { get }
var kBluetoothHCICommandLESetScanParameters: Int { get }
var kBluetoothHCICommandLESetScanEnable: Int { get }
var kBluetoothHCICommandLECreateConnection: Int { get }
var kBluetoothHCICommandLECreateConnectionCancel: Int { get }
var kBluetoothHCICommandLEReadWhiteListSize: Int { get }
var kBluetoothHCICommandLEClearWhiteList: Int { get }
var kBluetoothHCICommandLEAddDeviceToWhiteList: Int { get }
var kBluetoothHCICommandLERemoveDeviceFromWhiteList: Int { get }
var kBluetoothHCICommandLEConnectionUpdate: Int { get }
var kBluetoothHCICommandLESetHostChannelClassification: Int { get }
var kBluetoothHCICommandLEReadChannelMap: Int { get }
var kBluetoothHCICommandLEReadRemoteUsedFeatures: Int { get }
var kBluetoothHCICommandLEEncrypt: Int { get }
var kBluetoothHCICommandLERand: Int { get }
var kBluetoothHCICommandLEStartEncryption: Int { get }
var kBluetoothHCICommandLELongTermKeyRequestReply: Int { get }
var kBluetoothHCICommandLELongTermKeyRequestNegativeReply: Int { get }
var kBluetoothHCICommandLEReadSupportedStates: Int { get }
var kBluetoothHCICommandLEReceiverTest: Int { get }
var kBluetoothHCICommandLETransmitterTest: Int { get }
var kBluetoothHCICommandLETestEnd: Int { get }
var kBluetoothHCICommandLERemoteConnectionParameterRequestReply: Int { get }
var kBluetoothHCICommandLERemoteConnectionParameterRequestNegativeReply: Int { get }
var kBluetoothHCICommandLESetDataLength: Int { get }
var kBluetoothHCICommandLEReadSuggestedDefaultDataLength: Int { get }
var kBluetoothHCICommandLEWriteSuggestedDefaultDataLength: Int { get }
var kBluetoothHCICommandLEReadLocalP256PublicKey: Int { get }
var kBluetoothHCICommandLEGenerateDHKey: Int { get }
var kBluetoothHCICommandLEAddDeviceToResolvingList: Int { get }
var kBluetoothHCICommandLERemoveDeviceFromResolvingList: Int { get }
var kBluetoothHCICommandLEClearResolvingList: Int { get }
var kBluetoothHCICommandLEReadResolvingListSize: Int { get }
var kBluetoothHCICommandLEReadPeerResolvableAddress: Int { get }
var kBluetoothHCICommandLEReadLocalResolvableAddress: Int { get }
var kBluetoothHCICommandLESetAddressResolutionEnable: Int { get }
var kBluetoothHCICommandLESetResolvablePrivateAddressTimeout: Int { get }
var kBluetoothHCICommandLEReadMaximumDataLength: Int { get }
var kBluetoothHCICommandGroupLogoTesting: Int { get }
var kBluetoothHCICommandGroupVendorSpecific: Int { get }
var kBluetoothHCICommandGroupMax: Int { get }
var kBluetoothHCICommandMax: Int { get }
typealias BluetoothHCIQoSFlags = UInt8
typealias BluetoothHCIParamByteCount = UInt8
typealias BluetoothHCIACLDataByteCount = UInt16
typealias BluetoothHCISCODataByteCount = UInt8
typealias BluetoothHCIInquiryLength = UInt8
typealias BluetoothHCIResponseCount = UInt8
typealias BluetoothHCICountryCode = UInt8
typealias BluetoothHCIModeInterval = UInt16
typealias BluetoothHCISniffAttemptCount = UInt16
typealias BluetoothHCISniffTimeout = UInt16
typealias BluetoothHCIParkModeBeaconInterval = UInt16
typealias BluetoothMaxSlots = UInt8
typealias BluetoothManufacturerName = UInt16
typealias BluetoothLMPVersion = UInt8
typealias BluetoothLMPSubversion = UInt16
typealias BluetoothHCIConnectionMode = UInt8
struct BluetoothHCIConnectionModes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kConnectionActiveMode: BluetoothHCIConnectionModes { get }
var kConnectionHoldMode: BluetoothHCIConnectionModes { get }
var kConnectionSniffMode: BluetoothHCIConnectionModes { get }
var kConnectionParkMode: BluetoothHCIConnectionModes { get }
var kConnectionModeReservedForFutureUse: BluetoothHCIConnectionModes { get }
struct BluetoothHCISupportedCommands {
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct BluetoothHCISupportedFeatures {
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
typealias BluetoothHCIPageNumber = UInt8
struct BluetoothHCIExtendedFeaturesInfo {
  var page: BluetoothHCIPageNumber
  var maxPage: BluetoothHCIPageNumber
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(page: BluetoothHCIPageNumber, maxPage: BluetoothHCIPageNumber, data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct BluetoothFeatureBits : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothFeatureThreeSlotPackets: BluetoothFeatureBits { get }
var kBluetoothFeatureFiveSlotPackets: BluetoothFeatureBits { get }
var kBluetoothFeatureEncryption: BluetoothFeatureBits { get }
var kBluetoothFeatureSlotOffset: BluetoothFeatureBits { get }
var kBluetoothFeatureTimingAccuracy: BluetoothFeatureBits { get }
var kBluetoothFeatureSwitchRoles: BluetoothFeatureBits { get }
var kBluetoothFeatureHoldMode: BluetoothFeatureBits { get }
var kBluetoothFeatureSniffMode: BluetoothFeatureBits { get }
var kBluetoothFeatureParkMode: BluetoothFeatureBits { get }
var kBluetoothFeatureRSSI: BluetoothFeatureBits { get }
var kBluetoothFeaturePowerControlRequests: BluetoothFeatureBits { get }
var kBluetoothFeatureChannelQuality: BluetoothFeatureBits { get }
var kBluetoothFeatureSCOLink: BluetoothFeatureBits { get }
var kBluetoothFeatureHV2Packets: BluetoothFeatureBits { get }
var kBluetoothFeatureHV3Packets: BluetoothFeatureBits { get }
var kBluetoothFeatureULawLog: BluetoothFeatureBits { get }
var kBluetoothFeatureALawLog: BluetoothFeatureBits { get }
var kBluetoothFeatureCVSD: BluetoothFeatureBits { get }
var kBluetoothFeaturePagingScheme: BluetoothFeatureBits { get }
var kBluetoothFeaturePowerControl: BluetoothFeatureBits { get }
var kBluetoothFeatureTransparentSCOData: BluetoothFeatureBits { get }
var kBluetoothFeatureFlowControlLagBit0: BluetoothFeatureBits { get }
var kBluetoothFeatureFlowControlLagBit1: BluetoothFeatureBits { get }
var kBluetoothFeatureFlowControlLagBit2: BluetoothFeatureBits { get }
var kBluetoothFeatureBroadcastEncryption: BluetoothFeatureBits { get }
var kBluetoothFeatureScatterMode: BluetoothFeatureBits { get }
var kBluetoothFeatureEnhancedDataRateACL2MbpsMode: BluetoothFeatureBits { get }
var kBluetoothFeatureEnhancedDataRateACL3MbpsMode: BluetoothFeatureBits { get }
var kBluetoothFeatureEnhancedInquiryScan: BluetoothFeatureBits { get }
var kBluetoothFeatureInterlacedInquiryScan: BluetoothFeatureBits { get }
var kBluetoothFeatureInterlacedPageScan: BluetoothFeatureBits { get }
var kBluetoothFeatureRSSIWithInquiryResult: BluetoothFeatureBits { get }
var kBluetoothFeatureExtendedSCOLink: BluetoothFeatureBits { get }
var kBluetoothFeatureEV4Packets: BluetoothFeatureBits { get }
var kBluetoothFeatureEV5Packets: BluetoothFeatureBits { get }
var kBluetoothFeatureAbsenceMasks: BluetoothFeatureBits { get }
var kBluetoothFeatureAFHCapableSlave: BluetoothFeatureBits { get }
var kBluetoothFeatureAFHClassificationSlave: BluetoothFeatureBits { get }
var kBluetoothFeatureAliasAuhentication: BluetoothFeatureBits { get }
var kBluetoothFeatureLESupportedController: BluetoothFeatureBits { get }
var kBluetoothFeature3SlotEnhancedDataRateACLPackets: BluetoothFeatureBits { get }
var kBluetoothFeature5SlotEnhancedDataRateACLPackets: BluetoothFeatureBits { get }
var kBluetoothFeatureSniffSubrating: BluetoothFeatureBits { get }
var kBluetoothFeaturePauseEncryption: BluetoothFeatureBits { get }
var kBluetoothFeatureAFHCapableMaster: BluetoothFeatureBits { get }
var kBluetoothFeatureAFHClassificationMaster: BluetoothFeatureBits { get }
var kBluetoothFeatureEnhancedDataRateeSCO2MbpsMode: BluetoothFeatureBits { get }
var kBluetoothFeatureEnhancedDataRateeSCO3MbpsMode: BluetoothFeatureBits { get }
var kBluetoothFeature3SlotEnhancedDataRateeSCOPackets: BluetoothFeatureBits { get }
var kBluetoothFeatureExtendedInquiryResponse: BluetoothFeatureBits { get }
var kBluetoothFeatureSecureSimplePairing: BluetoothFeatureBits { get }
var kBluetoothFeatureEncapsulatedPDU: BluetoothFeatureBits { get }
var kBluetoothFeatureErroneousDataReporting: BluetoothFeatureBits { get }
var kBluetoothFeatureNonFlushablePacketBoundaryFlag: BluetoothFeatureBits { get }
var kBluetoothFeatureLinkSupervisionTimeoutChangedEvent: BluetoothFeatureBits { get }
var kBluetoothFeatureInquiryTransmissionPowerLevel: BluetoothFeatureBits { get }
var kBluetoothFeatureExtendedFeatures: BluetoothFeatureBits { get }
var kBluetoothFeatureSimpleSecurePairingHostMode: BluetoothFeatureBits { get }
struct BluetoothEventFilterCondition {
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
typealias BluetoothHCIFailedContactCount = UInt16
struct BluetoothHCIFailedContactInfo {
  var count: BluetoothHCIFailedContactCount
  var handle: BluetoothConnectionHandle
  init()
  init(count: BluetoothHCIFailedContactCount, handle: BluetoothConnectionHandle)
}
typealias BluetoothHCIRSSIValue = Int8
struct BluetoothHCIRSSIInfo {
  var handle: BluetoothConnectionHandle
  var RSSIValue: BluetoothHCIRSSIValue
  init()
  init(handle: BluetoothConnectionHandle, RSSIValue: BluetoothHCIRSSIValue)
}
typealias BluetoothHCILinkQuality = UInt8
struct BluetoothHCILinkQualityInfo {
  var handle: BluetoothConnectionHandle
  var qualityValue: BluetoothHCILinkQuality
  init()
  init(handle: BluetoothConnectionHandle, qualityValue: BluetoothHCILinkQuality)
}
typealias BluetoothHCIRole = UInt8
struct BluetoothHCIRoleInfo {
  var role: UInt8
  var handle: BluetoothConnectionHandle
  init()
  init(role: UInt8, handle: BluetoothConnectionHandle)
}
struct BluetoothHCIRoles : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothHCIMasterRole: BluetoothHCIRoles { get }
var kBluetoothHCISlaveRole: BluetoothHCIRoles { get }
typealias BluetoothHCILinkPolicySettings = UInt16
struct BluetoothHCILinkPolicySettingsValues : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kDisableAllLMModes: BluetoothHCILinkPolicySettingsValues { get }
var kEnableMasterSlaveSwitch: BluetoothHCILinkPolicySettingsValues { get }
var kEnableHoldMode: BluetoothHCILinkPolicySettingsValues { get }
var kEnableSniffMode: BluetoothHCILinkPolicySettingsValues { get }
var kEnableParkMode: BluetoothHCILinkPolicySettingsValues { get }
var kReservedForFutureUse: BluetoothHCILinkPolicySettingsValues { get }
struct BluetoothHCILinkPolicySettingsInfo {
  var settings: BluetoothHCILinkPolicySettings
  var handle: BluetoothConnectionHandle
  init()
  init(settings: BluetoothHCILinkPolicySettings, handle: BluetoothConnectionHandle)
}
struct BluetoothHCIQualityOfServiceSetupParams {
  var flags: UInt8
  var serviceType: UInt8
  var tokenRate: UInt32
  var peakBandwidth: UInt32
  var latency: UInt32
  var delayVariation: UInt32
  init()
  init(flags: UInt8, serviceType: UInt8, tokenRate: UInt32, peakBandwidth: UInt32, latency: UInt32, delayVariation: UInt32)
}
struct BluetoothHCISetupSynchronousConnectionParams {
  var transmitBandwidth: UInt32
  var receiveBandwidth: UInt32
  var maxLatency: UInt16
  var voiceSetting: UInt16
  var retransmissionEffort: UInt8
  var packetType: UInt16
  init()
  init(transmitBandwidth: UInt32, receiveBandwidth: UInt32, maxLatency: UInt16, voiceSetting: UInt16, retransmissionEffort: UInt8, packetType: UInt16)
}
struct BluetoothHCIAcceptSynchronousConnectionRequestParams {
  var transmitBandwidth: UInt32
  var receiveBandwidth: UInt32
  var maxLatency: UInt16
  var contentFormat: UInt16
  var retransmissionEffort: UInt8
  var packetType: UInt16
  init()
  init(transmitBandwidth: UInt32, receiveBandwidth: UInt32, maxLatency: UInt16, contentFormat: UInt16, retransmissionEffort: UInt8, packetType: UInt16)
}
typealias BluetoothHCILoopbackMode = UInt8
var kBluetoothHCILoopbackModeOff: Int { get }
var kBluetoothHCILoopbackModeLocal: Int { get }
var kBluetoothHCILoopbackModeRemote: Int { get }
struct BluetoothReadClockInfo {
  var handle: BluetoothConnectionHandle
  var clock: UInt32
  var accuracy: UInt16
  init()
  init(handle: BluetoothConnectionHandle, clock: UInt32, accuracy: UInt16)
}
struct BluetoothHCIEventFlowSpecificationData {
  var connectionHandle: BluetoothConnectionHandle
  var flags: UInt8
  var flowDirection: UInt8
  var serviceType: UInt8
  var tokenRate: UInt32
  var tokenBucketSize: UInt32
  var peakBandwidth: UInt32
  var accessLatency: UInt32
  init()
  init(connectionHandle: BluetoothConnectionHandle, flags: UInt8, flowDirection: UInt8, serviceType: UInt8, tokenRate: UInt32, tokenBucketSize: UInt32, peakBandwidth: UInt32, accessLatency: UInt32)
}
typealias BluetoothHCIOperationID = UInt32
typealias BluetoothHCIEventID = UInt32
typealias BluetoothHCIDataID = UInt32
typealias BluetoothHCISignalID = UInt32
typealias BluetoothHCITransportID = UInt32
typealias BluetoothHCITransportCommandID = UInt32
typealias BluetoothHCIRequestID = UInt32
struct BluetoothHCIVersionInfo {
  var manufacturerName: BluetoothManufacturerName
  var lmpVersion: BluetoothLMPVersion
  var lmpSubVersion: BluetoothLMPSubversion
  var hciVersion: UInt8
  var hciRevision: UInt16
  init()
  init(manufacturerName: BluetoothManufacturerName, lmpVersion: BluetoothLMPVersion, lmpSubVersion: BluetoothLMPSubversion, hciVersion: UInt8, hciRevision: UInt16)
}
struct BluetoothHCIBufferSize {
  var ACLDataPacketLength: UInt16
  var SCODataPacketLength: UInt8
  var totalNumACLDataPackets: UInt16
  var totalNumSCODataPackets: UInt16
  init()
  init(ACLDataPacketLength: UInt16, SCODataPacketLength: UInt8, totalNumACLDataPackets: UInt16, totalNumSCODataPackets: UInt16)
}
struct BluetoothHCILEBufferSize {
  var ACLDataPacketLength: UInt16
  var totalNumACLDataPackets: UInt8
  init()
  init(ACLDataPacketLength: UInt16, totalNumACLDataPackets: UInt8)
}
typealias BluetoothHCIConnectionAcceptTimeout = UInt16
typealias BluetoothHCIPageTimeout = UInt16
struct BluetoothHCITimeoutValues : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kDefaultPageTimeout: BluetoothHCITimeoutValues { get }
typealias BluetoothHCINumLinkKeysDeleted = UInt16
typealias BluetoothHCINumLinkKeysToWrite = UInt8
typealias BluetoothHCIDeleteStoredLinkKeyFlag = UInt8
struct BluetoothHCIDeleteStoredLinkKeyFlags : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kDeleteKeyForSpecifiedDeviceOnly: BluetoothHCIDeleteStoredLinkKeyFlags { get }
var kDeleteAllStoredLinkKeys: BluetoothHCIDeleteStoredLinkKeyFlags { get }
typealias BluetoothHCIReadStoredLinkKeysFlag = UInt8
struct BluetoothHCIReadStoredLinkKeysFlags : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kReturnLinkKeyForSpecifiedDeviceOnly: BluetoothHCIReadStoredLinkKeysFlags { get }
var kReadAllStoredLinkKeys: BluetoothHCIReadStoredLinkKeysFlags { get }
struct BluetoothHCIStoredLinkKeysInfo {
  var numLinkKeysRead: UInt16
  var maxNumLinkKeysAllowedInDevice: UInt16
  init()
  init(numLinkKeysRead: UInt16, maxNumLinkKeysAllowedInDevice: UInt16)
}
typealias BluetoothHCIPageScanMode = UInt8
struct BluetoothHCIPageScanModes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kMandatoryPageScanMode: BluetoothHCIPageScanModes { get }
var kOptionalPageScanMode1: BluetoothHCIPageScanModes { get }
var kOptionalPageScanMode2: BluetoothHCIPageScanModes { get }
var kOptionalPageScanMode3: BluetoothHCIPageScanModes { get }
typealias BluetoothHCIPageScanPeriodMode = UInt8
struct BluetoothHCIPageScanPeriodModes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kP0Mode: BluetoothHCIPageScanPeriodModes { get }
var kP1Mode: BluetoothHCIPageScanPeriodModes { get }
var kP2Mode: BluetoothHCIPageScanPeriodModes { get }
typealias BluetoothHCIPageScanEnableState = UInt8
struct BluetoothHCIPageScanEnableStates : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kNoScansEnabled: BluetoothHCIPageScanEnableStates { get }
var kInquiryScanEnabledPageScanDisabled: BluetoothHCIPageScanEnableStates { get }
var kInquiryScanDisabledPageScanEnabled: BluetoothHCIPageScanEnableStates { get }
var kInquiryScanEnabledPageScanEnabled: BluetoothHCIPageScanEnableStates { get }
struct BluetoothHCIScanActivity {
  var scanInterval: UInt16
  var scanWindow: UInt16
  init()
  init(scanInterval: UInt16, scanWindow: UInt16)
}
struct BluetoothHCIInquiryAccessCode {
  var data: (UInt8, UInt8, UInt8)
  init()
  init(data: (UInt8, UInt8, UInt8))
}
typealias BluetoothHCIInquiryAccessCodeCount = UInt8
struct BluetoothHCICurrentInquiryAccessCodes {
  var count: BluetoothHCIInquiryAccessCodeCount
  var codes: UnsafeMutablePointer<BluetoothHCIInquiryAccessCode>
  init()
  init(count: BluetoothHCIInquiryAccessCodeCount, codes: UnsafeMutablePointer<BluetoothHCIInquiryAccessCode>)
}
var kMaximumNumberOfInquiryAccessCodes: Int { get }
struct BluetoothHCICurrentInquiryAccessCodesForWrite {
  var count: BluetoothHCIInquiryAccessCodeCount
  var codes: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(count: BluetoothHCIInquiryAccessCodeCount, codes: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct BluetoothHCILinkSupervisionTimeout {
  var handle: BluetoothConnectionHandle
  var timeout: UInt16
  init()
  init(handle: BluetoothConnectionHandle, timeout: UInt16)
}
typealias BluetoothHCIFlowControlState = UInt8
struct BluetoothHCISCOFlowControlStates : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kSCOFlowControlDisabled: BluetoothHCISCOFlowControlStates { get }
var kSCOFlowControlEnabled: BluetoothHCISCOFlowControlStates { get }
struct BluetoothHCIGeneralFlowControlStates : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kHostControllerToHostFlowControlOff: BluetoothHCIGeneralFlowControlStates { get }
var kHCIACLDataPacketsOnHCISCODataPacketsOff: BluetoothHCIGeneralFlowControlStates { get }
var kHCIACLDataPacketsOffHCISCODataPacketsOn: BluetoothHCIGeneralFlowControlStates { get }
var kHCIACLDataPacketsOnHCISCODataPacketsOn: BluetoothHCIGeneralFlowControlStates { get }
typealias BluetoothHCITransmitPowerLevel = Int8
typealias BluetoothHCITransmitPowerLevelType = UInt8
struct BluetoothHCITransmitReadPowerLevelTypes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kReadCurrentTransmitPowerLevel: BluetoothHCITransmitReadPowerLevelTypes { get }
var kReadMaximumTransmitPowerLevel: BluetoothHCITransmitReadPowerLevelTypes { get }
typealias BluetoothHCIAFHChannelAssessmentMode = UInt8
struct BluetoothHCIAFHChannelAssessmentModes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kAFHChannelAssessmentModeDisabled: BluetoothHCIAFHChannelAssessmentModes { get }
var kAFHChannelAssessmentModeEnabled: BluetoothHCIAFHChannelAssessmentModes { get }
struct BluetoothHCITransmitPowerLevelInfo {
  var handle: BluetoothConnectionHandle
  var level: BluetoothHCITransmitPowerLevel
  init()
  init(handle: BluetoothConnectionHandle, level: BluetoothHCITransmitPowerLevel)
}
typealias BluetoothHCINumBroadcastRetransmissions = UInt8
typealias BluetoothHCIHoldModeActivity = UInt8
struct BluetoothHCIHoldModeActivityStates : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kMaintainCurrentPowerState: BluetoothHCIHoldModeActivityStates { get }
var kSuspendPageScan: BluetoothHCIHoldModeActivityStates { get }
var kSuspendInquiryScan: BluetoothHCIHoldModeActivityStates { get }
var kSuspendPeriodicInquiries: BluetoothHCIHoldModeActivityStates { get }
typealias BluetoothHCIAuthenticationEnable = UInt8
struct BluetoothHCIAuthentionEnableModes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kAuthenticationDisabled: BluetoothHCIAuthentionEnableModes { get }
var kAuthenticationEnabled: BluetoothHCIAuthentionEnableModes { get }
typealias BluetoothHCIEncryptionMode = UInt8
struct BluetoothHCIEncryptionModes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kEncryptionDisabled: BluetoothHCIEncryptionModes { get }
var kEncryptionOnlyForPointToPointPackets: BluetoothHCIEncryptionModes { get }
var kEncryptionForBothPointToPointAndBroadcastPackets: BluetoothHCIEncryptionModes { get }
typealias BluetoothHCIAutomaticFlushTimeout = UInt16
struct BluetoothHCIAutomaticFlushTimeoutInfo {
  var handle: BluetoothConnectionHandle
  var timeout: BluetoothHCIAutomaticFlushTimeout
  init()
  init(handle: BluetoothConnectionHandle, timeout: BluetoothHCIAutomaticFlushTimeout)
}
var kInfoStringMaxLength: Int32 { get }
typealias BluetoothTransportInfoPtr = UnsafeMutablePointer<BluetoothTransportInfo>
struct BluetoothTransportInfo {
  var productID: UInt32
  var vendorID: UInt32
  var type: UInt32
  var productName: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
  var vendorName: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
  var totalDataBytesSent: UInt64
  var totalSCOBytesSent: UInt64
  var totalDataBytesReceived: UInt64
  var totalSCOBytesReceived: UInt64
  init()
  init(productID: UInt32, vendorID: UInt32, type: UInt32, productName: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8), vendorName: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8), totalDataBytesSent: UInt64, totalSCOBytesSent: UInt64, totalDataBytesReceived: UInt64, totalSCOBytesReceived: UInt64)
}
struct BluetoothTransportTypes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothTransportTypeUSB: BluetoothTransportTypes { get }
var kBluetoothTransportTypePCCard: BluetoothTransportTypes { get }
var kBluetoothTransportTypePCICard: BluetoothTransportTypes { get }
var kBluetoothTransportTypeUART: BluetoothTransportTypes { get }
struct BluetoothHCIInquiryResult {
  var deviceAddress: BluetoothDeviceAddress
  var pageScanRepetitionMode: BluetoothPageScanRepetitionMode
  var pageScanPeriodMode: BluetoothHCIPageScanPeriodMode
  var pageScanMode: BluetoothHCIPageScanMode
  var classOfDevice: BluetoothClassOfDevice
  var clockOffset: BluetoothClockOffset
  init()
  init(deviceAddress: BluetoothDeviceAddress, pageScanRepetitionMode: BluetoothPageScanRepetitionMode, pageScanPeriodMode: BluetoothHCIPageScanPeriodMode, pageScanMode: BluetoothHCIPageScanMode, classOfDevice: BluetoothClassOfDevice, clockOffset: BluetoothClockOffset)
}
var kBluetoothHCIInquiryResultsMaxResults: Int32 { get }
struct BluetoothHCIInquiryResults {
  var results: (BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult)
  var count: IOItemCount
  init()
  init(results: (BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult), count: IOItemCount)
}
struct BluetoothHCIInquiryWithRSSIResult {
  var deviceAddress: BluetoothDeviceAddress
  var pageScanRepetitionMode: BluetoothPageScanRepetitionMode
  var reserved: UInt8
  var classOfDevice: BluetoothClassOfDevice
  var clockOffset: BluetoothClockOffset
  var RSSIValue: BluetoothHCIRSSIValue
  init()
  init(deviceAddress: BluetoothDeviceAddress, pageScanRepetitionMode: BluetoothPageScanRepetitionMode, reserved: UInt8, classOfDevice: BluetoothClassOfDevice, clockOffset: BluetoothClockOffset, RSSIValue: BluetoothHCIRSSIValue)
}
struct BluetoothHCIInquiryWithRSSIResults {
  var results: (BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult)
  var count: IOItemCount
  init()
  init(results: (BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult), count: IOItemCount)
}
typealias BluetoothHCIFECRequired = UInt8
struct BluetoothHCIFECRequiredValues : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothHCIFECRequired: BluetoothHCIFECRequiredValues { get }
var kBluetoothHCIFECNotRequired: BluetoothHCIFECRequiredValues { get }
typealias BluetoothHCIInquiryMode = UInt8
struct BluetoothHCIInquiryModes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothHCIInquiryModeResultFormatStandard: BluetoothHCIInquiryModes { get }
var kBluetoothHCIInquiryModeResultFormatWithRSSI: BluetoothHCIInquiryModes { get }
var kBluetoothHCIInquiryModeResultFormatWithRSSIOrExtendedInquiryResultFormat: BluetoothHCIInquiryModes { get }
typealias BluetoothHCIInquiryScanType = UInt8
struct BluetoothHCIInquiryScanTypes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothHCIInquiryScanTypeStandard: BluetoothHCIInquiryScanTypes { get }
var kBluetoothHCIInquiryScanTypeInterlaced: BluetoothHCIInquiryScanTypes { get }
var kBluetoothHCIInquiryScanTypeReservedStart: BluetoothHCIInquiryScanTypes { get }
var kBluetoothHCIInquiryScanTypeReservedEnd: BluetoothHCIInquiryScanTypes { get }
typealias BluetoothHCIExtendedInquiryResponseDataType = UInt8
struct BluetoothHCIExtendedInquiryResponse {
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct BluetoothHCIReadExtendedInquiryResponseResults {
  var outFECRequired: BluetoothHCIFECRequired
  var extendedInquiryResponse: BluetoothHCIExtendedInquiryResponse
  init()
  init(outFECRequired: BluetoothHCIFECRequired, extendedInquiryResponse: BluetoothHCIExtendedInquiryResponse)
}
struct BluetoothHCIExtendedInquiryResult {
  var numberOfReponses: UInt8
  var deviceAddress: BluetoothDeviceAddress
  var pageScanRepetitionMode: BluetoothPageScanRepetitionMode
  var reserved: UInt8
  var classOfDevice: BluetoothClassOfDevice
  var clockOffset: BluetoothClockOffset
  var RSSIValue: BluetoothHCIRSSIValue
  var extendedInquiryResponse: BluetoothHCIExtendedInquiryResponse
  init()
  init(numberOfReponses: UInt8, deviceAddress: BluetoothDeviceAddress, pageScanRepetitionMode: BluetoothPageScanRepetitionMode, reserved: UInt8, classOfDevice: BluetoothClassOfDevice, clockOffset: BluetoothClockOffset, RSSIValue: BluetoothHCIRSSIValue, extendedInquiryResponse: BluetoothHCIExtendedInquiryResponse)
}
struct BluetoothHCIReadLMPHandleResults {
  var handle: BluetoothConnectionHandle
  var lmp_handle: BluetoothLMPHandle
  var reserved: UInt32
  init()
  init(handle: BluetoothConnectionHandle, lmp_handle: BluetoothLMPHandle, reserved: UInt32)
}
typealias BluetoothHCISimplePairingMode = UInt8
struct BluetoothHCISimplePairingModes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothHCISimplePairingModeNotSet: BluetoothHCISimplePairingModes { get }
var kBluetoothHCISimplePairingModeEnabled: BluetoothHCISimplePairingModes { get }
typealias BluetoothSimplePairingDebugMode = UInt8
struct BluetoothSimplePairingDebugModes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothHCISimplePairingDebugModeDisabled: BluetoothSimplePairingDebugModes { get }
var kBluetoothHCISimplePairingDebugModeEnabled: BluetoothSimplePairingDebugModes { get }
struct BluetoothHCISimplePairingOOBData {
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct BluetoothHCIReadLocalOOBDataResults {
  var hash: BluetoothHCISimplePairingOOBData
  var randomizer: BluetoothHCISimplePairingOOBData
  init()
  init(hash: BluetoothHCISimplePairingOOBData, randomizer: BluetoothHCISimplePairingOOBData)
}
typealias BluetoothIOCapability = UInt8
struct BluetoothIOCapabilities : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothCapabilityTypeDisplayOnly: BluetoothIOCapabilities { get }
var kBluetoothCapabilityTypeDisplayYesNo: BluetoothIOCapabilities { get }
var kBluetoothCapabilityTypeKeyboardOnly: BluetoothIOCapabilities { get }
var kBluetoothCapabilityTypeNoInputNoOutput: BluetoothIOCapabilities { get }
typealias BluetoothOOBDataPresence = UInt8
struct BluetoothOOBDataPresenceValues : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothOOBAuthenticationDataNotPresent: BluetoothOOBDataPresenceValues { get }
var kBluetoothOOBAuthenticationDataFromRemoteDevicePresent: BluetoothOOBDataPresenceValues { get }
typealias BluetoothAuthenticationRequirements = UInt8
struct BluetoothAuthenticationRequirementsValues : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothAuthenticationRequirementsMITMProtectionNotRequired: BluetoothAuthenticationRequirementsValues { get }
var kBluetoothAuthenticationRequirementsMITMProtectionRequired: BluetoothAuthenticationRequirementsValues { get }
var kBluetoothAuthenticationRequirementsMITMProtectionNotRequiredNoBonding: BluetoothAuthenticationRequirementsValues { get }
var kBluetoothAuthenticationRequirementsMITMProtectionRequiredNoBonding: BluetoothAuthenticationRequirementsValues { get }
var kBluetoothAuthenticationRequirementsMITMProtectionNotRequiredDedicatedBonding: BluetoothAuthenticationRequirementsValues { get }
var kBluetoothAuthenticationRequirementsMITMProtectionRequiredDedicatedBonding: BluetoothAuthenticationRequirementsValues { get }
var kBluetoothAuthenticationRequirementsMITMProtectionNotRequiredGeneralBonding: BluetoothAuthenticationRequirementsValues { get }
var kBluetoothAuthenticationRequirementsMITMProtectionRequiredGeneralBonding: BluetoothAuthenticationRequirementsValues { get }
struct BluetoothIOCapabilityResponse {
  var deviceAddress: BluetoothDeviceAddress
  var ioCapability: BluetoothIOCapability
  var OOBDataPresence: BluetoothOOBDataPresence
  var authenticationRequirements: BluetoothAuthenticationRequirements
  init()
  init(deviceAddress: BluetoothDeviceAddress, ioCapability: BluetoothIOCapability, OOBDataPresence: BluetoothOOBDataPresence, authenticationRequirements: BluetoothAuthenticationRequirements)
}
typealias BluetoothPasskey = UInt32
struct BluetoothUserPasskeyNotification {
  var deviceAddress: BluetoothDeviceAddress
  var passkey: BluetoothPasskey
  init()
  init(deviceAddress: BluetoothDeviceAddress, passkey: BluetoothPasskey)
}
typealias BluetoothKeypressNotificationType = UInt8
struct BluetoothKeypressNotificationTypes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothKeypressNotificationTypePasskeyEntryStarted: BluetoothKeypressNotificationTypes { get }
var kBluetoothKeypressNotificationTypePasskeyDigitEntered: BluetoothKeypressNotificationTypes { get }
var kBluetoothKeypressNotificationTypePasskeyDigitErased: BluetoothKeypressNotificationTypes { get }
var kBluetoothKeypressNotificationTypePasskeyCleared: BluetoothKeypressNotificationTypes { get }
var kBluetoothKeypressNotificationTypePasskeyEntryCompleted: BluetoothKeypressNotificationTypes { get }
struct BluetoothKeypressNotification {
  var deviceAddress: BluetoothDeviceAddress
  var notificationType: BluetoothKeypressNotificationType
  init()
  init(deviceAddress: BluetoothDeviceAddress, notificationType: BluetoothKeypressNotificationType)
}
struct BluetoothRemoteHostSupportedFeaturesNotification {
  var deviceAddress: BluetoothDeviceAddress
  var hostSupportedFeatures: BluetoothHCISupportedFeatures
  init()
  init(deviceAddress: BluetoothDeviceAddress, hostSupportedFeatures: BluetoothHCISupportedFeatures)
}
typealias TransmissionPower = Int8
struct BluetoothAFHHostChannelClassification {
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
typealias BluetoothAFHMode = UInt8
struct BluetoothAFHResults {
  var handle: BluetoothConnectionHandle
  var mode: BluetoothAFHMode
  var afhMap: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(handle: BluetoothConnectionHandle, mode: BluetoothAFHMode, afhMap: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
typealias BluetoothNumericValue = UInt32
struct BluetoothUserConfirmationRequest {
  var deviceAddress: BluetoothDeviceAddress
  var numericValue: BluetoothNumericValue
  init()
  init(deviceAddress: BluetoothDeviceAddress, numericValue: BluetoothNumericValue)
}
struct BluetoothHCIEventSimplePairingCompleteResults {
  var deviceAddress: BluetoothDeviceAddress
  init()
  init(deviceAddress: BluetoothDeviceAddress)
}
var kBluetoothHCICommandPacketHeaderSize: Int { get }
var kBluetoothHCICommandPacketMaxDataSize: Int { get }
var kBluetoothHCIMaxCommandPacketSize: Int { get }
var kBluetoothHCIEventPacketHeaderSize: Int { get }
var kBluetoothHCIEventPacketMaxDataSize: Int { get }
var kBluetoothHCIMaxEventPacketSize: Int { get }
var kBluetoothHCIDataPacketHeaderSize: Int { get }
var kBluetoothHCIDataPacketMaxDataSize: Int { get }
var kBluetoothHCIMaxDataPacketSize: Int { get }
typealias BluetoothHCIEventCode = UInt8
typealias BluetoothLinkType = UInt8
struct BluetoothLinkTypes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothSCOConnection: BluetoothLinkTypes { get }
var kBluetoothACLConnection: BluetoothLinkTypes { get }
var kBluetoothESCOConnection: BluetoothLinkTypes { get }
var kBluetoothLinkTypeNone: BluetoothLinkTypes { get }
typealias BluetoothHCIContentFormat = UInt16
typealias BluetoothHCIVoiceSetting = UInt16
var kBluetoothVoiceSettingInputCodingMask: Int { get }
var kBluetoothVoiceSettingInputCodingLinearInputCoding: Int { get }
var kBluetoothVoiceSettingInputCodingULawInputCoding: Int { get }
var kBluetoothVoiceSettingInputCodingALawInputCoding: Int { get }
var kBluetoothVoiceSettingInputDataFormatMask: Int { get }
var kBluetoothVoiceSettingInputDataFormat1sComplement: Int { get }
var kBluetoothVoiceSettingInputDataFormat2sComplement: Int { get }
var kBluetoothVoiceSettingInputDataFormatSignMagnitude: Int { get }
var kBluetoothVoiceSettingInputDataFormatUnsigned: Int { get }
var kBluetoothVoiceSettingInputSampleSizeMask: Int { get }
var kBluetoothVoiceSettingInputSampleSize8Bit: Int { get }
var kBluetoothVoiceSettingInputSampleSize16Bit: Int { get }
var kBluetoothVoiceSettingPCMBitPositionMask: Int { get }
var kBluetoothVoiceSettingAirCodingFormatMask: Int { get }
var kBluetoothVoiceSettingAirCodingFormatCVSD: Int { get }
var kBluetoothVoiceSettingAirCodingFormatULaw: Int { get }
var kBluetoothVoiceSettingAirCodingFormatALaw: Int { get }
var kBluetoothVoiceSettingAirCodingFormatTransparentData: Int { get }
typealias BluetoothHCISupportedIAC = UInt8
typealias BluetoothHCITransmitBandwidth = UInt32
typealias BluetoothHCIReceiveBandwidth = UInt32
typealias BluetoothHCIMaxLatency = UInt16
typealias BluetoothHCIRetransmissionEffort = UInt8
struct BluetoothHCIRetransmissionEffortTypes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kHCIRetransmissionEffortTypeNone: BluetoothHCIRetransmissionEffortTypes { get }
var kHCIRetransmissionEffortTypeAtLeastOneAndOptimizeForPower: BluetoothHCIRetransmissionEffortTypes { get }
var kHCIRetransmissionEffortTypeAtLeastOneAndOptimizeLinkQuality: BluetoothHCIRetransmissionEffortTypes { get }
var kHCIRetransmissionEffortTypeDontCare: BluetoothHCIRetransmissionEffortTypes { get }
typealias BluetoothAirMode = UInt8
var kBluetoothAirModeULawLog: Int { get }
var kBluetoothAirModeALawLog: Int { get }
var kBluetoothAirModeCVSD: Int { get }
var kBluetoothAirModeTransparentData: Int { get }
struct BluetoothSynchronousConnectionInfo {
  var transmitBandWidth: BluetoothHCITransmitBandwidth
  var receiveBandWidth: BluetoothHCIReceiveBandwidth
  var maxLatency: BluetoothHCIMaxLatency
  var voiceSetting: BluetoothHCIVoiceSetting
  var retransmissionEffort: BluetoothHCIRetransmissionEffort
  var packetType: BluetoothPacketType
  init()
  init(transmitBandWidth: BluetoothHCITransmitBandwidth, receiveBandWidth: BluetoothHCIReceiveBandwidth, maxLatency: BluetoothHCIMaxLatency, voiceSetting: BluetoothHCIVoiceSetting, retransmissionEffort: BluetoothHCIRetransmissionEffort, packetType: BluetoothPacketType)
}
struct BluetoothHCIEventSynchronousConnectionCompleteResults {
  var connectionHandle: BluetoothConnectionHandle
  var deviceAddress: BluetoothDeviceAddress
  var linkType: BluetoothLinkType
  var transmissionInterval: UInt8
  var retransmissionWindow: UInt8
  var receivePacketLength: UInt16
  var transmitPacketLength: UInt16
  var airMode: BluetoothAirMode
  init()
  init(connectionHandle: BluetoothConnectionHandle, deviceAddress: BluetoothDeviceAddress, linkType: BluetoothLinkType, transmissionInterval: UInt8, retransmissionWindow: UInt8, receivePacketLength: UInt16, transmitPacketLength: UInt16, airMode: BluetoothAirMode)
}
struct BluetoothHCIEventSynchronousConnectionChangedResults {
  var connectionHandle: BluetoothConnectionHandle
  var transmissionInterval: UInt8
  var retransmissionWindow: UInt8
  var receivePacketLength: UInt16
  var transmitPacketLength: UInt16
  init()
  init(connectionHandle: BluetoothConnectionHandle, transmissionInterval: UInt8, retransmissionWindow: UInt8, receivePacketLength: UInt16, transmitPacketLength: UInt16)
}
typealias BluetoothHCIStatus = UInt8
typealias BluetoothHCIEventStatus = UInt8
var kBluetoothHCIEventInquiryComplete: Int { get }
var kBluetoothHCIEventInquiryResult: Int { get }
var kBluetoothHCIEventConnectionComplete: Int { get }
var kBluetoothHCIEventConnectionRequest: Int { get }
var kBluetoothHCIEventDisconnectionComplete: Int { get }
var kBluetoothHCIEventAuthenticationComplete: Int { get }
var kBluetoothHCIEventRemoteNameRequestComplete: Int { get }
var kBluetoothHCIEventEncryptionChange: Int { get }
var kBluetoothHCIEventChangeConnectionLinkKeyComplete: Int { get }
var kBluetoothHCIEventMasterLinkKeyComplete: Int { get }
var kBluetoothHCIEventReadRemoteSupportedFeaturesComplete: Int { get }
var kBluetoothHCIEventReadRemoteVersionInformationComplete: Int { get }
var kBluetoothHCIEventQoSSetupComplete: Int { get }
var kBluetoothHCIEventCommandComplete: Int { get }
var kBluetoothHCIEventCommandStatus: Int { get }
var kBluetoothHCIEventHardwareError: Int { get }
var kBluetoothHCIEventFlushOccurred: Int { get }
var kBluetoothHCIEventRoleChange: Int { get }
var kBluetoothHCIEventNumberOfCompletedPackets: Int { get }
var kBluetoothHCIEventModeChange: Int { get }
var kBluetoothHCIEventReturnLinkKeys: Int { get }
var kBluetoothHCIEventPINCodeRequest: Int { get }
var kBluetoothHCIEventLinkKeyRequest: Int { get }
var kBluetoothHCIEventLinkKeyNotification: Int { get }
var kBluetoothHCIEventLoopbackCommand: Int { get }
var kBluetoothHCIEventDataBufferOverflow: Int { get }
var kBluetoothHCIEventMaxSlotsChange: Int { get }
var kBluetoothHCIEventReadClockOffsetComplete: Int { get }
var kBluetoothHCIEventConnectionPacketType: Int { get }
var kBluetoothHCIEventQoSViolation: Int { get }
var kBluetoothHCIEventPageScanModeChange: Int { get }
var kBluetoothHCIEventPageScanRepetitionModeChange: Int { get }
var kBluetoothHCIEventFlowSpecificationComplete: Int { get }
var kBluetoothHCIEventInquiryResultWithRSSI: Int { get }
var kBluetoothHCIEventReadRemoteExtendedFeaturesComplete: Int { get }
var kBluetoothHCIEventSynchronousConnectionComplete: Int { get }
var kBluetoothHCIEventSynchronousConnectionChanged: Int { get }
var kBluetoothHCIEventSniffSubrating: Int { get }
var kBluetoothHCIEventExtendedInquiryResult: Int { get }
var kBluetoothHCIEventEncryptionKeyRefreshComplete: Int { get }
var kBluetoothHCIEventIOCapabilityRequest: Int { get }
var kBluetoothHCIEventIOCapabilityResponse: Int { get }
var kBluetoothHCIEventUserConfirmationRequest: Int { get }
var kBluetoothHCIEventUserPasskeyRequest: Int { get }
var kBluetoothHCIEventRemoteOOBDataRequest: Int { get }
var kBluetoothHCIEventSimplePairingComplete: Int { get }
var kBluetoothHCIEventLinkSupervisionTimeoutChanged: Int { get }
var kBluetoothHCIEventEnhancedFlushComplete: Int { get }
var kBluetoothHCIEventUserPasskeyNotification: Int { get }
var kBluetoothHCIEventKeypressNotification: Int { get }
var kBluetoothHCIEventRemoteHostSupportedFeaturesNotification: Int { get }
var kBluetoothHCIEventLEMetaEvent: Int { get }
var kBluetoothHCISubEventLEConnectionComplete: Int { get }
var kBluetoothHCISubEventLEAdvertisingReport: Int { get }
var kBluetoothHCISubEventLEConnectionUpdateComplete: Int { get }
var kBluetoothHCISubEventLEReadRemoteUsedFeaturesComplete: Int { get }
var kBluetoothHCISubEventLELongTermKeyRequest: Int { get }
var kBluetoothHCIEventPhysicalLinkComplete: Int { get }
var kBluetoothHCIEventChannelSelected: Int { get }
var kBluetoothHCIEventDisconnectionPhysicalLinkComplete: Int { get }
var kBluetoothHCIEventPhysicalLinkLossEarlyWarning: Int { get }
var kBluetoothHCIEventPhysicalLinkRecovery: Int { get }
var kBluetoothHCIEventLogicalLinkComplete: Int { get }
var kBluetoothHCIEventDisconnectionLogicalLinkComplete: Int { get }
var kBluetoothHCIEventFlowSpecModifyComplete: Int { get }
var kBluetoothHCIEventNumberOfCompletedDataBlocks: Int { get }
var kBluetoothHCIEventShortRangeModeChangeComplete: Int { get }
var kBluetoothHCIEventAMPStatusChange: Int { get }
var kBluetoothHCIEventAMPStartTest: Int { get }
var kBluetoothHCIEventAMPTestEnd: Int { get }
var kBluetoothHCIEventAMPReceiverReport: Int { get }
var kBluetoothHCIEventLogoTesting: Int { get }
var kBluetoothHCIEventVendorSpecific: Int { get }
typealias BluetoothHCIEventMask = UInt64
var kBluetoothHCIEventMaskLEDefault64Bit: Int64 { get }
var kBluetoothHCIEventMaskDefault64Bit: Int64 { get }
var kBluetoothHCIEventMaskAll64Bit: UInt64 { get }
var kBluetoothHCIEventMaskFlowSpecificationCompleteEvent: Int64 { get }
var kBluetoothHCIEventMaskInquiryResultWithRSSIEvent: Int64 { get }
var kBluetoothHCIEventMaskReadRemoteExtendedFeaturesCompleteEvent: Int64 { get }
var kBluetoothHCIEventMaskSynchronousConnectionCompleteEvent: Int64 { get }
var kBluetoothHCIEventMaskSynchronousConnectionChangedEvent: Int64 { get }
var kBluetoothHCIEventMaskSniffSubratingEvent: Int64 { get }
var kBluetoothHCIEventMaskExtendedInquiryResultEvent: Int64 { get }
var kBluetoothHCIEventMaskEncryptionChangeEvent: Int64 { get }
var kBluetoothHCIEventMaskEncryptionKeyRefreshCompleteEvent: Int64 { get }
var kBluetoothHCIEventMaskLinkSupervisionTimeoutChangedEvent: Int64 { get }
var kBluetoothHCIEventMaskEnhancedFlushCompleteEvent: Int64 { get }
var kBluetoothHCIEventMaskIOCapabilityRequestEvent: Int64 { get }
var kBluetoothHCIEventMaskIOCapabilityRequestReplyEvent: Int64 { get }
var kBluetoothHCIEventMaskUserConfirmationRequestEvent: Int64 { get }
var kBluetoothHCIEventMaskUserPasskeyRequestEvent: Int64 { get }
var kBluetoothHCIEventMaskRemoteOOBDataRequestEvent: Int64 { get }
var kBluetoothHCIEventMaskSimplePairingCompleteEvent: Int64 { get }
var kBluetoothHCIEvnetMaskLinkSupervisionTimeoutChangedEvent: Int64 { get }
var kBluetoothHCIEvnetMaskEnhancedFlushCompleteEvent: Int64 { get }
var kBluetoothHCIEventMaskUserPasskeyNotificationEvent: Int64 { get }
var kBluetoothHCIEventMaskKeypressNotificationEvent: Int64 { get }
var kBluetoothHCIEventMaskRemoteHostSupportedFeaturesNotificationEvent: Int64 { get }
var kBluetoothHCIEventMaskLEMetaEvent: Int64 { get }
var kBluetoothHCIEventMaskNone: UInt32 { get }
var kBluetoothHCIEventMaskInquiryComplete: UInt32 { get }
var kBluetoothHCIEventMaskInquiryResult: UInt32 { get }
var kBluetoothHCIEventMaskConnectionComplete: UInt32 { get }
var kBluetoothHCIEventMaskConnectionRequest: UInt32 { get }
var kBluetoothHCIEventMaskDisconnectionComplete: UInt32 { get }
var kBluetoothHCIEventMaskAuthenticationComplete: UInt32 { get }
var kBluetoothHCIEventMaskRemoteNameRequestComplete: UInt32 { get }
var kBluetoothHCIEventMaskEncryptionChange: UInt32 { get }
var kBluetoothHCIEventMaskChangeConnectionLinkKeyComplete: UInt32 { get }
var kBluetoothHCIEventMaskMasterLinkKeyComplete: UInt32 { get }
var kBluetoothHCIEventMaskReadRemoteSupportedFeaturesComplete: UInt32 { get }
var kBluetoothHCIEventMaskReadRemoteVersionInformationComplete: UInt32 { get }
var kBluetoothHCIEventMaskQoSSetupComplete: UInt32 { get }
var kBluetoothHCIEventMaskCommandComplete: UInt32 { get }
var kBluetoothHCIEventMaskCommandStatus: UInt32 { get }
var kBluetoothHCIEventMaskHardwareError: UInt32 { get }
var kBluetoothHCIEventMaskFlushOccurred: UInt32 { get }
var kBluetoothHCIEventMaskRoleChange: UInt32 { get }
var kBluetoothHCIEventMaskNumberOfCompletedPackets: UInt32 { get }
var kBluetoothHCIEventMaskModeChange: UInt32 { get }
var kBluetoothHCIEventMaskReturnLinkKeys: UInt32 { get }
var kBluetoothHCIEventMaskPINCodeRequest: UInt32 { get }
var kBluetoothHCIEventMaskLinkKeyRequest: UInt32 { get }
var kBluetoothHCIEventMaskLinkKeyNotification: UInt32 { get }
var kBluetoothHCIEventMaskLoopbackCommand: UInt32 { get }
var kBluetoothHCIEventMaskDataBufferOverflow: UInt32 { get }
var kBluetoothHCIEventMaskMaxSlotsChange: UInt32 { get }
var kBluetoothHCIEventMaskReadClockOffsetComplete: UInt32 { get }
var kBluetoothHCIEventMaskConnectionPacketTypeChanged: UInt32 { get }
var kBluetoothHCIEventMaskQoSViolation: UInt32 { get }
var kBluetoothHCIEventMaskPageScanModeChange: UInt32 { get }
var kBluetoothHCIEventMaskPageScanRepetitionModeChange: UInt32 { get }
var kBluetoothHCIEventMaskAll: UInt32 { get }
var kBluetoothHCIEventMaskDefault: UInt32 { get }
struct BluetoothHCIEventConnectionCompleteResults {
  var connectionHandle: BluetoothConnectionHandle
  var deviceAddress: BluetoothDeviceAddress
  var linkType: BluetoothLinkType
  var encryptionMode: BluetoothHCIEncryptionMode
  init()
  init(connectionHandle: BluetoothConnectionHandle, deviceAddress: BluetoothDeviceAddress, linkType: BluetoothLinkType, encryptionMode: BluetoothHCIEncryptionMode)
}
struct BluetoothHCIEventLEConnectionCompleteResults {
  var connectionHandle: BluetoothConnectionHandle
  var role: UInt8
  var peerAddressType: UInt8
  var peerAddress: BluetoothDeviceAddress
  var connInterval: UInt16
  var connLatency: UInt16
  var supervisionTimeout: UInt16
  var masterClockAccuracy: UInt8
  init()
  init(connectionHandle: BluetoothConnectionHandle, role: UInt8, peerAddressType: UInt8, peerAddress: BluetoothDeviceAddress, connInterval: UInt16, connLatency: UInt16, supervisionTimeout: UInt16, masterClockAccuracy: UInt8)
}
struct BluetoothHCIEventLEConnectionUpdateCompleteResults {
  var connectionHandle: BluetoothConnectionHandle
  var connInterval: UInt16
  var connLatency: UInt16
  var supervisionTimeout: UInt16
  init()
  init(connectionHandle: BluetoothConnectionHandle, connInterval: UInt16, connLatency: UInt16, supervisionTimeout: UInt16)
}
struct BluetoothHCIEventDisconnectionCompleteResults {
  var connectionHandle: BluetoothConnectionHandle
  var reason: BluetoothReasonCode
  init()
  init(connectionHandle: BluetoothConnectionHandle, reason: BluetoothReasonCode)
}
struct BluetoothHCIEventReadSupportedFeaturesResults {
  var connectionHandle: BluetoothConnectionHandle
  var supportedFeatures: BluetoothHCISupportedFeatures
  init()
  init(connectionHandle: BluetoothConnectionHandle, supportedFeatures: BluetoothHCISupportedFeatures)
}
struct BluetoothHCIEventReadExtendedFeaturesResults {
  var connectionHandle: BluetoothConnectionHandle
  var supportedFeaturesInfo: BluetoothHCIExtendedFeaturesInfo
  init()
  init(connectionHandle: BluetoothConnectionHandle, supportedFeaturesInfo: BluetoothHCIExtendedFeaturesInfo)
}
struct BluetoothHCIEventReadRemoteVersionInfoResults {
  var connectionHandle: BluetoothConnectionHandle
  var lmpVersion: BluetoothLMPVersion
  var manufacturerName: BluetoothManufacturerName
  var lmpSubversion: BluetoothLMPSubversion
  init()
  init(connectionHandle: BluetoothConnectionHandle, lmpVersion: BluetoothLMPVersion, manufacturerName: BluetoothManufacturerName, lmpSubversion: BluetoothLMPSubversion)
}
struct BluetoothHCIEventRemoteNameRequestResults {
  var deviceAddress: BluetoothDeviceAddress
  var deviceName: BluetoothDeviceName
  init()
  init(deviceAddress: BluetoothDeviceAddress, deviceName: BluetoothDeviceName)
}
struct BluetoothHCIEventReadClockOffsetResults {
  var connectionHandle: BluetoothConnectionHandle
  var clockOffset: BluetoothClockOffset
  init()
  init(connectionHandle: BluetoothConnectionHandle, clockOffset: BluetoothClockOffset)
}
struct BluetoothHCIEventConnectionRequestResults {
  var deviceAddress: BluetoothDeviceAddress
  var classOfDevice: BluetoothClassOfDevice
  var linkType: BluetoothLinkType
  init()
  init(deviceAddress: BluetoothDeviceAddress, classOfDevice: BluetoothClassOfDevice, linkType: BluetoothLinkType)
}
struct BluetoothHCIEventLinkKeyNotificationResults {
  var deviceAddress: BluetoothDeviceAddress
  var linkKey: BluetoothKey
  var keyType: BluetoothKeyType
  init()
  init(deviceAddress: BluetoothDeviceAddress, linkKey: BluetoothKey, keyType: BluetoothKeyType)
}
struct BluetoothHCIEventMaxSlotsChangeResults {
  var connectionHandle: BluetoothConnectionHandle
  var maxSlots: BluetoothMaxSlots
  init()
  init(connectionHandle: BluetoothConnectionHandle, maxSlots: BluetoothMaxSlots)
}
struct BluetoothHCIEventModeChangeResults {
  var connectionHandle: BluetoothConnectionHandle
  var mode: BluetoothHCIConnectionMode
  var modeInterval: BluetoothHCIModeInterval
  init()
  init(connectionHandle: BluetoothConnectionHandle, mode: BluetoothHCIConnectionMode, modeInterval: BluetoothHCIModeInterval)
}
struct BluetoothHCIEventReturnLinkKeysResults {
  var numLinkKeys: UInt8
  init()
}
struct BluetoothHCIEventAuthenticationCompleteResults {
  var connectionHandle: BluetoothConnectionHandle
  init()
  init(connectionHandle: BluetoothConnectionHandle)
}
struct BluetoothHCIEventEncryptionChangeResults {
  var connectionHandle: BluetoothConnectionHandle
  var enable: BluetoothEncryptionEnable
  init()
  init(connectionHandle: BluetoothConnectionHandle, enable: BluetoothEncryptionEnable)
}
struct BluetoothHCIEventChangeConnectionLinkKeyCompleteResults {
  var connectionHandle: BluetoothConnectionHandle
  init()
  init(connectionHandle: BluetoothConnectionHandle)
}
struct BluetoothHCIEventMasterLinkKeyCompleteResults {
  var connectionHandle: BluetoothConnectionHandle
  var keyFlag: BluetoothKeyFlag
  init()
  init(connectionHandle: BluetoothConnectionHandle, keyFlag: BluetoothKeyFlag)
}
struct BluetoothHCIEventQoSSetupCompleteResults {
  var connectionHandle: BluetoothConnectionHandle
  var setupParams: BluetoothHCIQualityOfServiceSetupParams
  init()
  init(connectionHandle: BluetoothConnectionHandle, setupParams: BluetoothHCIQualityOfServiceSetupParams)
}
struct BluetoothHCIEventHardwareErrorResults {
  var error: BluetoothHCIStatus
  init()
  init(error: BluetoothHCIStatus)
}
struct BluetoothHCIEventFlushOccurredResults {
  var connectionHandle: BluetoothConnectionHandle
  init()
  init(connectionHandle: BluetoothConnectionHandle)
}
struct BluetoothHCIEventRoleChangeResults {
  var connectionHandle: BluetoothConnectionHandle
  var deviceAddress: BluetoothDeviceAddress
  var role: BluetoothRole
  init()
  init(connectionHandle: BluetoothConnectionHandle, deviceAddress: BluetoothDeviceAddress, role: BluetoothRole)
}
struct BluetoothHCIEventDataBufferOverflowResults {
  var linkType: BluetoothLinkType
  init()
  init(linkType: BluetoothLinkType)
}
struct BluetoothHCIEventConnectionPacketTypeResults {
  var connectionHandle: BluetoothConnectionHandle
  var packetType: BluetoothPacketType
  init()
  init(connectionHandle: BluetoothConnectionHandle, packetType: BluetoothPacketType)
}
struct BluetoothHCIEventReadRemoteSupportedFeaturesResults {
  var error: BluetoothHCIStatus
  var connectionHandle: BluetoothConnectionHandle
  var lmpFeatures: BluetoothHCISupportedFeatures
  init()
  init(error: BluetoothHCIStatus, connectionHandle: BluetoothConnectionHandle, lmpFeatures: BluetoothHCISupportedFeatures)
}
struct BluetoothHCIEventReadRemoteExtendedFeaturesResults {
  var error: BluetoothHCIStatus
  var connectionHandle: BluetoothConnectionHandle
  var page: BluetoothHCIPageNumber
  var maxPage: BluetoothHCIPageNumber
  var lmpFeatures: BluetoothHCISupportedFeatures
  init()
  init(error: BluetoothHCIStatus, connectionHandle: BluetoothConnectionHandle, page: BluetoothHCIPageNumber, maxPage: BluetoothHCIPageNumber, lmpFeatures: BluetoothHCISupportedFeatures)
}
struct BluetoothHCIEventQoSViolationResults {
  var connectionHandle: BluetoothConnectionHandle
  init()
  init(connectionHandle: BluetoothConnectionHandle)
}
struct BluetoothHCIEventPageScanModeChangeResults {
  var deviceAddress: BluetoothDeviceAddress
  var pageScanMode: BluetoothPageScanMode
  init()
  init(deviceAddress: BluetoothDeviceAddress, pageScanMode: BluetoothPageScanMode)
}
struct BluetoothHCIEventPageScanRepetitionModeChangeResults {
  var deviceAddress: BluetoothDeviceAddress
  var pageScanRepetitionMode: BluetoothPageScanRepetitionMode
  init()
  init(deviceAddress: BluetoothDeviceAddress, pageScanRepetitionMode: BluetoothPageScanRepetitionMode)
}
struct BluetoothHCIEventVendorSpecificResults {
  var length: UInt8
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(length: UInt8, data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct BluetoothHCIEventEncryptionKeyRefreshCompleteResults {
  var connectionHandle: BluetoothConnectionHandle
  init()
  init(connectionHandle: BluetoothConnectionHandle)
}
struct BluetoothHCIEventSniffSubratingResults {
  var connectionHandle: BluetoothConnectionHandle
  var maxTransmitLatency: UInt16
  var maxReceiveLatency: UInt16
  var minRemoteTimeout: UInt16
  var minLocalTimeout: UInt16
  init()
  init(connectionHandle: BluetoothConnectionHandle, maxTransmitLatency: UInt16, maxReceiveLatency: UInt16, minRemoteTimeout: UInt16, minLocalTimeout: UInt16)
}
struct BluetoothHCIEventLEMetaResults {
  var length: UInt8
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(length: UInt8, data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct BluetoothHCIEventLELongTermKeyRequestResults {
  var connectionHandle: BluetoothConnectionHandle
  var randomNumber: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  var ediv: UInt16
  init()
  init(connectionHandle: BluetoothConnectionHandle, randomNumber: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), ediv: UInt16)
}
struct BluetoothHCIRequestCallbackInfo {
  var userCallback: mach_vm_address_t
  var userRefCon: mach_vm_address_t
  var internalRefCon: mach_vm_address_t
  var asyncIDRefCon: mach_vm_address_t
  var reserved: mach_vm_address_t
  init()
  init(userCallback: mach_vm_address_t, userRefCon: mach_vm_address_t, internalRefCon: mach_vm_address_t, asyncIDRefCon: mach_vm_address_t, reserved: mach_vm_address_t)
}
var kBluetoothHCIErrorSuccess: Int { get }
var kBluetoothHCIErrorUnknownHCICommand: Int { get }
var kBluetoothHCIErrorNoConnection: Int { get }
var kBluetoothHCIErrorHardwareFailure: Int { get }
var kBluetoothHCIErrorPageTimeout: Int { get }
var kBluetoothHCIErrorAuthenticationFailure: Int { get }
var kBluetoothHCIErrorKeyMissing: Int { get }
var kBluetoothHCIErrorMemoryFull: Int { get }
var kBluetoothHCIErrorConnectionTimeout: Int { get }
var kBluetoothHCIErrorMaxNumberOfConnections: Int { get }
var kBluetoothHCIErrorMaxNumberOfSCOConnectionsToADevice: Int { get }
var kBluetoothHCIErrorACLConnectionAlreadyExists: Int { get }
var kBluetoothHCIErrorCommandDisallowed: Int { get }
var kBluetoothHCIErrorHostRejectedLimitedResources: Int { get }
var kBluetoothHCIErrorHostRejectedSecurityReasons: Int { get }
var kBluetoothHCIErrorHostRejectedRemoteDeviceIsPersonal: Int { get }
var kBluetoothHCIErrorHostTimeout: Int { get }
var kBluetoothHCIErrorUnsupportedFeatureOrParameterValue: Int { get }
var kBluetoothHCIErrorInvalidHCICommandParameters: Int { get }
var kBluetoothHCIErrorOtherEndTerminatedConnectionUserEnded: Int { get }
var kBluetoothHCIErrorOtherEndTerminatedConnectionLowResources: Int { get }
var kBluetoothHCIErrorOtherEndTerminatedConnectionAboutToPowerOff: Int { get }
var kBluetoothHCIErrorConnectionTerminatedByLocalHost: Int { get }
var kBluetoothHCIErrorRepeatedAttempts: Int { get }
var kBluetoothHCIErrorPairingNotAllowed: Int { get }
var kBluetoothHCIErrorUnknownLMPPDU: Int { get }
var kBluetoothHCIErrorUnsupportedRemoteFeature: Int { get }
var kBluetoothHCIErrorSCOOffsetRejected: Int { get }
var kBluetoothHCIErrorSCOIntervalRejected: Int { get }
var kBluetoothHCIErrorSCOAirModeRejected: Int { get }
var kBluetoothHCIErrorInvalidLMPParameters: Int { get }
var kBluetoothHCIErrorUnspecifiedError: Int { get }
var kBluetoothHCIErrorUnsupportedLMPParameterValue: Int { get }
var kBluetoothHCIErrorRoleChangeNotAllowed: Int { get }
var kBluetoothHCIErrorLMPResponseTimeout: Int { get }
var kBluetoothHCIErrorLMPErrorTransactionCollision: Int { get }
var kBluetoothHCIErrorLMPPDUNotAllowed: Int { get }
var kBluetoothHCIErrorEncryptionModeNotAcceptable: Int { get }
var kBluetoothHCIErrorUnitKeyUsed: Int { get }
var kBluetoothHCIErrorQoSNotSupported: Int { get }
var kBluetoothHCIErrorInstantPassed: Int { get }
var kBluetoothHCIErrorPairingWithUnitKeyNotSupported: Int { get }
var kBluetoothHCIErrorHostRejectedUnacceptableDeviceAddress: Int { get }
var kBluetoothHCIErrorDifferentTransactionCollision: Int { get }
var kBluetoothHCIErrorQoSUnacceptableParameter: Int { get }
var kBluetoothHCIErrorQoSRejected: Int { get }
var kBluetoothHCIErrorChannelClassificationNotSupported: Int { get }
var kBluetoothHCIErrorInsufficientSecurity: Int { get }
var kBluetoothHCIErrorParameterOutOfMandatoryRange: Int { get }
var kBluetoothHCIErrorRoleSwitchPending: Int { get }
var kBluetoothHCIErrorReservedSlotViolation: Int { get }
var kBluetoothHCIErrorRoleSwitchFailed: Int { get }
var kBluetoothHCIErrorExtendedInquiryResponseTooLarge: Int { get }
var kBluetoothHCIErrorSecureSimplePairingNotSupportedByHost: Int { get }
var kBluetoothHCIErrorHostBusyPairing: Int { get }
var kBluetoothHCIErrorConnectionRejectedDueToNoSuitableChannelFound: Int { get }
var kBluetoothHCIErrorControllerBusy: Int { get }
var kBluetoothHCIErrorUnacceptableConnectionInterval: Int { get }
var kBluetoothHCIErrorDirectedAdvertisingTimeout: Int { get }
var kBluetoothHCIErrorConnectionTerminatedDueToMICFailure: Int { get }
var kBluetoothHCIErrorConnectionFailedToBeEstablished: Int { get }
var kBluetoothHCIErrorMACConnectionFailed: Int { get }
var kBluetoothHCIErrorMax: Int { get }
struct BluetoothHCIPowerState : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothHCIPowerStateON: BluetoothHCIPowerState { get }
var kBluetoothHCIPowerStateOFF: BluetoothHCIPowerState { get }
var kBluetoothHCIPowerStateUnintialized: BluetoothHCIPowerState { get }
var kBluetoothHCIErrorPowerIsOFF: Int { get }
var kBluetoothHCITransportUSBClassCode: Int { get }
var kBluetoothHCITransportUSBSubClassCode: Int { get }
var kBluetoothHCITransportUSBProtocolCode: Int { get }
var kBluetoothL2CAPTCIEventIDReserved: Int { get }
var kBluetoothL2CAPTCIEventIDL2CA_ConnectInd: Int { get }
var kBluetoothL2CAPTCIEventIDL2CA_ConfigInd: Int { get }
var kBluetoothL2CAPTCIEventIDL2CA_DisconnectInd: Int { get }
var kBluetoothL2CAPTCIEventIDL2CA_QoSViolationInd: Int { get }
var kBluetoothL2CAPTCIEventIDL2CA_TimeOutInd: Int { get }
var kBluetoothL2CAPTCICommandReserved: Int { get }
var kBluetoothL2CAPTCICommandL2CA_ConnectReq: Int { get }
var kBluetoothL2CAPTCICommandL2CA_DisconnectReq: Int { get }
var kBluetoothL2CAPTCICommandL2CA_ConfigReq: Int { get }
var kBluetoothL2CAPTCICommandL2CA_DisableCLT: Int { get }
var kBluetoothL2CAPTCICommandL2CA_EnableCLT: Int { get }
var kBluetoothL2CAPTCICommandL2CA_GroupCreate: Int { get }
var kBluetoothL2CAPTCICommandL2CA_GroupClose: Int { get }
var kBluetoothL2CAPTCICommandL2CA_GroupAddMember: Int { get }
var kBluetoothL2CAPTCICommandL2CA_GroupRemoveMember: Int { get }
var kBluetoothL2CAPTCICommandL2CA_GroupMembership: Int { get }
var kBluetoothL2CAPTCICommandL2CA_WriteData: Int { get }
var kBluetoothL2CAPTCICommandL2CA_ReadData: Int { get }
var kBluetoothL2CAPTCICommandL2CA_Ping: Int { get }
var kBluetoothL2CAPTCICommandL2CA_GetInfo: Int { get }
var kBluetoothL2CAPTCICommandL2CA_Reserved1: Int { get }
var kBluetoothL2CAPTCICommandL2CA_Reserved2: Int { get }
var kBluetoothL2CAPTCICommandL2CA_ConnectResp: Int { get }
var kBluetoothL2CAPTCICommandL2CA_DisconnectResp: Int { get }
var kBluetoothL2CAPTCICommandL2CA_ConfigResp: Int { get }
var kMaxChannelIDPerSide: Int32 { get }
typealias BluetoothRFCOMMChannelID = UInt8
typealias BluetoothRFCOMMMTU = UInt16
struct BluetoothRFCOMMParityType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothRFCOMMParityTypeNoParity: BluetoothRFCOMMParityType { get }
var kBluetoothRFCOMMParityTypeOddParity: BluetoothRFCOMMParityType { get }
var kBluetoothRFCOMMParityTypeEvenParity: BluetoothRFCOMMParityType { get }
var kBluetoothRFCOMMParityTypeMaxParity: BluetoothRFCOMMParityType { get }
struct BluetoothRFCOMMLineStatus : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var BluetoothRFCOMMLineStatusNoError: BluetoothRFCOMMLineStatus { get }
var BluetoothRFCOMMLineStatusOverrunError: BluetoothRFCOMMLineStatus { get }
var BluetoothRFCOMMLineStatusParityError: BluetoothRFCOMMLineStatus { get }
var BluetoothRFCOMMLineStatusFramingError: BluetoothRFCOMMLineStatus { get }
typealias BluetoothSDPPDUID = UInt8
var kBluetoothSDPPDUIDReserved: Int { get }
var kBluetoothSDPPDUIDErrorResponse: Int { get }
var kBluetoothSDPPDUIDServiceSearchRequest: Int { get }
var kBluetoothSDPPDUIDServiceSearchResponse: Int { get }
var kBluetoothSDPPDUIDServiceAttributeRequest: Int { get }
var kBluetoothSDPPDUIDServiceAttributeResponse: Int { get }
var kBluetoothSDPPDUIDServiceSearchAttributeRequest: Int { get }
var kBluetoothSDPPDUIDServiceSearchAttributeResponse: Int { get }
typealias BluetoothSDPErrorCode = UInt16
var kBluetoothSDPErrorCodeSuccess: Int { get }
var kBluetoothSDPErrorCodeReserved: Int { get }
var kBluetoothSDPErrorCodeInvalidSDPVersion: Int { get }
var kBluetoothSDPErrorCodeInvalidServiceRecordHandle: Int { get }
var kBluetoothSDPErrorCodeInvalidRequestSyntax: Int { get }
var kBluetoothSDPErrorCodeInvalidPDUSize: Int { get }
var kBluetoothSDPErrorCodeInvalidContinuationState: Int { get }
var kBluetoothSDPErrorCodeInsufficientResources: Int { get }
var kBluetoothSDPErrorCodeReservedStart: Int { get }
var kBluetoothSDPErrorCodeReservedEnd: Int { get }
typealias BluetoothSDPTransactionID = UInt16
typealias BluetoothSDPServiceRecordHandle = UInt32
var kBluetoothSDPDataElementTypeNil: Int { get }
var kBluetoothSDPDataElementTypeUnsignedInt: Int { get }
var kBluetoothSDPDataElementTypeSignedInt: Int { get }
var kBluetoothSDPDataElementTypeUUID: Int { get }
var kBluetoothSDPDataElementTypeString: Int { get }
var kBluetoothSDPDataElementTypeBoolean: Int { get }
var kBluetoothSDPDataElementTypeDataElementSequence: Int { get }
var kBluetoothSDPDataElementTypeDataElementAlternative: Int { get }
var kBluetoothSDPDataElementTypeURL: Int { get }
var kBluetoothSDPDataElementTypeReservedStart: Int { get }
var kBluetoothSDPDataElementTypeReservedEnd: Int { get }
typealias BluetoothSDPUUID16 = UInt16
typealias BluetoothSDPUUID32 = UInt32
typealias BluetoothSDPDataElementTypeDescriptor = UInt8
typealias BluetoothSDPDataElementSizeDescriptor = UInt8
typealias BluetoothSDPServiceAttributeID = UInt16
struct BluetoothLEScanType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var BluetoothLEScanTypePassive: BluetoothLEScanType { get }
var BluetoothLEScanTypeActive: BluetoothLEScanType { get }
struct BluetoothLEAddressType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var BluetoothLEAddressTypePublic: BluetoothLEAddressType { get }
var BluetoothLEAddressTypeRandom: BluetoothLEAddressType { get }
struct BluetoothLEScanFilter : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var BluetoothLEScanFilterNone: BluetoothLEScanFilter { get }
var BluetoothLEScanFilterWhitelist: BluetoothLEScanFilter { get }
struct BluetoothLEScan : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var BluetoothLEScanDisable: BluetoothLEScan { get }
var BluetoothLEScanEnable: BluetoothLEScan { get }
struct BluetoothLEConnectionInterval : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var BluetoothLEConnectionIntervalMin: BluetoothLEConnectionInterval { get }
var BluetoothLEConnectionIntervalMax: BluetoothLEConnectionInterval { get }
struct BluetoothLEScanDuplicateFilter : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var BluetoothLEScanDuplicateFilterDisable: BluetoothLEScanDuplicateFilter { get }
var BluetoothLEScanDuplicateFilterEnable: BluetoothLEScanDuplicateFilter { get }
struct BluetoothLEAdvertisingType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var BluetoothLEAdvertisingTypeConnectableUndirected: BluetoothLEAdvertisingType { get }
var BluetoothLEAdvertisingTypeConnectableDirected: BluetoothLEAdvertisingType { get }
var BluetoothLEAdvertisingTypeDiscoverableUndirected: BluetoothLEAdvertisingType { get }
var BluetoothLEAdvertisingTypeNonConnectableUndirected: BluetoothLEAdvertisingType { get }
var BluetoothLEAdvertisingTypeScanResponse: BluetoothLEAdvertisingType { get }
struct BluetoothCompanyIdentifers : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothCompanyIdentiferEricssonTechnologyLicensing: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferNokiaMobilePhones: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferIntel: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferIBM: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferToshiba: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentifer3Com: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferMicrosoft: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferLucent: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferMotorola: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferInfineonTechnologiesAG: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferCambridgeSiliconRadio: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferSiliconWave: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferDigianswerAS: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferTexasInstruments: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferParthusTechnologies: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferBroadcom: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferMitelSemiconductor: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferWidcomm: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferZeevo: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferAtmel: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferMistubishiElectric: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferRTXTelecom: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferKCTechnology: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferNewlogic: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferTransilica: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferRohdeandSchwarz: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferTTPCom: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferSigniaTechnologies: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferConexantSystems: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferQualcomm: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferInventel: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferAVMBerlin: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferBandspeed: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferMansella: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferNEC: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferWavePlusTechnology: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferAlcatel: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferPhilipsSemiconductor: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferCTechnologies: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferOpenInterface: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferRFCMicroDevices: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferHitachi: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferSymbolTechnologies: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferTenovis: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferMacronixInternational: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferGCTSemiconductor: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferNorwoodSystems: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferMewTelTechnology: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferSTMicroelectronics: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferSynopsys: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferRedMCommunications: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferCommil: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferCATC: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferEclipse: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferRenesasTechnology: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferMobilian: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferTerax: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferIntegratedSystemSolution: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferMatsushitaElectricIndustrial: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferGennum: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferResearchInMotion: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferIPextreme: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferSystemsAndChips: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferBluetoothSIG: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferSeikoEpson: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferIntegratedSiliconSolution: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferCONWISETechnology: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferParrotSA: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferSocketCommunications: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferAtherosCommunications: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferMediaTek: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferBluegiga: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferMarvellTechnologyGroup: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentifer3DSP: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferAccelSemiconductor: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferContinentialAutomotiveSystems: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferApple: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferStaccatoCommunications: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferAvagoTechnologies: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferAPT: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferSiRFTechnology: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferTZeroTechnologies: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferJandM: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferFree2Move: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentifer3DiJoy: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferPlantronics: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferSonyEricssonMobileCommunications: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferHarmonInternational: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferVisio: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferNordicSemiconductor: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferEMMicroElectronicMarin: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferInteropIdentifier: BluetoothCompanyIdentifers { get }
var kBluetoothServiceClassMajorLimitedDiscoverableMode: Int { get }
var kBluetoothServiceClassMajorReserved1: Int { get }
var kBluetoothServiceClassMajorReserved2: Int { get }
var kBluetoothServiceClassMajorPositioning: Int { get }
var kBluetoothServiceClassMajorNetworking: Int { get }
var kBluetoothServiceClassMajorRendering: Int { get }
var kBluetoothServiceClassMajorCapturing: Int { get }
var kBluetoothServiceClassMajorObjectTransfer: Int { get }
var kBluetoothServiceClassMajorAudio: Int { get }
var kBluetoothServiceClassMajorTelephony: Int { get }
var kBluetoothServiceClassMajorInformation: Int { get }
var kBluetoothServiceClassMajorAny: Int { get }
var kBluetoothServiceClassMajorNone: Int { get }
var kBluetoothServiceClassMajorEnd: Int { get }
var kBluetoothDeviceClassMajorMiscellaneous: Int { get }
var kBluetoothDeviceClassMajorComputer: Int { get }
var kBluetoothDeviceClassMajorPhone: Int { get }
var kBluetoothDeviceClassMajorLANAccessPoint: Int { get }
var kBluetoothDeviceClassMajorAudio: Int { get }
var kBluetoothDeviceClassMajorPeripheral: Int { get }
var kBluetoothDeviceClassMajorImaging: Int { get }
var kBluetoothDeviceClassMajorWearable: Int { get }
var kBluetoothDeviceClassMajorToy: Int { get }
var kBluetoothDeviceClassMajorHealth: Int { get }
var kBluetoothDeviceClassMajorUnclassified: Int { get }
var kBluetoothDeviceClassMajorAny: Int { get }
var kBluetoothDeviceClassMajorNone: Int { get }
var kBluetoothDeviceClassMajorEnd: Int { get }

///
	/// Computer Minor Class
	///
var kBluetoothDeviceClassMinorComputerUnclassified: Int { get }

///
	/// Computer Minor Class
	///
var kBluetoothDeviceClassMinorComputerDesktopWorkstation: Int { get }

///
	/// Computer Minor Class
	///
var kBluetoothDeviceClassMinorComputerServer: Int { get }

///
	/// Computer Minor Class
	///
var kBluetoothDeviceClassMinorComputerLaptop: Int { get }

///
	/// Computer Minor Class
	///
var kBluetoothDeviceClassMinorComputerHandheld: Int { get }

///
	/// Computer Minor Class
	///
var kBluetoothDeviceClassMinorComputerPalmSized: Int { get }

///
	/// Computer Minor Class
	///
var kBluetoothDeviceClassMinorComputerWearable: Int { get }

///
	/// Phone Minor Class
	///
var kBluetoothDeviceClassMinorPhoneUnclassified: Int { get }

///
	/// Phone Minor Class
	///
var kBluetoothDeviceClassMinorPhoneCellular: Int { get }

///
	/// Phone Minor Class
	///
var kBluetoothDeviceClassMinorPhoneCordless: Int { get }

///
	/// Phone Minor Class
	///
var kBluetoothDeviceClassMinorPhoneSmartPhone: Int { get }

///
	/// Phone Minor Class
	///
var kBluetoothDeviceClassMinorPhoneWiredModemOrVoiceGateway: Int { get }

///
	/// Phone Minor Class
	///
var kBluetoothDeviceClassMinorPhoneCommonISDNAccess: Int { get }

///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioUnclassified: Int { get }

///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioHeadset: Int { get }

///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioHandsFree: Int { get }

///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioReserved1: Int { get }

///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioMicrophone: Int { get }

///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioLoudspeaker: Int { get }

///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioHeadphones: Int { get }

///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioPortable: Int { get }

///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioCar: Int { get }

///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioSetTopBox: Int { get }

///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioHiFi: Int { get }

///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioVCR: Int { get }

///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioVideoCamera: Int { get }

///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioCamcorder: Int { get }

///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioVideoMonitor: Int { get }

///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioVideoDisplayAndLoudspeaker: Int { get }

///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioVideoConferencing: Int { get }

///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioReserved2: Int { get }

///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioGamingToy: Int { get }

///
	/// Peripheral Minor Class
	///
var kBluetoothDeviceClassMinorPeripheral1Keyboard: Int { get }

///
	/// Peripheral Minor Class
	///
var kBluetoothDeviceClassMinorPeripheral1Pointing: Int { get }

///
	/// Peripheral Minor Class
	///
var kBluetoothDeviceClassMinorPeripheral1Combo: Int { get }

///
	/// Peripheral Minor Class
	///
var kBluetoothDeviceClassMinorPeripheral2Unclassified: Int { get }

///
	/// Peripheral Minor Class
	///
var kBluetoothDeviceClassMinorPeripheral2Joystick: Int { get }

///
	/// Peripheral Minor Class
	///
var kBluetoothDeviceClassMinorPeripheral2Gamepad: Int { get }

///
	/// Peripheral Minor Class
	///
var kBluetoothDeviceClassMinorPeripheral2RemoteControl: Int { get }

///
	/// Peripheral Minor Class
	///
var kBluetoothDeviceClassMinorPeripheral2SensingDevice: Int { get }

///
	/// Peripheral Minor Class
	///
var kBluetoothDeviceClassMinorPeripheral2DigitizerTablet: Int { get }

///
	/// Peripheral Minor Class
	///
var kBluetoothDeviceClassMinorPeripheral2CardReader: Int { get }

///
	/// Peripheral Minor Class
	///
var kBluetoothDeviceClassMinorPeripheral2DigitalPen: Int { get }

///
	/// Peripheral Minor Class
	///
var kBluetoothDeviceClassMinorPeripheral2HandheldScanner: Int { get }

///
	/// Peripheral Minor Class
	///
var kBluetoothDeviceClassMinorPeripheral2GesturalInputDevice: Int { get }

///
	/// Peripheral Minor Class
	///
var kBluetoothDeviceClassMinorPeripheral2AnyPointing: Int { get }

///
	/// Imaging Minor Class
	///
var kBluetoothDeviceClassMinorImaging1Display: Int { get }

///
	/// Imaging Minor Class
	///
var kBluetoothDeviceClassMinorImaging1Camera: Int { get }

///
	/// Imaging Minor Class
	///
var kBluetoothDeviceClassMinorImaging1Scanner: Int { get }

///
	/// Imaging Minor Class
	///
var kBluetoothDeviceClassMinorImaging1Printer: Int { get }

///
	/// Imaging Minor Class
	///
var kBluetoothDeviceClassMinorImaging2Unclassified: Int { get }

///
	/// Wearable Minor Class
	///
var kBluetoothDeviceClassMinorWearableWristWatch: Int { get }

///
	/// Wearable Minor Class
	///
var kBluetoothDeviceClassMinorWearablePager: Int { get }

///
	/// Wearable Minor Class
	///
var kBluetoothDeviceClassMinorWearableJacket: Int { get }

///
	/// Wearable Minor Class
	///
var kBluetoothDeviceClassMinorWearableHelmet: Int { get }

///
	/// Wearable Minor Class
	///
var kBluetoothDeviceClassMinorWearableGlasses: Int { get }

///
	/// Toy Minor Class
	///
var kBluetoothDeviceClassMinorToyRobot: Int { get }

///
	/// Toy Minor Class
	///
var kBluetoothDeviceClassMinorToyVehicle: Int { get }

///
	/// Toy Minor Class
	///
var kBluetoothDeviceClassMinorToyDollActionFigure: Int { get }

///
	/// Toy Minor Class
	///
var kBluetoothDeviceClassMinorToyController: Int { get }

///
	/// Toy Minor Class
	///
var kBluetoothDeviceClassMinorToyGame: Int { get }

///
	/// Health Minor Class
	///
var kBluetoothDeviceClassMinorHealthUndefined: Int { get }

///
	/// Health Minor Class
	///
var kBluetoothDeviceClassMinorHealthBloodPressureMonitor: Int { get }

///
	/// Health Minor Class
	///
var kBluetoothDeviceClassMinorHealthThermometer: Int { get }

///
	/// Health Minor Class
	///
var kBluetoothDeviceClassMinorHealthScale: Int { get }

///
	/// Health Minor Class
	///
var kBluetoothDeviceClassMinorHealthGlucoseMeter: Int { get }

///
	/// Health Minor Class
	///
var kBluetoothDeviceClassMinorHealthPulseOximeter: Int { get }

///
	/// Health Minor Class
	///
var kBluetoothDeviceClassMinorHealthHeartRateMonitor: Int { get }

///
	/// Health Minor Class
	///
var kBluetoothDeviceClassMinorHealthDataDisplay: Int { get }

///
	///	Misc
	///
var kBluetoothDeviceClassMinorAny: Int { get }

///
	///	Misc
	///
var kBluetoothDeviceClassMinorNone: Int { get }

///
	///	Misc
	///
var kBluetoothDeviceClassMinorEnd: Int { get }
var kBluetoothGAPAppearanceUnknown: Int { get }
var kBluetoothGAPAppearanceGenericPhone: Int { get }
var kBluetoothGAPAppearanceGenericComputer: Int { get }
var kBluetoothGAPAppearanceGenericWatch: Int { get }
var kBluetoothGAPAppearanceGenericClock: Int { get }
var kBluetoothGAPAppearanceGenericDisplay: Int { get }
var kBluetoothGAPAppearanceGenericRemoteControl: Int { get }
var kBluetoothGAPAppearanceGenericEyeGlasses: Int { get }
var kBluetoothGAPAppearanceGenericTag: Int { get }
var kBluetoothGAPAppearanceGenericKeyring: Int { get }
var kBluetoothGAPAppearanceGenericMediaPlayer: Int { get }
var kBluetoothGAPAppearanceGenericBarcodeScanner: Int { get }
var kBluetoothGAPAppearanceGenericThermometer: Int { get }
var kBluetoothGAPAppearanceGenericHeartrateSensor: Int { get }
var kBluetoothGAPAppearanceGenericBloodPressure: Int { get }
var kBluetoothGAPAppearanceGenericHumanInterfaceDevice: Int { get }
var kBluetoothGAPAppearanceHumanInterfaceDeviceKeyboard: Int { get }
var kBluetoothGAPAppearanceHumanInterfaceDeviceMouse: Int { get }
var kBluetoothGAPAppearanceHumanInterfaceDeviceJoystick: Int { get }
var kBluetoothGAPAppearanceHumanInterfaceDeviceGamepad: Int { get }
var kBluetoothGAPAppearanceHumanInterfaceDeviceDigitizerTablet: Int { get }
var kBluetoothGAPAppearanceHumanInterfaceDeviceCardReader: Int { get }
var kBluetoothGAPAppearanceHumanInterfaceDeviceDigitalPen: Int { get }
var kBluetoothGAPAppearanceHumanInterfaceDeviceBarcodeScanner: Int { get }
var kBluetoothGAPAppearanceGenericGlucoseMeter: Int { get }
var kBluetoothGAPAppearanceGenericRunningWalkingSensor: Int { get }
var kBluetoothGAPAppearanceGenericCycling: Int { get }
var kBluetoothL2CAPPSMSDP: Int { get }
var kBluetoothL2CAPPSMRFCOMM: Int { get }
var kBluetoothL2CAPPSMTCS_BIN: Int { get }
var kBluetoothL2CAPPSMTCS_BIN_Cordless: Int { get }
var kBluetoothL2CAPPSMBNEP: Int { get }
var kBluetoothL2CAPPSMHIDControl: Int { get }
var kBluetoothL2CAPPSMHIDInterrupt: Int { get }
var kBluetoothL2CAPPSMAVCTP: Int { get }
var kBluetoothL2CAPPSMAVDTP: Int { get }
var kBluetoothL2CAPPSMAVCTP_Browsing: Int { get }
var kBluetoothL2CAPPSMUID_C_Plane: Int { get }
var kBluetoothL2CAPPSMATT: Int { get }
var kBluetoothL2CAPPSMReservedStart: Int { get }
var kBluetoothL2CAPPSMReservedEnd: Int { get }
var kBluetoothL2CAPPSMDynamicStart: Int { get }
var kBluetoothL2CAPPSMD2D: Int { get }
var kBluetoothL2CAPPSMDynamicEnd: Int { get }
var kBluetoothL2CAPPSMNone: Int { get }
var kBluetoothSDPUUID16Base: Int { get }
var kBluetoothSDPUUID16SDP: Int { get }
var kBluetoothSDPUUID16UDP: Int { get }
var kBluetoothSDPUUID16RFCOMM: Int { get }
var kBluetoothSDPUUID16TCP: Int { get }
var kBluetoothSDPUUID16TCSBIN: Int { get }
var kBluetoothSDPUUID16TCSAT: Int { get }
var kBluetoothSDPUUID16OBEX: Int { get }
var kBluetoothSDPUUID16IP: Int { get }
var kBluetoothSDPUUID16FTP: Int { get }
var kBluetoothSDPUUID16HTTP: Int { get }
var kBluetoothSDPUUID16WSP: Int { get }
var kBluetoothSDPUUID16BNEP: Int { get }
var kBluetoothSDPUUID16UPNP: Int { get }
var kBluetoothSDPUUID16HIDP: Int { get }
var kBluetoothSDPUUID16HardcopyControlChannel: Int { get }
var kBluetoothSDPUUID16HardcopyDataChannel: Int { get }
var kBluetoothSDPUUID16HardcopyNotification: Int { get }
var kBluetoothSDPUUID16AVCTP: Int { get }
var kBluetoothSDPUUID16AVDTP: Int { get }
var kBluetoothSDPUUID16CMPT: Int { get }
var kBluetoothSDPUUID16UDI_C_Plane: Int { get }
var kBluetoothSDPUUID16MCAPControlChannel: Int { get }
var kBluetoothSDPUUID16MCAPDataChannel: Int { get }
var kBluetoothSDPUUID16L2CAP: Int { get }
struct SDPServiceClasses : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothSDPUUID16ServiceClassServiceDiscoveryServer: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassBrowseGroupDescriptor: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassPublicBrowseGroup: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassSerialPort: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassLANAccessUsingPPP: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassDialupNetworking: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassIrMCSync: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassOBEXObjectPush: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassOBEXFileTransfer: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassIrMCSyncCommand: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassHeadset: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassCordlessTelephony: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassAudioSource: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassAudioSink: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassAVRemoteControlTarget: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassAdvancedAudioDistribution: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassAVRemoteControl: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassAVRemoteControlController: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassIntercom: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassFax: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassHeadsetAudioGateway: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassWAP: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassWAPClient: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassPANU: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassNAP: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassGN: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassDirectPrinting: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassReferencePrinting: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassImaging: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassImagingResponder: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassImagingAutomaticArchive: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassImagingReferencedObjects: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassHandsFree: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassHandsFreeAudioGateway: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassDirectPrintingReferenceObjectsService: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassReflectedUI: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassBasicPrinting: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassPrintingStatus: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassHumanInterfaceDeviceService: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassHardcopyCableReplacement: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassHCR_Print: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassHCR_Scan: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassCommonISDNAccess: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassVideoConferencingGW: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassUDI_MT: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassUDI_TA: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassAudioVideo: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassSIM_Access: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassPhonebookAccess_PCE: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassPhonebookAccess_PSE: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassPhonebookAccess: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassHeadset_HS: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassMessageAccessServer: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassMessageNotificationServer: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassMessageAccessProfile: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassGlobalNavigationSatelliteSystem: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassGlobalNavigationSatelliteSystemServer: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassPnPInformation: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassGenericNetworking: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassGenericFileTransfer: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassGenericAudio: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassGenericTelephony: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassVideoSource: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassVideoSink: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassVideoDistribution: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassHealthDevice: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassHealthDeviceSource: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassHealthDeviceSink: SDPServiceClasses { get }
struct SDPAttributeIdentifierCodes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothSDPAttributeIdentifierServiceRecordHandle: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierServiceClassIDList: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierServiceRecordState: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierServiceID: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierProtocolDescriptorList: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierBrowseGroupList: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierLanguageBaseAttributeIDList: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierServiceInfoTimeToLive: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierServiceAvailability: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierBluetoothProfileDescriptorList: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierDocumentationURL: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierClientExecutableURL: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierIconURL: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierAdditionalProtocolsDescriptorList: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierVersionNumberList: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierServiceDatabaseState: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierGroupID: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierIPSubnet: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDReleaseNumber: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDParserVersion: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDDeviceSubclass: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDCountryCode: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDVirtualCable: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDReconnectInitiate: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDDescriptorList: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDLangIDBaseList: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDSDPDisable: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDBatteryPower: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDRemoteWake: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDProfileVersion: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDSupervisionTimeout: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDNormallyConnectable: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDBootDevice: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDSSRHostMaxLatency: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDSSRHostMinTimeout: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierServiceVersion: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierExternalNetwork: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierNetwork: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierSupportedDataStoresList: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierFaxClass1Support: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierRemoteAudioVolumeControl: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierFaxClass2_0Support: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierSupporterFormatsList: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierFaxClass2Support: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierAudioFeedbackSupport: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierNetworkAddress: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierWAPGateway: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHomepageURL: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierWAPStackType: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierSecurityDescription: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierNetAccessType: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierMaxNetAccessRate: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierSupportedCapabilities: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierSupportedFeatures: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierSupportedFunctions: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierTotalImagingDataCapacity: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierServiceName: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierServiceDescription: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierProviderName: SDPAttributeIdentifierCodes { get }
struct SDPAttributeDeviceIdentificationRecord : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothSDPAttributeDeviceIdentifierServiceDescription: SDPAttributeDeviceIdentificationRecord { get }
var kBluetoothSDPAttributeDeviceIdentifierDocumentationURL: SDPAttributeDeviceIdentificationRecord { get }
var kBluetoothSDPAttributeDeviceIdentifierClientExecutableURL: SDPAttributeDeviceIdentificationRecord { get }
var kBluetoothSDPAttributeDeviceIdentifierSpecificationID: SDPAttributeDeviceIdentificationRecord { get }
var kBluetoothSDPAttributeDeviceIdentifierVendorID: SDPAttributeDeviceIdentificationRecord { get }
var kBluetoothSDPAttributeDeviceIdentifierProductID: SDPAttributeDeviceIdentificationRecord { get }
var kBluetoothSDPAttributeDeviceIdentifierVersion: SDPAttributeDeviceIdentificationRecord { get }
var kBluetoothSDPAttributeDeviceIdentifierPrimaryRecord: SDPAttributeDeviceIdentificationRecord { get }
var kBluetoothSDPAttributeDeviceIdentifierVendorIDSource: SDPAttributeDeviceIdentificationRecord { get }
var kBluetoothSDPAttributeDeviceIdentifierReservedRangeStart: SDPAttributeDeviceIdentificationRecord { get }
var kBluetoothSDPAttributeDeviceIdentifierReservedRangeEnd: SDPAttributeDeviceIdentificationRecord { get }
struct ProtocolParameters : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothSDPProtocolParameterL2CAPPSM: ProtocolParameters { get }
var kBluetoothSDPProtocolParameterRFCOMMChannel: ProtocolParameters { get }
var kBluetoothSDPProtocolParameterTCPPort: ProtocolParameters { get }
var kBluetoothSDPProtocolParameterUDPPort: ProtocolParameters { get }
var kBluetoothSDPProtocolParameterBNEPVersion: ProtocolParameters { get }
var kBluetoothSDPProtocolParameterBNEPSupportedNetworkPacketTypeList: ProtocolParameters { get }
struct BluetoothHCIExtendedInquiryResponseDataTypes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothHCIExtendedInquiryResponseDataTypeFlags: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataType16BitServiceClassUUIDsWithMoreAvailable: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataType16BitServiceClassUUIDsCompleteList: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataType32BitServiceClassUUIDsWithMoreAvailable: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataType32BitServiceClassUUIDsCompleteList: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataType128BitServiceClassUUIDsWithMoreAvailable: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataType128BitServiceClassUUIDsCompleteList: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeShortenedLocalName: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeCompleteLocalName: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeTransmitPowerLevel: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeSSPOOBClassOfDevice: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeSSPOOBSimplePairingHashC: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeSSPOOBSimplePairingRandomizerR: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeDeviceID: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeSecurityManagerTKValue: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeSecurityManagerOOBFlags: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeSlaveConnectionIntervalRange: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeServiceSolicitation16BitUUIDs: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeServiceSolicitation128BitUUIDs: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeServiceData: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypePublicTargetAddress: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeRandomTargetAddress: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeAppearance: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeManufacturerSpecificData: BluetoothHCIExtendedInquiryResponseDataTypes { get }
struct BluetoothHCIVersions : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothHCIVersionCoreSpecification1_0b: BluetoothHCIVersions { get }
var kBluetoothHCIVersionCoreSpecification1_1: BluetoothHCIVersions { get }
var kBluetoothHCIVersionCoreSpecification1_2: BluetoothHCIVersions { get }
var kBluetoothHCIVersionCoreSpecification2_0EDR: BluetoothHCIVersions { get }
var kBluetoothHCIVersionCoreSpecification2_1EDR: BluetoothHCIVersions { get }
var kBluetoothHCIVersionCoreSpecification3_0HS: BluetoothHCIVersions { get }
var kBluetoothHCIVersionCoreSpecification4_0: BluetoothHCIVersions { get }
var kBluetoothHCIVersionCoreSpecification4_1: BluetoothHCIVersions { get }
struct BluetoothLMPVersions : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothLMPVersionCoreSpecification1_0b: BluetoothLMPVersions { get }
var kBluetoothLMPVersionCoreSpecification1_1: BluetoothLMPVersions { get }
var kBluetoothLMPVersionCoreSpecification1_2: BluetoothLMPVersions { get }
var kBluetoothLMPVersionCoreSpecification2_0EDR: BluetoothLMPVersions { get }
var kBluetoothLMPVersionCoreSpecification2_1EDR: BluetoothLMPVersions { get }
var kBluetoothLMPVersionCoreSpecification3_0HS: BluetoothLMPVersions { get }
var kBluetoothLMPVersionCoreSpecification4_0: BluetoothLMPVersions { get }
var kBluetoothLMPVersionCoreSpecification4_1: BluetoothLMPVersions { get }
class IOBluetoothObject {
}
typealias IOBluetoothObjectRef = IOBluetoothObject
class IOBluetoothDevice {
}
typealias IOBluetoothDeviceRef = IOBluetoothDevice
typealias IOBluetoothL2CAPChannelRef = IOBluetoothL2CAPChannel
class IOBluetoothL2CAPChannel {
}
class IOBluetoothRFCOMMChannel {
}
typealias IOBluetoothRFCOMMChannelRef = IOBluetoothRFCOMMChannel
class IOBluetoothSDPServiceRecord {
}
typealias IOBluetoothSDPServiceRecordRef = IOBluetoothSDPServiceRecord
class IOBluetoothSDPUUID {
}
typealias IOBluetoothSDPUUIDRef = IOBluetoothSDPUUID
class IOBluetoothSDPDataElement {
}
typealias IOBluetoothSDPDataElementRef = IOBluetoothSDPDataElement
typealias IOBluetoothUserNotificationRef = IOBluetoothUserNotification
class IOBluetoothUserNotification {
}
typealias IOBluetoothObjectID = UInt

/*!	@typedef	IOBluetoothDeviceSearchOptions
*/
typealias IOBluetoothDeviceSearchOptions = UInt32
struct IOBluetoothDeviceSearchOptionsBits : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kSearchOptionsNone: IOBluetoothDeviceSearchOptionsBits { get }
var kSearchOptionsAlwaysStartInquiry: IOBluetoothDeviceSearchOptionsBits { get }
var kSearchOptionsDiscardCachedResults: IOBluetoothDeviceSearchOptionsBits { get }

/*!	@typedef	IOBluetoothDeviceSearchDeviceAttributes
	@abstract	Structure used to search for particular devices.
	@discussion Make sure you specify all fields! If you do not set deviceClassMajor for example, and the value is
				0, that is mapped to kBluetoothDeviceClassMajorMiscellaneous, which is probably not what you want. To
				search for all device types, you must pass kBluetoothDeviceClassMajorAny and its relatives. 
*/
struct IOBluetoothDeviceSearchDeviceAttributes {
  var address: BluetoothDeviceAddress
  var name: BluetoothDeviceName
  var serviceClassMajor: BluetoothServiceClassMajor
  var deviceClassMajor: BluetoothDeviceClassMajor
  var deviceClassMinor: BluetoothDeviceClassMinor
  init()
  init(address: BluetoothDeviceAddress, name: BluetoothDeviceName, serviceClassMajor: BluetoothServiceClassMajor, deviceClassMajor: BluetoothDeviceClassMajor, deviceClassMinor: BluetoothDeviceClassMinor)
}

/*!	@struct		IOBluetoothDeviceSearchAttributes
	@discussion You can search for general device classes and service classes, or you can search for a 
				specific device address or name. If you pass NULL as the attribute structure,
				you will get ALL devices in the vicinity found during a search. Note that passing a zeroed
				out block of attributes is NOT equivalent to passing in NULL!	
*/
struct IOBluetoothDeviceSearchAttributes {
  var options: IOBluetoothDeviceSearchOptions
  var maxResults: IOItemCount
  var deviceAttributeCount: IOItemCount
  var attributeList: UnsafeMutablePointer<IOBluetoothDeviceSearchDeviceAttributes>
  init()
  init(options: IOBluetoothDeviceSearchOptions, maxResults: IOItemCount, deviceAttributeCount: IOItemCount, attributeList: UnsafeMutablePointer<IOBluetoothDeviceSearchDeviceAttributes>)
}

/*!	@typedef		IOBluetoothDeviceSearchTypes
 */
typealias IOBluetoothDeviceSearchTypes = UInt32

/*!	@enum		IOBluetoothDeviceSearchTypesBits
	@abstract	Bits to determine what Bluetooth devices to search for
 */
struct IOBluetoothDeviceSearchTypesBits : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOBluetoothDeviceSearchClassic: IOBluetoothDeviceSearchTypesBits { get }
var kIOBluetoothDeviceSearchLE: IOBluetoothDeviceSearchTypesBits { get }

/*!	@function	IOBluetoothIgnoreHIDDevice
	@abstract	Hints that the Mac OS X Bluetooth software should ignore a HID device that connects up.
	@param		device	A Bluetooth Device to ignore.
*/
func IOBluetoothIgnoreHIDDevice(device: IOBluetoothDevice!)

/*!	@function	IOBluetoothRemoveIgnoredHIDDevice
	@abstract	The counterpart to the above IOBluetoothIgnoreHIDDevice() API.
	@param		device	A Bluetooth Device to "un"ignore.
*/
func IOBluetoothRemoveIgnoredHIDDevice(device: IOBluetoothDevice!)
struct IOBluetoothUserNotificationChannelDirection : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOBluetoothUserNotificationChannelDirectionAny: IOBluetoothUserNotificationChannelDirection { get }
var kIOBluetoothUserNotificationChannelDirectionIncoming: IOBluetoothUserNotificationChannelDirection { get }
var kIOBluetoothUserNotificationChannelDirectionOutgoing: IOBluetoothUserNotificationChannelDirection { get }

/*!
    @typedef IOBluetoothUserNotificationCallback
    @abstract Callback function definition for user notifications.
    @discussion This callback will be invoked when the notification for which it was registered is sent.
    @param userRefCon	(void *) This user defined parameter was provided during the original call to register
						the notification.
    @param inRef		(IOBluetoothUserNotificationRef) The notification responsible for sending the notification.
    @param status		(IOBluetoothObjectRef) The object that originated the notification.
    @result None.
*/
typealias IOBluetoothUserNotificationCallback = @convention(c) (UnsafeMutablePointer<Void>, IOBluetoothUserNotification!, IOBluetoothObject!) -> Void

/*!
    @function IOBluetoothUserNotificationUnregister
    @abstract Unregisters the target notification.
    @discussion This function will unregister the notification.  Once the notification has been unregistered,
				it will no longer call the callback.  Additionally, once this function has been called the
				target IOBluetoothUserNotificationRef is no longer valid.
    @param	notificationRef The target IOBluetoothUserNotificationRef to be unregistered
    @result None.
*/
func IOBluetoothUserNotificationUnregister(notificationRef: IOBluetoothUserNotification!)

/*!
    @function	IOBluetoothRegisterForDeviceConnectNotifications
	@abstract	Allows a client to register for device connect notifications for any connection.
	@discussion	The given callback will be called whenever any device connection is made.
	@param		callback	The callback to be called when a new connection is made
	@param		inRefCon	Client-supplied refCon to be passed to the callback.
	@result		Returns an IOBluetoothUserNotificationRef representing the outstanding device connect notification.
				To unregister the notification, call IOBluetoothUserNotificationUnregister() with the returned
				IOBluetoothUserNotificationRef.  If an error is encountered creating the notification, NULL is returned.  
				The returned IOBluetoothUserNotificationRef will be valid for as long as the notification is registered.
				It is not necessary to retain the result.  Once the notification is unregistered, it will no longer
				be valid.
*/
func IOBluetoothRegisterForDeviceConnectNotifications(callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutablePointer<Void>) -> Unmanaged<IOBluetoothUserNotification>!

/*!
    @function	IOBluetoothDeviceRegisterForDisconnectNotification
	@abstract	Allows a client to register for device disconnect notification.
	@discussion	The given callback will be called when the target device's connection is closed..
	@param		callback	The callback to be called when the target's connection is destroyed
	@param		inRefCon	Client-supplied refCon to be passed to the callback.
	@result		Returns an IOBluetoothUserNotificationRef representing the outstanding device disconnect notification.
				To unregister the notification, call IOBluetoothUserNotificationUnregister() with the returned
				IOBluetoothUserNotificationRef.  If an error is encountered creating the notification, NULL is returned.  
				The returned IOBluetoothUserNotificationRef will be valid for as long as the notification is registered.
				It is not necessary to retain the result.  Once the notification is unregistered, it will no longer
				be valid.
*/
func IOBluetoothDeviceRegisterForDisconnectNotification(inDevice: IOBluetoothDevice!, _ callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutablePointer<Void>) -> Unmanaged<IOBluetoothUserNotification>!

/*!
    @function	IOBluetoothRegisterForL2CAPChannelOpenNotifications
	@abstract	Allows a client to register for L2CAP channel open notifications for any L2CAP channel.
	@discussion	The given callback will be called whenever any L2CAP channel is opened.
	@param		callback	The callback to be called when a new L2CAP channel is opened.
	@param		inRefCon	Client-supplied refCon to be passed to the callback.
	@result		Returns an IOBluetoothUserNotificationRef representing the outstanding L2CAP channel notification.
				To unregister the notification, call IOBluetoothUserNotificationUnregister() with the returned
				IOBluetoothUserNotificationRef.  If an error is encountered creating the notification, NULL is returned.  
				The returned IOBluetoothUserNotificationRef will be valid for as long as the notification is registered.
				It is not necessary to retain the result.  Once the notification is unregistered, it will no longer
				be valid.
*/
func IOBluetoothRegisterForL2CAPChannelOpenNotifications(callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutablePointer<Void>) -> Unmanaged<IOBluetoothUserNotification>!

/*!
    @function	IOBluetoothRegisterForFilteredL2CAPChannelOpenNotifications
	@abstract	Allows a client to register for L2CAP channel open notifications for certain types of
				L2CAP channels.
	@discussion	The given callback will be called whenever any L2CAP channel is opened.
	@param		callback	The callback to be called when a new L2CAP channel is opened.
	@param		inRefCon	Client-supplied refCon to be passed to the callback.
	@param		psm			PSM to match a new L2CAP channel.  If the PSM doesn't matter, 0 may be passed in.
	@param		inDirection	The desired direction of the L2CAP channel - kIOBluetoothUserNotificationChannelDirectionAny
				if the direction doesn't matter.
	@result		Returns an IOBluetoothUserNotificationRef representing the outstanding L2CAP channel notification.
				To unregister the notification, call IOBluetoothUserNotificationUnregister() with the returned
				IOBluetoothUserNotificationRef.  If an error is encountered creating the notification, NULL is returned.  
				The returned IOBluetoothUserNotificationRef will be valid for as long as the notification is registered.
				It is not necessary to retain the result.  Once the notification is unregistered, it will no longer
				be valid.
*/
func IOBluetoothRegisterForFilteredL2CAPChannelOpenNotifications(callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutablePointer<Void>, _ inPSM: BluetoothL2CAPPSM, _ inDirection: IOBluetoothUserNotificationChannelDirection) -> Unmanaged<IOBluetoothUserNotification>!

/*!
    @function	IOBluetoothL2CAPChannelRegisterForChannelCloseNotification
	@abstract	Allows a client to register for a channel close notification.
    @discussion	The given callback will be called when the L2CAP channel is closed.
	@param		channel		The target L2CAP channel
	@param		callback	Callback to be called when the L2CAP channel is closed.
	@param		inRefCon	Client-supplied refCon to be passed to the callback.
	@result		Returns an IOBluetoothUserNotificationRef representing the outstanding L2CAP channel close notification.
				To unregister the notification, call IOBluetoothUserNotificationUnregister() with the returned
				IOBluetoothUserNotificationRef.  If an error is encountered creating the notification, NULL is returned.  
				The returned IOBluetoothUserNotificationRef will be valid for as long as the notification is registered.
				It is not necessary to retain the result.  Once the notification is unregistered, it will no longer
				be valid.
*/
func IOBluetoothL2CAPChannelRegisterForChannelCloseNotification(channel: IOBluetoothL2CAPChannel!, _ callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutablePointer<Void>) -> Unmanaged<IOBluetoothUserNotification>!

/*!
    @function	IOBluetoothRegisterForRFCOMMChannelOpenNotifications
	@abstract	Allows a client to register for RFCOMM channel open notifications for any RFCOMM channel.
	@discussion	The given callback will be called whenever any RFCOMM channel is opened.
	@param		callback	The callback to be called when a new RFCOMM channel is opened.
	@param		inRefCon	Client-supplied refCon to be passed to the callback.
	@result		Returns an IOBluetoothUserNotificationRef representing the outstanding RFCOMM channel notification.
				To unregister the notification, call IOBluetoothUserNotificationUnregister() with the returned
				IOBluetoothUserNotificationRef.  If an error is encountered creating the notification, NULL is returned.  
				The returned IOBluetoothUserNotificationRef will be valid for as long as the notification is registered.
				It is not necessary to retain the result.  Once the notification is unregistered, it will no longer
				be valid.
*/
func IOBluetoothRegisterForRFCOMMChannelOpenNotifications(callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutablePointer<Void>) -> Unmanaged<IOBluetoothUserNotification>!

/*!
    @function	IOBluetoothRegisterForFilteredRFCOMMChannelOpenNotifications
	@abstract	Allows a client to register for RFCOMM channel open notifications for certain types of
				RFCOMM channels.
	@discussion	The given callback will be called whenever any RFCOMM channel is opened.
	@param		callback	The callback to be called when a new RFCOMM channel is opened.
	@param		inRefCon	Client-supplied refCon to be passed to the callback.
	@param		channeLID	RFCOMM channel ID to match a new RFCOMM channel.  If the channel ID doesn't matter, 0 may be passed in.
	@param		inDirection	The desired direction of the RFCOMM channel - kIOBluetoothUserNotificationChannelDirectionAny
				if the direction doesn't matter.
	@result		Returns an IOBluetoothUserNotificationRef representing the outstanding RFCOMM channel notification.
				To unregister the notification, call IOBluetoothUserNotificationUnregister() with the returned
				IOBluetoothUserNotificationRef.  If an error is encountered creating the notification, NULL is returned.  
				The returned IOBluetoothUserNotificationRef will be valid for as long as the notification is registered.
				It is not necessary to retain the result.  Once the notification is unregistered, it will no longer
				be valid.
*/
func IOBluetoothRegisterForFilteredRFCOMMChannelOpenNotifications(callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutablePointer<Void>, _ channelID: BluetoothRFCOMMChannelID, _ inDirection: IOBluetoothUserNotificationChannelDirection) -> Unmanaged<IOBluetoothUserNotification>!

/*!
    @function	IOBluetoothRFCOMMChannelRegisterForChannelCloseNotification
	@abstract	Allows a client to register for a channel close notification.
    @discussion	The given callback will be called when the RFCOMM channel is closed.
	@param		channel		The target RFCOMM channel
	@param		callback	Callback to be called when the RFCOMM channel is closed.
	@param		inRefCon	Client-supplied refCon to be passed to the callback.
	@result		Returns an IOBluetoothUserNotificationRef representing the outstanding RFCOMM channel close notification.
				To unregister the notification, call IOBluetoothUserNotificationUnregister() with the returned
				IOBluetoothUserNotificationRef.  If an error is encountered creating the notification, NULL is returned.  
				The returned IOBluetoothUserNotificationRef will be valid for as long as the notification is registered.
				It is not necessary to retain the result.  Once the notification is unregistered, it will no longer
				be valid.
*/
func IOBluetoothRFCOMMChannelRegisterForChannelCloseNotification(inChannel: IOBluetoothRFCOMMChannel!, _ callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutablePointer<Void>) -> Unmanaged<IOBluetoothUserNotification>!

/*!	@function	IOBluetoothNSStringToDeviceAddress
	@abstract	Convenience routine to take an NSString and turn it into a BluetoothDeviceAddress structure.
	@param		inNameString		Ptr to an NSString that contains the data to turn into the device address.
	@param		outDeviceAddress	Ptr to an address structure that will be returned.
	@result		Returns success (0) or failure code.
	@discussion	Pass in most types of strings, such as "001122334455" or "00-11-22-33-44-55" and the conversion should be successful. Also, you should have 2 characters per byte for the conversion to work properly.
*/
func IOBluetoothNSStringToDeviceAddress(inNameString: String!, _ outDeviceAddress: UnsafeMutablePointer<BluetoothDeviceAddress>) -> IOReturn

/*!	@function	IOBluetoothNSStringFromDeviceAddress
	@abstract	Convenience routine to take a device address structure and create an NSString.
	@param		deviceAddress		A valid bluetooth device structure.
	@result		Returns the created address string.
	@discussion	The resultant string will be in this format: "00-11-22-33-44-55"
*/
func IOBluetoothNSStringFromDeviceAddress(deviceAddress: UnsafePointer<BluetoothDeviceAddress>) -> String!

/*!	@function	IOBluetoothNSStringFromDeviceAddressColon
@abstract	Convenience routine to take a device address structure and create an NSString.
@param		deviceAddress		A valid bluetooth device structure.
@result		Returns the created address string.
@discussion	The resultant string will be in this format: "00:11:22:33:44:55"
*/
func IOBluetoothNSStringFromDeviceAddressColon(deviceAddress: UnsafePointer<BluetoothDeviceAddress>) -> String!

/*!	@function	IOBluetoothIsFileAppleDesignatedPIMData
	@abstract	Apple designated PIM data is classified as: .vcard, .vcal, .vcf, .vnote, .vmsg, .vcs
	@param		inFileName		Name of file - should include extension!
	@result		Yes or no, is it Apple-designated PIM data?
	@discussion	Not much to talk about.
*/
func IOBluetoothIsFileAppleDesignatedPIMData(inFileName: String!) -> Bool

/*!	@function	IOBluetoothGetUniqueFileNameAndPath
	@abstract	
	@param		inName		Name of file that needs unique name in the specified path.
	@param		inPath		Path you are trying to put file into.
	@result		String with a unique name appended on it for the provided path.
	@discussion		When passed a VALID filename and a VALID path, this routine will return you a the path with the name
					appended onto it. If it already exist, it will insert a #1, #2, etc. Example:
					If you pass &#64"TestFile.txt" and &#64"~/Documents", you will get &#64"~Documents/TestFile.txt".
					If one already exists, you will be returned: &#64"~Documents/TestFile #1.txt".
*/
func IOBluetoothGetUniqueFileNameAndPath(inName: String!, _ inPath: String!) -> String!
func IOBluetoothPackDataList(ioBuffer: UnsafeMutablePointer<Void>, _ inFormat: UnsafePointer<Int8>, _ inArgs: CVaListPointer) -> Int
func IOBluetoothUnpackDataList(inBufferSize: Int, _ inBuffer: UnsafePointer<Void>, _ inFormat: UnsafePointer<Int8>, _ inArgs: CVaListPointer) -> Int

/*!	@function	IOBluetoothNumberOfAvailableHIDDevices
	@abstract	Returns total number of HID devices on the system (Bluetooth + USB)
	@result		Number of HID devices.
*/
func IOBluetoothNumberOfAvailableHIDDevices() -> Int

/*!	@function	IOBluetoothNumberOfPointingHIDDevices
	@abstract	Returns number of "pointing" HID devices on the system (Bluetooth + USB)
	@result		Number of HID devices.
*/
func IOBluetoothNumberOfPointingHIDDevices() -> Int

/*!	@function	IOBluetoothNumberOfKeyboardHIDDevices
	@abstract	Returns number of keyboard HID devices on the system (Bluetooth + USB)
	@result		Number of HID devices.
*/
func IOBluetoothNumberOfKeyboardHIDDevices() -> Int

/*!	@function	IOBluetoothNumberOfTabletHIDDevices
	@abstract	Returns number of "Tablet" HID devices on the system (Bluetooth + USB)
	@result		Number of HID devices.
*/
func IOBluetoothNumberOfTabletHIDDevices() -> Int

/*!	@function	IOBluetoothFindNumberOfRegistryEntriesOfClassName
	@abstract	Returns total number of registry entries with the provided device classname. e.g. "IOHIPointing"
	@result		Number of HID devices.
*/
func IOBluetoothFindNumberOfRegistryEntriesOfClassName(deviceType: UnsafePointer<Int8>) -> Int

/*!	@enum		OBEXErrorCodes
	@abstract	Codes for OBEX errors. If the return value was not in the following range, then it is most likely resulting
				from kernel code/IOKit, and you should consult IOReturn.h for those codes.
	@constant	kOBEXErrorRangeMin				Minimum value in OBEX error range.
	@constant	kOBEXErrorRangeMax				Maximum value in OBEX error range.
	
*/
typealias OBEXError = Int32
struct OBEXErrorCodes : RawRepresentable, Equatable {
  init(_ rawValue: Int32)
  init(rawValue: Int32)
  var rawValue: Int32
}
var kOBEXErrorRangeMin: OBEXErrorCodes { get }
var kOBEXErrorRangeMax: OBEXErrorCodes { get }
var kOBEXSuccess: OBEXErrorCodes { get }
var kOBEXGeneralError: OBEXErrorCodes { get }
var kOBEXNoResourcesError: OBEXErrorCodes { get }
var kOBEXUnsupportedError: OBEXErrorCodes { get }
var kOBEXInternalError: OBEXErrorCodes { get }
var kOBEXBadArgumentError: OBEXErrorCodes { get }
var kOBEXTimeoutError: OBEXErrorCodes { get }
var kOBEXBadRequestError: OBEXErrorCodes { get }
var kOBEXCancelledError: OBEXErrorCodes { get }
var kOBEXForbiddenError: OBEXErrorCodes { get }
var kOBEXUnauthorizedError: OBEXErrorCodes { get }
var kOBEXNotAcceptableError: OBEXErrorCodes { get }
var kOBEXConflictError: OBEXErrorCodes { get }
var kOBEXMethodNotAllowedError: OBEXErrorCodes { get }
var kOBEXNotFoundError: OBEXErrorCodes { get }
var kOBEXNotImplementedError: OBEXErrorCodes { get }
var kOBEXPreconditionFailedError: OBEXErrorCodes { get }
var kOBEXSessionBusyError: OBEXErrorCodes { get }
var kOBEXSessionNotConnectedError: OBEXErrorCodes { get }
var kOBEXSessionBadRequestError: OBEXErrorCodes { get }
var kOBEXSessionBadResponseError: OBEXErrorCodes { get }
var kOBEXSessionNoTransportError: OBEXErrorCodes { get }
var kOBEXSessionTransportDiedError: OBEXErrorCodes { get }
var kOBEXSessionTimeoutError: OBEXErrorCodes { get }
var kOBEXSessionAlreadyConnectedError: OBEXErrorCodes { get }

/*!	@enum		OBEXHeaderIdentifiers
	@abstract	Identifiers for OBEX Headers.
	@constant	kOBEXHeaderIDName						Name of the object.  Null terminated unicode text.
	@constant	kOBEXHeaderIDDescription				Text description of the object. Null terminated unicode text.
	@constant	kOBEXHeaderIDReservedRangeStart			Range includes all combos of the upper 2 bits. Reserved.
	@constant	kOBEXHeaderIDReservedRangeEnd			Range includes all combos of the upper 2 bits. Reserved.
	@constant	kOBEXHeaderIDUserDefinedRangeStart		Range includes all combos of the upper 2 bits. User defined.
	@constant	kOBEXHeaderIDUserDefinedRangeEnd		Range includes all combos of the upper 2 bits. User defined.
	@constant	kOBEXHeaderIDType						Type of object - e.g. text, html, binary, etc. Null terminated ASCII text.
	@constant	kOBEXHeaderIDTimeISO					Date/time stamp - ISO8601 version of time. (YYYYMMDDTHHMMSSZ)
	@constant	kOBEXHeaderIDTarget						Name of service that operation is destined for.
	@constant	kOBEXHeaderIDHTTP						An HTTP 1.x header.
	@constant	kOBEXHeaderIDBody						A Chunk of the object body.
	@constant	kOBEXHeaderIDEndOfBody					The last checking of the object body.
	@constant	kOBEXHeaderIDWho						Identifies the OBEX applications, used to tell if talking to a peer.
	@constant	kOBEXHeaderIDAppParameters				Extended application request and resposnse info.
	@constant	kOBEXHeaderIDAuthorizationChallenge		Authentication digest-challenge.
	@constant	kOBEXHeaderIDAuthorizationResponse		Authentication digest-reponse.
	@constant	kOBEXHeaderIDObjectClass				OBEX Object - class of object.
	@constant	kOBEXHeaderIDCount						Number of objects (used in Connect command).
	@constant	kOBEXHeaderIDLength						The length of the object in bytes. 4 byte unsigned integer value.
	@constant	kOBEXHeaderIDTime4Byte					Date/time stamp - 4 byte version for compat. only. Seconds since Jan 1, 1970.
	@constant	kOBEXHeaderIDConnectionID				An identifier used for OBEX connection multiplexing.
	@constant	kOBEXHeaderIDOBEX13WANUUID					Used to provide state information when layering OBEX over stateless networks. 16byte UUID.
	@constant	kOBEXHeaderIDOBEX13ObjectClass				Used to reference the object class and properties. Byte Sequence.
	@constant	kOBEXHeaderIDOBEX13SessionParameters		Byte sequence required for CreateSession, CloseSession and other OBEX commands.
	@constant	kOBEXHeaderIDOBEX13SessionSequenceNumber	1-byte quantitied containing the current sequence number.
	@constant	kOBEXHeaderIDOBEX13CreatorID				4-byte unsigned integer that identifies the creator of the object.
*/
struct OBEXHeaderIdentifiers : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXHeaderIDName: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDDescription: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDReservedRangeStart: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDReservedRangeEnd: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDUserDefinedRangeStart: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDUserDefinedRangeEnd: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDType: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDTimeISO: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDTarget: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDHTTP: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDBody: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDEndOfBody: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDWho: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDAppParameters: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDAuthorizationChallenge: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDAuthorizationResponse: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDObjectClass: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDCount: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDLength: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDTime4Byte: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDConnectionID: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDOBEX13WANUUID: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDOBEX13ObjectClass: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDOBEX13SessionParameters: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDOBEX13SessionSequenceNumber: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDOBEX13CreatorID: OBEXHeaderIdentifiers { get }

/*!	@enum		OBEXOpCodeResponseValues
	@abstract	Response opCode values.
*/
struct OBEXOpCodeResponseValues : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXResponseCodeReservedRangeStart: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeReservedRangeEnd: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeContinue: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeContinueWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeSuccess: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeSuccessWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeCreated: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeCreatedWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeAccepted: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeAcceptedWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNonAuthoritativeInfo: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNonAuthoritativeInfoWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNoContent: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNoContentWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeResetContent: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeResetContentWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodePartialContent: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodePartialContentWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeMultipleChoices: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeMultipleChoicesWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeMovedPermanently: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeMovedPermanentlyWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeMovedTemporarily: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeMovedTemporarilyWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeSeeOther: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeSeeOtherWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNotModified: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNotModifiedWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeUseProxy: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeUseProxyWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeBadRequest: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeBadRequestWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeUnauthorized: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeUnauthorizedWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodePaymentRequired: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodePaymentRequiredWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeForbidden: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeForbiddenWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNotFound: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNotFoundWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeMethodNotAllowed: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeMethodNotAllowedWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNotAcceptable: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNotAcceptableWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeProxyAuthenticationRequired: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeProxyAuthenticationRequiredWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeRequestTimeOut: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeRequestTimeOutWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeConflict: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeConflictWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeGone: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeGoneWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeLengthRequired: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeLengthRequiredFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodePreconditionFailed: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodePreconditionFailedWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeRequestedEntityTooLarge: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeRequestedEntityTooLargeWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeRequestURLTooLarge: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeRequestURLTooLargeWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeUnsupportedMediaType: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeUnsupportedMediaTypeWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeInternalServerError: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeInternalServerErrorWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNotImplemented: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNotImplementedWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeBadGateway: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeBadGatewayWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeServiceUnavailable: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeServiceUnavailableWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeGatewayTimeout: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeGatewayTimeoutWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeHTTPVersionNotSupported: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeHTTPVersionNotSupportedWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeDatabaseFull: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeDatabaseFullWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeDatabaseLocked: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeDatabaseLockedWithFinalBit: OBEXOpCodeResponseValues { get }

/*!	@enum		OBEXOpCodeCommandValues
	@abstract	Operation OpCode values for commands.
*/
struct OBEXOpCodeCommandValues : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXOpCodeReserved: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeConnect: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeDisconnect: OBEXOpCodeCommandValues { get }
var kOBEXOpCodePut: OBEXOpCodeCommandValues { get }
var kOBEXOpCodePutWithHighBitSet: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeGet: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeGetWithHighBitSet: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeReservedWithHighBitSet: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeSetPath: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeAbort: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeReservedRangeStart: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeReservedRangeEnd: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeUserDefinedStart: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeUserDefinedEnd: OBEXOpCodeCommandValues { get }

/*!	@enum		OBEXConnectFlags
	@abstract	Flags for Connect command.
*/
struct OBEXConnectFlagValues : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXConnectFlagNone: OBEXConnectFlagValues { get }
var kOBEXConnectFlagSupportMultipleItLMPConnections: OBEXConnectFlagValues { get }
var kOBEXConnectFlag1Reserved: OBEXConnectFlagValues { get }
var kOBEXConnectFlag2Reserved: OBEXConnectFlagValues { get }
var kOBEXConnectFlag3Reserved: OBEXConnectFlagValues { get }
var kOBEXConnectFlag4Reserved: OBEXConnectFlagValues { get }
var kOBEXConnectFlag5Reserved: OBEXConnectFlagValues { get }
var kOBEXConnectFlag6Reserved: OBEXConnectFlagValues { get }
var kOBEXConnectFlag7Reserved: OBEXConnectFlagValues { get }

/*!	@enum		OBEXSetPathFlags
	@abstract	Flags for SetPath command. Not that these are called "PutFlags". That is a mistake, they are not used
				with a Put command. We are not changing the names to maintain backwards compatibility.
*/
struct OBEXPutFlagValues : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXPutFlagNone: OBEXPutFlagValues { get }
var kOBEXPutFlagGoToParentDirFirst: OBEXPutFlagValues { get }
var kOBEXPutFlagDontCreateDirectory: OBEXPutFlagValues { get }
var kOBEXPutFlag2Reserved: OBEXPutFlagValues { get }
var kOBEXPutFlag3Reserved: OBEXPutFlagValues { get }
var kOBEXPutFlag4Reserved: OBEXPutFlagValues { get }
var kOBEXPutFlag5Reserved: OBEXPutFlagValues { get }
var kOBEXPutFlag6Reserved: OBEXPutFlagValues { get }
var kOBEXPutFlag7Reserved: OBEXPutFlagValues { get }

/*!	@enum		OBEXNonceFlags
	@abstract	Flags for Nonce command during digest challenge.
*/
struct OBEXNonceFlagValues : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXNonceFlagNone: OBEXNonceFlagValues { get }
var kOBEXNonceFlagSendUserIDInResponse: OBEXNonceFlagValues { get }
var kOBEXNonceFlagAccessModeReadOnly: OBEXNonceFlagValues { get }
var kOBEXNonceFlag2Reserved: OBEXNonceFlagValues { get }
var kOBEXNonceFlag3Reserved: OBEXNonceFlagValues { get }
var kOBEXNonceFlag4Reserved: OBEXNonceFlagValues { get }
var kOBEXNonceFlag5Reserved: OBEXNonceFlagValues { get }
var kOBEXNonceFlag6Reserved: OBEXNonceFlagValues { get }
var kOBEXNonceFlag7Reserved: OBEXNonceFlagValues { get }

/*!	@enum		OBEXRealmValues
	@abstract	Values for Realm during digest response.
*/
struct OBEXRealmValues : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXRealmASCII: OBEXRealmValues { get }
var kOBEXRealmISO88591: OBEXRealmValues { get }
var kOBEXRealmISO88592: OBEXRealmValues { get }
var kOBEXRealmISO88593: OBEXRealmValues { get }
var kOBEXRealmISO88594: OBEXRealmValues { get }
var kOBEXRealmISO88595: OBEXRealmValues { get }
var kOBEXRealmISO88596: OBEXRealmValues { get }
var kOBEXRealmISO88597: OBEXRealmValues { get }
var kOBEXRealmISO88598: OBEXRealmValues { get }
var kOBEXRealmISO88599: OBEXRealmValues { get }
var kOBEXRealmUNICODE: OBEXRealmValues { get }

/*!	@enum		OBEXOpCodeSessionValues
	@abstract	Operation OpCode values for sessions. From the OBEX 1.3 specification.
*/
struct OBEXOpCodeSessionValues : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXOpCodeCreateSession: OBEXOpCodeSessionValues { get }
var kOBEXOpCodeCloseSession: OBEXOpCodeSessionValues { get }
var kOBEXOpCodeSuspendSession: OBEXOpCodeSessionValues { get }
var kOBEXOpCodeResumeSession: OBEXOpCodeSessionValues { get }
var kOBEXOpCodeSetTimeout: OBEXOpCodeSessionValues { get }

/*!	@enum		OBEXSessionParameterTags
	@abstract	Tags for SessionParameters.
*/
struct OBEXSessionParameterTags : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXSessionParameterTagDeviceAddress: OBEXSessionParameterTags { get }
var kOBEXSessionParameterTagNonce: OBEXSessionParameterTags { get }
var kOBEXSessionParameterTagSessionID: OBEXSessionParameterTags { get }
var kOBEXSessionParameterTagNextSequenceNumber: OBEXSessionParameterTags { get }
var kOBEXSessionParameterTagTimeout: OBEXSessionParameterTags { get }
var kOBEXSessionParameterTagSessionOpcode: OBEXSessionParameterTags { get }

/*!	@enum		OBEXVersions
	@abstract	The available/supported OBEX versions.
*/
struct OBEXVersions : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXVersion10: OBEXVersions { get }
typealias OBEXHeaderIdentifier = UInt8
typealias OBEXVersion = UInt8
typealias OBEXFlags = UInt8
typealias OBEXOpCode = UInt8
typealias OBEXConstants = UInt8
typealias OBEXMaxPacketLength = UInt16
typealias OBEXSessionRef = COpaquePointer
struct OBEXConnectCommandResponseData {
  var serverResponseOpCode: OBEXOpCode
  var headerDataPtr: UnsafeMutablePointer<Void>
  var headerDataLength: Int
  var maxPacketSize: OBEXMaxPacketLength
  var version: OBEXVersion
  var flags: OBEXFlags
  init()
  init(serverResponseOpCode: OBEXOpCode, headerDataPtr: UnsafeMutablePointer<Void>, headerDataLength: Int, maxPacketSize: OBEXMaxPacketLength, version: OBEXVersion, flags: OBEXFlags)
}
struct OBEXDisconnectCommandResponseData {
  var serverResponseOpCode: OBEXOpCode
  var headerDataPtr: UnsafeMutablePointer<Void>
  var headerDataLength: Int
  init()
  init(serverResponseOpCode: OBEXOpCode, headerDataPtr: UnsafeMutablePointer<Void>, headerDataLength: Int)
}
struct OBEXPutCommandResponseData {
  var serverResponseOpCode: OBEXOpCode
  var headerDataPtr: UnsafeMutablePointer<Void>
  var headerDataLength: Int
  init()
  init(serverResponseOpCode: OBEXOpCode, headerDataPtr: UnsafeMutablePointer<Void>, headerDataLength: Int)
}
struct OBEXGetCommandResponseData {
  var serverResponseOpCode: OBEXOpCode
  var headerDataPtr: UnsafeMutablePointer<Void>
  var headerDataLength: Int
  init()
  init(serverResponseOpCode: OBEXOpCode, headerDataPtr: UnsafeMutablePointer<Void>, headerDataLength: Int)
}
struct OBEXSetPathCommandResponseData {
  var serverResponseOpCode: OBEXOpCode
  var headerDataPtr: UnsafeMutablePointer<Void>
  var headerDataLength: Int
  var flags: OBEXFlags
  var constants: OBEXConstants
  init()
  init(serverResponseOpCode: OBEXOpCode, headerDataPtr: UnsafeMutablePointer<Void>, headerDataLength: Int, flags: OBEXFlags, constants: OBEXConstants)
}
struct OBEXAbortCommandResponseData {
  var serverResponseOpCode: OBEXOpCode
  var headerDataPtr: UnsafeMutablePointer<Void>
  var headerDataLength: Int
  init()
  init(serverResponseOpCode: OBEXOpCode, headerDataPtr: UnsafeMutablePointer<Void>, headerDataLength: Int)
}
struct OBEXConnectCommandData {
  var headerDataPtr: UnsafeMutablePointer<Void>
  var headerDataLength: Int
  var maxPacketSize: OBEXMaxPacketLength
  var version: OBEXVersion
  var flags: OBEXFlags
  init()
  init(headerDataPtr: UnsafeMutablePointer<Void>, headerDataLength: Int, maxPacketSize: OBEXMaxPacketLength, version: OBEXVersion, flags: OBEXFlags)
}
struct OBEXDisconnectCommandData {
  var headerDataPtr: UnsafeMutablePointer<Void>
  var headerDataLength: Int
  init()
  init(headerDataPtr: UnsafeMutablePointer<Void>, headerDataLength: Int)
}
struct OBEXPutCommandData {
  var headerDataPtr: UnsafeMutablePointer<Void>
  var headerDataLength: Int
  var bodyDataLeftToSend: Int
  init()
  init(headerDataPtr: UnsafeMutablePointer<Void>, headerDataLength: Int, bodyDataLeftToSend: Int)
}
struct OBEXGetCommandData {
  var headerDataPtr: UnsafeMutablePointer<Void>
  var headerDataLength: Int
  init()
  init(headerDataPtr: UnsafeMutablePointer<Void>, headerDataLength: Int)
}
struct OBEXSetPathCommandData {
  var headerDataPtr: UnsafeMutablePointer<Void>
  var headerDataLength: Int
  var flags: OBEXFlags
  var constants: OBEXConstants
  init()
  init(headerDataPtr: UnsafeMutablePointer<Void>, headerDataLength: Int, flags: OBEXFlags, constants: OBEXConstants)
}
struct OBEXAbortCommandData {
  var headerDataPtr: UnsafeMutablePointer<Void>
  var headerDataLength: Int
  init()
  init(headerDataPtr: UnsafeMutablePointer<Void>, headerDataLength: Int)
}
struct OBEXErrorData {
  var error: OBEXError
  var dataPtr: UnsafeMutablePointer<Void>
  var dataLength: Int
  init()
  init(error: OBEXError, dataPtr: UnsafeMutablePointer<Void>, dataLength: Int)
}

/*!	@enum		OBEXSessionEventTypes
	@abstract	When a new session event occurs, your selector (or C callback) will be given an OBEXSessionEvent pointer,
				and in it will be a 'type' field with one of the following types in it. Based on that type, you can then
				read the corresponding field in the union to get out interesting data for that event type. For example,
				if the type of an event is a 'kOBEXSessionEventTypeConnectCommandResponseReceived', you should look in
				the 'OBEXConnectCommandResponseData' part of the structure's union to find more information pased to you
				in the event. Note that some you will never see, depending on the type of session you are using - a client
				or server. If you are a client (most likely case), you will never see the "Command" events, but instead
				you will only receive the "CommandResponse" events since you will be the issuer oft he commands, not the
				receiver of them. Both types of sessions will receive error type events.
*/
struct OBEXSessionEventTypes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXSessionEventTypeConnectCommandResponseReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeDisconnectCommandResponseReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypePutCommandResponseReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeGetCommandResponseReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeSetPathCommandResponseReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeAbortCommandResponseReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeConnectCommandReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeDisconnectCommandReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypePutCommandReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeGetCommandReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeSetPathCommandReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeAbortCommandReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeError: OBEXSessionEventTypes { get }
typealias OBEXSessionEventType = UInt32
struct OBEXSessionEvent {
  struct __Unnamed_union_u {
    var connectCommandResponseData: OBEXConnectCommandResponseData
    var disconnectCommandResponseData: OBEXDisconnectCommandResponseData
    var putCommandResponseData: OBEXPutCommandResponseData
    var getCommandResponseData: OBEXGetCommandResponseData
    var setPathCommandResponseData: OBEXSetPathCommandResponseData
    var abortCommandResponseData: OBEXAbortCommandResponseData
    var connectCommandData: OBEXConnectCommandData
    var disconnectCommandData: OBEXDisconnectCommandData
    var putCommandData: OBEXPutCommandData
    var getCommandData: OBEXGetCommandData
    var setPathCommandData: OBEXSetPathCommandData
    var abortCommandData: OBEXAbortCommandData
    var errorData: OBEXErrorData
    init(connectCommandResponseData: OBEXConnectCommandResponseData)
    init(disconnectCommandResponseData: OBEXDisconnectCommandResponseData)
    init(putCommandResponseData: OBEXPutCommandResponseData)
    init(getCommandResponseData: OBEXGetCommandResponseData)
    init(setPathCommandResponseData: OBEXSetPathCommandResponseData)
    init(abortCommandResponseData: OBEXAbortCommandResponseData)
    init(connectCommandData: OBEXConnectCommandData)
    init(disconnectCommandData: OBEXDisconnectCommandData)
    init(putCommandData: OBEXPutCommandData)
    init(getCommandData: OBEXGetCommandData)
    init(setPathCommandData: OBEXSetPathCommandData)
    init(abortCommandData: OBEXAbortCommandData)
    init(errorData: OBEXErrorData)
    init()
  }
  var type: OBEXSessionEventType
  var session: OBEXSessionRef
  var refCon: UnsafeMutablePointer<Void>
  var isEndOfEventData: DarwinBoolean
  var reserved1: UnsafeMutablePointer<Void>
  var reserved2: UnsafeMutablePointer<Void>
  var u: OBEXSessionEvent.__Unnamed_union_u
  init()
  init(type: OBEXSessionEventType, session: OBEXSessionRef, refCon: UnsafeMutablePointer<Void>, isEndOfEventData: DarwinBoolean, reserved1: UnsafeMutablePointer<Void>, reserved2: UnsafeMutablePointer<Void>, u: OBEXSessionEvent.__Unnamed_union_u)
}
typealias OBEXSessionEventCallback = @convention(c) (UnsafePointer<OBEXSessionEvent>) -> Void
var kCharsetStringISO88591: String { get }
var kCharsetStringUTF8: String { get }
var kEncodingStringQuotedPrintable: String { get }
var kEncodingStringBase64: String { get }
var kEncodingString8Bit: String { get }
var kOBEXHeaderIDKeyName: Unmanaged<CFString>!
var kOBEXHeaderIDKeyType: Unmanaged<CFString>!
var kOBEXHeaderIDKeyDescription: Unmanaged<CFString>!
var kOBEXHeaderIDKeyTimeISO: Unmanaged<CFString>!
var kOBEXHeaderIDKeyTime4Byte: Unmanaged<CFString>!
var kOBEXHeaderIDKeyTarget: Unmanaged<CFString>!
var kOBEXHeaderIDKeyHTTP: Unmanaged<CFString>!
var kOBEXHeaderIDKeyBody: Unmanaged<CFString>!
var kOBEXHeaderIDKeyEndOfBody: Unmanaged<CFString>!
var kOBEXHeaderIDKeyWho: Unmanaged<CFString>!
var kOBEXHeaderIDKeyAppParameters: Unmanaged<CFString>!
var kOBEXHeaderIDKeyAuthorizationChallenge: Unmanaged<CFString>!
var kOBEXHeaderIDKeyAuthorizationResponse: Unmanaged<CFString>!
var kOBEXHeaderIDKeyObjectClass: Unmanaged<CFString>!
var kOBEXHeaderIDKeyCount: Unmanaged<CFString>!
var kOBEXHeaderIDKeyLength: Unmanaged<CFString>!
var kOBEXHeaderIDKeyConnectionID: Unmanaged<CFString>!
var kOBEXHeaderIDKeyByteSequence: Unmanaged<CFString>!
var kOBEXHeaderIDKeyUnknownUnicodeText: Unmanaged<CFString>!
var kOBEXHeaderIDKeyUnknownByteSequence: Unmanaged<CFString>!
var kOBEXHeaderIDKeyUnknown1ByteQuantity: Unmanaged<CFString>!
var kOBEXHeaderIDKeyUnknown4ByteQuantity: Unmanaged<CFString>!
var kOBEXHeaderIDKeyUserDefined: Unmanaged<CFString>!

/*!	@function		OBEXGetHeaders
	@abstract		Take a data blob and looks for OBEX headers.
	@param			inData			The data chunk with the headers you are interested in.
	@param			inDataSize		The size of the buffer you are passing in.
	@result			A CFDictionary with the headers found in the data blob inside it.
	@discussion
	You should use this when your callback for PUTs, GETs, etc. give you a data chunk
	and a size. Pass these params to this function and you will receive a dictionary
	back full of the parse headers. You can use the CFDictionary calls to get objects
	out of it, based on the header keys defined above. You are responsible for releasing
	the CFDictionary returned to you.
	Example usage:
	<pre>
	CFDictionaryRef   dictionary = OBEXGetHeaders( data, dataLength );
	if( dictionary )
	{
		if( CFDictionaryGetCountOfKey( dictionary, kOBEXHeaderIDKeyName ) > 0 )
		{			
			CFStringRef theStringRef;
			
			theStringRef = (CFStringRef) CFDictionaryGetValue( dictionary, kOBEXHeaderIDKeyName );
			if( theStringRef )
			{				
				// Display it, use it as a filename, whatever.
			}
		}
		
		if( CFDictionaryGetCountOfKey( dictionary, kOBEXHeaderIDKeyConnectionID ) > 0 )
		{
			CFDataRef theDataRef;
			
			theDataRef = (CFDataRef) CFDictionaryGetValue( dictionary, kOBEXHeaderIDKeyConnectionID );
			if( theDataRef )
			{
				// now we have data representing the connection ID.
			}
		}
		
		CFRelease( dictionary );
	}
	</pre>
*/
func OBEXGetHeaders(inData: UnsafePointer<Void>, _ inDataSize: Int) -> CFDictionary!

/*!	@function		OBEXHeadersToBytes
	@abstract		Converts a dictionary of headers to a data pointer, from which you can extract as bytes and pass to
					the OBEX command/response functions.
	@param			dictionaryOfHeaders		dictionary that you have added headers to with the above OBEXAddXXXHeader functions.		
	@result			Mutable data ref containing the bytes of all headers.
	@discussion		Returns a CFMutableDataRef containing all the header data found in the dictionary, formatted according to
					the OBEX/IrMC spec. YOU MUST RELEASE IT when you are finished with it (ie. when the OBEX request is complete).
					All OBEX-specification defined headers are supported and should be returned to the dictionary. Use the
					keys defined above to get headers from dictionary. Example usage:
	<pre>
	Example usage:

	CFMutableDictionaryRef	dictionary;
	CFMutableDataRef		mGetHeadersDataRef;
	uint8_t* 				headerDataPtr;
	uint32_t 				headerDataLength;
	
	dictionary = CFDictionaryCreateMutable( kCFAllocatorDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks );
	
	// Package up desired headers.

	OBEXAddTypeHeader( CFSTR( "text/x-vCard" ), dictionary ); 

	mGetHeadersDataRef = OBEXHeadersToBytes( dictionary );

	headerDataPtr = CFDataGetBytePtr( mGetHeadersDataRef );
	headerDataLength = CFDataGetLength( mGetHeadersDataRef );
	
	// From here I can pass it to any OBEX command, such as OBEXPut...
	</pre>
					
*/
func OBEXHeadersToBytes(dictionaryOfHeaders: CFDictionary!) -> Unmanaged<CFMutableData>!

/*!	@function		OBEXAddNameHeader
	@abstract		Add a CFStringRef to a dictionary of OBEXheaders.
	@param			name		name you want to add to the OBEX header dictionary.			
	@param			dictRef		dictionary you have allocated to hold the headers. Make sure it's mutable.		
	@result			Error code, kOBEXSuccess (0) if success.
	@discussion		Name header - OBEX Spec, 2.2.2: (2-byte) Null terminated unicode string.
*/
func OBEXAddNameHeader(name: CFString!, _ dictRef: CFMutableDictionary!) -> OBEXError

/*!	@function		OBEXAddDescriptionHeader
	@abstract		Add a CFStringRef to a dictionary of OBEXheaders.
	@param			description		Description you want to add to the OBEX header dictionary.			
	@param			dictRef			dictionary you have allocated to hold the headers. Make sure it's mutable.		
	@result			Error code, kOBEXSuccess (0) if success.
	@discussion		Description header - OBEX Spec, 2.2.6: (2-byte) Null terminated unicode string.
*/
func OBEXAddDescriptionHeader(description: CFString!, _ dictRef: CFMutableDictionary!) -> OBEXError

/*!	@function		OBEXAddCountHeader
	@abstract		Add a CFStringRef to a dictionary of OBEXheaders.
	@param			count		Count value you want to add to the OBEX header dictionary.			
	@param			dictRef		dictionary you have allocated to hold the headers. Make sure it's mutable.		
	@result			Error code, kOBEXSuccess (0) if success.
	@discussion		Count header - OBEX Spec, 2.2.1: 4 byte unsigned integer
*/
func OBEXAddCountHeader(count: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError

/*!	@function		OBEXAddTime4ByteHeader
	@abstract		Add a CFStringRef to a dictionary of OBEXheaders.
	@param			time4Byte		4-byte time value you want to add to the OBEX header dictionary.			
	@param			dictRef			dictionary you have allocated to hold the headers. Make sure it's mutable.		
	@result			Error code, kOBEXSuccess (0) if success.
	@discussion		Time4Byte headers - OBEX Spec, 2.2.5: 4 Bytes
*/
func OBEXAddTime4ByteHeader(time4Byte: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError

/*!	@function		OBEXAddLengthHeader
	@abstract		Add a CFStringRef to a dictionary of OBEXheaders.
	@param			length			Value of Length header you want to add to the OBEX header dictionary.			
	@param			dictRef			dictionary you have allocated to hold the headers. Make sure it's mutable.		
	@result			Error code, kOBEXSuccess (0) if success.
	@discussion		Length header - OBEX Spec, 2.2.4: 4 byte unsigned integer
*/
func OBEXAddLengthHeader(length: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError

/*!	@function		OBEXAddTypeHeader
	@abstract		Add a CFStringRef to a dictionary of OBEXheaders.
	@param			type			String containing the type of header to add.
 	@param			dictRef			dictionary you have allocated to hold the headers. Make sure it's mutable.
	@result			Error code, kOBEXSuccess (0) if success.
	@discussion		Type header - OBEX Spec, 2.2.3: 1-byte Null terminated ascii string.
*/
func OBEXAddTypeHeader(type: CFString!, _ dictRef: CFMutableDictionary!) -> OBEXError

/*!	@function		OBEXAddTimeISOHeader
	@abstract		Add bytes to a dictionary of OBEXheaders.
	@param			inHeaderData		Time ISO 8601 header data, local times in format YYYYMMDDTHHMMSS and UTC in the format YYYYMMDDTHHMMSSZ.
	@param			inHeaderDataLength	Length of header data.
	@result			Error code, kOBEXSuccess (0) if success.
	@discussion		TimeISO header - OBEX Spec, 2.2.5: Byte Sequence
*/
func OBEXAddTimeISOHeader(inHeaderData: UnsafePointer<Void>, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError

/*!	@function		OBEXAddTargetHeader
	@abstract		Add bytes of data to a dictionary of OBEXheaders.
	@param			inHeaderData		Target header data.			
	@param			inHeaderDataLength	Length of Target header data.
	@param			dictRef				dictionary you have allocated to hold the headers. Make sure it's mutable.		
	@result			Error code, kOBEXSuccess (0) if success.
	@discussion		Target header - OBEX Spec, 2.2.7: Byte Sequence
*/
func OBEXAddTargetHeader(inHeaderData: UnsafePointer<Void>, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError

/*!	@function		OBEXAddHTTPHeader
	@abstract		Add bytes of data to a dictionary of OBEXheaders.
	@param			inHeaderData		HTTP header data.			
	@param			inHeaderDataLength	Length of HTTP header data.
	@param			dictRef				dictionary you have allocated to hold the headers. Make sure it's mutable.		
	@result			Error code, kOBEXSuccess (0) if success.
	@discussion		HTTP header - OBEX Spec, 2.2.8: Byte Sequence
*/
func OBEXAddHTTPHeader(inHeaderData: UnsafePointer<Void>, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError

/*!	@function		OBEXAddBodyHeader
	@abstract		Add bytes of data to a dictionary of OBEXheaders.
	@param			inHeaderData		Body header data.			
	@param			inHeaderDataLength	Length of Body header data.
	@param			isEndOfBody			Set this flag if you want an end of body header instead of a body header.
	@param			dictRef				dictionary you have allocated to hold the headers. Make sure it's mutable.		
	@result			Error code, kOBEXSuccess (0) if success.
	@discussion		Body,EndOfBody headers - OBEX Spec, 2.2.9: Byte Sequence
*/
func OBEXAddBodyHeader(inHeaderData: UnsafePointer<Void>, _ inHeaderDataLength: UInt32, _ isEndOfBody: Bool, _ dictRef: CFMutableDictionary!) -> OBEXError

/*!	@function		OBEXAddWhoHeader
	@abstract		Add bytes of data to a dictionary of OBEXheaders.
	@param			inHeaderData		Who header data.			
	@param			inHeaderDataLength	Length of Who header data.	
	@param			dictRef				dictionary you have allocated to hold the headers. Make sure it's mutable.		
	@result			Error code, kOBEXSuccess (0) if success.
	@discussion		Who headers - OBEX Spec, 2.2.10: Byte Sequence
*/
func OBEXAddWhoHeader(inHeaderData: UnsafePointer<Void>, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError

/*!	@function		OBEXAddConnectionIDHeader
	@abstract		Add bytes representing a connection ID to a dictionary of OBEX headers.
	@param			inHeaderData		Connection ID data. Should be 4 bytes in length only.
	@param			inHeaderDataLength	Length of Connection ID data. This should ONLY be set to equal 4.		
	@param			dictRef				dictionary you have allocated to hold the headers. Make sure it's mutable.		
	@result			Error code, kOBEXSuccess (0) if success.
	@discussion		ConnectionID headers - OBEX Spec, 2.2.10: Byte Sequence
					
					*** IMPORTANT NOTE: In bluetooth 1.0, using this function will allow you to pass in any value.
										You should not pass more than 4 bytes ever. In later releases, if the length
										passed is not 4, a kOBEXBadArgumentError error will be returned. ***
*/
func OBEXAddConnectionIDHeader(inHeaderData: UnsafePointer<Void>, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError

/*!	@function		OBEXAddApplicationParameterHeader
	@abstract		Add bytes representing an application parameter to a dictionary of OBEX headers.
	@param			inHeaderData		Application parameter data - should be tag/length/value triplets.
	@param			inHeaderDataLength	Length of application parameter data.		
	@param			dictRef				dictionary you have allocated to hold the headers. Make sure it's mutable.		
	@result			Error code, kOBEXSuccess (0) if success.
	@discussion		Application Request/Response Parameter headers - OBEX Spec, 2.2.11: Byte Sequence
*/
func OBEXAddApplicationParameterHeader(inHeaderData: UnsafePointer<Void>, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError

/*!	@function		OBEXAddByteSequenceHeader
	@abstract		Add a byte sequence header to a dictionary of OBEXheaders.
	@param			inHeaderData		bytes you want to put in the byte sequence header.			
	@param			inHeaderDataLength	length of the bytes you want to put in the byte sequence header.			
	@param			dictRef				dictionary you have allocated to hold the headers. Make sure it's mutable.		
	@result			Error code, kOBEXSuccess (0) if success.
	@discussion		Byte Sequence header - OBEX Spec, 2.2.5: Byte sequence. One thing of important note here - since we
					don't know what Header Identifier and length you intend to use here, you MUST include your own
					identifier and length in the data you pass. Thus, your data must be in this format:
						<1:HI><2:LENGTH><n:(<TAG><LENGTH><VALUE>)>
					Also, note that LENGTH = (3 + n), (1 for HI, 2 for the 2 bytes of length information, plus your n bytes of custom data).
					Be careful here to not mess up these values, as it could adversely affect the ability of the remote-device's headers parser.
*/
func OBEXAddByteSequenceHeader(inHeaderData: UnsafePointer<Void>, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError

/*!	@function		OBEXAddObjectClassHeader
	@abstract		Add an object class header to a dictionary of OBEXheaders.
	@param			inHeaderData		bytes you want to put in the object class header.			
	@param			inHeaderDataLength	length of the bytes you want to put in the object class header.			
	@param			dictRef				dictionary you have allocated to hold the headers. Make sure it's mutable.		
	@result			Error code, kOBEXSuccess (0) if success.
	@discussion		Object Class header - OBEX Spec, 2.2.15: Byte sequence.
*/
func OBEXAddObjectClassHeader(inHeaderData: UnsafePointer<Void>, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError

/*!	@function		OBEXAddAuthorizationChallengeHeader
	@abstract		Add an authorization challenge header to a dictionary of OBEXheaders.
	@param			inHeaderData		bytes you want to put in the authorization challenge header.			
	@param			inHeaderDataLength	length of the bytes you want to put in authorization challenge header.			
	@param			dictRef			dictionary you have allocated to hold the headers. Make sure it's mutable.		
	@result			Error code, kOBEXSuccess (0) if success.
	@discussion		Authorization Challenge header - OBEX Spec, 2.2.13: Authorization Challenge.
*/
func OBEXAddAuthorizationChallengeHeader(inHeaderData: UnsafePointer<Void>, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError

/*!	@function		OBEXAddAuthorizationResponseHeader
	@abstract		Add an authorization Response header to a dictionary of OBEXheaders.
	@param			inHeaderData		bytes you want to put in the authorization Response header.			
	@param			inHeaderDataLength	length of the bytes you want to put in authorization Response header.			
	@param			dictRef			dictionary you have allocated to hold the headers. Make sure it's mutable.		
	@result			Error code, kOBEXSuccess (0) if success.
	@discussion		Authorization Response header - OBEX Spec, 2.2.14: Authorization Response.
*/
func OBEXAddAuthorizationResponseHeader(inHeaderData: UnsafePointer<Void>, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError

/*!	@function		OBEXAddUserDefinedHeader
	@abstract		Add a user-defined custom header to a dictionary of OBEXheaders.
	@param			inHeaderData		bytes you want to put in the user-defined header.			
	@param			inHeaderDataLength	length of the bytes you want to put in user-defined header.			
	@param			dictRef			dictionary you have allocated to hold the headers. Make sure it's mutable.		
	@result			Error code, kOBEXSuccess (0) if success.
	@discussion		User Defined header - OBEX Spec, 2.2.20: User Defined Headers.
*/
func OBEXAddUserDefinedHeader(inHeaderData: UnsafePointer<Void>, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError
typealias IOBluetoothOBEXSessionOpenConnectionCallback = @convention(c) (OBEXSessionRef, OBEXError, UnsafeMutablePointer<Void>) -> Void
var kIOBluetoothDeviceNotificationNameConnected: String { get }
var kIOBluetoothDeviceNotificationNameDisconnected: String { get }
var kIOBluetoothDeviceNameChangedNotification: String { get }
var kIOBluetoothDeviceInquiryInfoChangedNotification: String { get }
var kIOBluetoothDeviceServicesChangedNotification: String { get }
var kIOBluetoothL2CAPChannelMaxAllowedIncomingMTU: String { get }
var kIOBluetoothL2CAPChannelDesiredOutgoingMTU: String { get }
protocol IOBluetoothDeviceAsyncCallbacks {
  func remoteNameRequestComplete(device: IOBluetoothDevice!, status: IOReturn)
  func connectionComplete(device: IOBluetoothDevice!, status: IOReturn)
  func sdpQueryComplete(device: IOBluetoothDevice!, status: IOReturn)
}

/*!
 	@class IOBluetoothDevice
	@abstract An instance of IOBluetoothDevice represents a single remote Bluetooth device.
	@discussion	An IOBluetoothDevice object may exist independent of the existence of a baseband connection
                with the target device.  Using this object, a client can request creation and destruction of baseband
                connections, and request the opening of L2CAP and RFCOMM channels on the remote device.  Many of the other
                APIs in the IOBluetooth framework will return this object, or it's C counterpart (IOBluetoothDeviceRef).
*/
class IOBluetoothDevice : IOBluetoothObject, NSCoding, NSSecureCoding {

  /*!
      @property	registerForConnectNotifications:selector:
  	@abstract	Allows a client to register for device connect notifications for any connection.
  	@discussion	The given selector will be called on the target observer whenever any device connection is made.
  				The selector should accept two arguments.  The first is the user notification object.  The second
  				is the device that was connected.
  	@param		observer	Target observer object
  	@param		inSelector	Selector to be sent to the observer when a new connection is made
  	@result		Returns an IOBluetoothUserNotification representing the outstanding device connect notification.
  				To unregister the notification, call -unregister on the returned IOBluetoothUserNotification 
  				object.  If an error is encountered creating the notification, nil is returned.  The returned
  				IOBluetoothUserNotification object will be valid for as long as the notification is registered.
  				It is not necessary to retain the result.  Once -unregister is called on it, it will no longer
  				be valid.
  */
  class func registerForConnectNotifications(observer: AnyObject!, selector inSelector: Selector) -> IOBluetoothUserNotification!

  /*!
      @property	registerForDisconnectNotification:selector:
  	@abstract	Allows a client to register for device disconnect notification.
  	@discussion	The given selector will be called on the target observer when the target device's connection is 
  				closed.  The selector should contain two arguments.  The first is the user notification object.  The second
  				is the IOBluetoothDevice that was disconnected.
  	@param		observer	Target observer object
  	@param		inSelector	Selector to be sent to the observer when the connection is destroyed
  	@result		Returns an IOBluetoothUserNotification representing the outstanding device disconnect notification.
  				To unregister the notification, call -unregister of the returned IOBluetoothUserNotification 
  				object.  If an error is encountered creating the notification, nil is returned.
  */
  func registerForDisconnectNotification(observer: AnyObject!, selector inSelector: Selector) -> IOBluetoothUserNotification!

  /*!
      @property	deviceWithAddress:
  	@abstract	Returns the IOBluetoothDevice object for the given BluetoothDeviceAddress
  	@discussion	Within a single application, there will be only one instance of IOBluetoothDevice for a
                  given remote device address.
  	@param		address	Pointer to a BluetoothDeviceAddress for which an IOBluetoothDevice instance is desired
  	@result		Returns the IOBluetoothDevice object for the given BluetoothDeviceAddress
  */
  convenience init!(address: UnsafePointer<BluetoothDeviceAddress>)

  /*!
   @property	deviceWithAddressString:
   @abstract	Returns the IOBluetoothDevice object for the given BluetoothDeviceAddress
   @discussion	Within a single application, there will be only one instance of IOBluetoothDevice for a
   given remote device address.
   @param		address	Pointer to an NSString containing the BD_ADDR for which an IOBluetoothDevice instance is desired.  The string should be of the form xx:xx:xx:xx:xx:xx
   @result		Returns the IOBluetoothDevice object for the given BluetoothDeviceAddress
   */
  convenience init!(addressString address: String!)

  /*!
      @property	openL2CAPChannelSync:withPSM:delegate:
  	@abstract	Opens a new L2CAP channel to the target device. Returns only after the channel is opened.
  	@discussion	This method will begin the process of opening a new L2CAP channel to the target device.  
                  The baseband connection to the device will be opened if it is not open already.  The L2CAP
                  channel open process will not complete until the client has registered an incoming data 
                  listener on the new channel.  This prevents a situation where the channel succeeds
                  in being configured and opened and receives data before the client is listening and
                  is ready for it.
  
  				NOTE: This method is only available in Mac OS X 10.2.5 (Bluetooth v1.2) or later.
  	@param		newChannel		A pointer to an IOBluetoothL2CAPChannel object to receive the L2CAP channel 
                                  requested to be opened.  The newChannel pointer will only be set if 
                                  kIOReturnSuccess is returned.
  	@param		withPSM			The L2CAP PSM value for the new channel.
  	@param		channelDelegate the object that will play the role of delegate for the channel.
  				A channel delegate is the object the l2cap uses as target for  data and events. The
  				developer will implement only the the methods he/she is interested in. A list of the
  				possible methods is at the end of the file "IOBluetoothL2CAPChannel.h" in the definition
  				of the protocol IOBluetoothL2CAPChannelDelegate.
  				
  	@result		Returns kIOReturnSuccess if the open process was successfully started (or if an existing
                  L2CAP channel was found). 
  */
  func openL2CAPChannelSync(newChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothL2CAPChannel?>, withPSM psm: BluetoothL2CAPPSM, delegate channelDelegate: AnyObject!) -> IOReturn

  /*!
      @property	openL2CAPChannelAsync:withPSM:delegate:
  	@abstract	Opens a new L2CAP channel to the target device. Returns immediately after starting the opening process.
  	@discussion	This method will begin the process of opening a new L2CAP channel to the target device.  
                  The baseband connection to the device will be opened if it is not open already.  The L2CAP
                  channel open process will not complete until the client has registered an incoming data 
                  listener on the new channel.  This prevents a situation where the channel succeeds
                  in being configured and opened and receives data before the client is listening and
                  is ready for it.
  
  				NOTE: This method is only available in Mac OS X 10.2.5 (Bluetooth v1.2) or later.
  	@param		newChannel		A pointer to an IOBluetoothL2CAPChannel object to receive the L2CAP channel 
                                  requested to be opened.  The newChannel pointer will only be set if 
                                  kIOReturnSuccess is returned.
  	@param		psm				The L2CAP PSM value for the new channel.
  	@param		channelDelegate the object that will play the role of delegate for the channel.
  				A channel delegate is the object the l2cap uses as target for  data and events. The
  				developer will implement only the the methods he/she is interested in. A list of the
  				possible methods is at the end of the file "IOBluetoothL2CAPChannel.h" in the definition
  				of the protocol IOBluetoothL2CAPChannelDelegate.
  				
  	@result		Returns kIOReturnSuccess if the open process was successfully started (or if an existing
                  L2CAP channel was found). 
  */
  func openL2CAPChannelAsync(newChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothL2CAPChannel?>, withPSM psm: BluetoothL2CAPPSM, delegate channelDelegate: AnyObject!) -> IOReturn

  /*!
      @property	sendL2CAPEchoRequest:length:
  	@abstract	Send an echo request over the L2CAP connection to a remote device.
  	@discussion	The current implementation returns when the request has been sent, but does not indicate when
                  a response is received.  Also, the baseband connection must be up for the echo request to be sent.
                  In the future, this method will also open the connection if necessary.  The API will be updated
                  to allow the client to be informed when the echo response has been received (both synchronously
                  and asynchronously).
  	@param		data	(void *) - Pointer to buffer to send.
  	@param		length	(UInt16) - Length of the buffer to send
  	@result		Returns kIOReturnSuccess if the echo request was able to be sent.
  */
  func sendL2CAPEchoRequest(data: UnsafeMutablePointer<Void>, length: UInt16) -> IOReturn

  /*!
      @property	openRFCOMMChannelSync:withChannelID:delegate:
  	@abstract	Opens a new RFCOMM channel to the target device.  Returns only once the channel is open or failed to open.
  	@discussion	This method will begin the process of opening a new RFCOMM channel to the target device.  
                  The baseband connection to the device will be opened if it is not open already.  The RFCOMM
                  channel open process will not complete until the client has registered an incoming data 
                  listener on the new channel. The RFCOMM channel object is already retained when this function returns success;
  				the channel must be released when the caller is done with it.
  
  				You should verify that the channel you wish to open exists on the remote device before attempting to open it,
  				by performing an SDP query. This is recommended because the service might have been removed from the,
  				remote device or the channel assignments for the service could have changed (this is rare, but it does happen
  				frequently on some devices). This also works around a bug that existed in early Leopard versions in certain
  				situations where the method would return an error; in these instances, the desired RFCOMM channel could not
  				be opened again until the calling app was restarted.
  
  				NOTE:	This method is only available in Mac OS X 10.2.5 (Bluetooth v1.2) or later.
  						
  	@param		rfcommChannel	A pointer to an IOBluetoothRFCOMMChannel object to receive the RFCOMM channel 
                                  requested to be opened.  The rfcommChannel pointer will only be set if 
                                  kIOReturnSuccess is returned.
  
  	@param		channelID		The RFCOMM channel ID for the new channel.
  								
  	@param		channelDelegate the object that will play the role of delegate for the channel.
  				A channel delegate is the object the rfcomm uses as target for  data and events. The
  				developer will implement only the the methods he/she is interested in. A list of the
  				possible methods is at the end of the file "IOBluetoothRFCOMMChannel.h" in the definition
  				of the protocol IOBluetoothRFCOMMChannelDelegate.
  
  	@result		Returns kIOReturnSuccess if the open process was successfully started (or if an existing
                  RFCOMM channel was found). The channel must be released when the caller is done with it.
  */
  func openRFCOMMChannelSync(rfcommChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothRFCOMMChannel?>, withChannelID channelID: BluetoothRFCOMMChannelID, delegate channelDelegate: AnyObject!) -> IOReturn

  /*!
      @property	openRFCOMMChannelAsync:withChannelID:delegate:
  	@abstract	Opens a new RFCOMM channel to the target device. Returns immediately.
  	@discussion	This method will begin the process of opening a new RFCOMM channel to the target device.  
                  The baseband connection to the device will be opened if it is not open already.  The RFCOMM
                  channel open process will not complete until the client has registered an incoming data 
                  listener on the new channel. The RFCOMM channel object is already retained when this function returns success;
  				the channel must be released when the caller is done with it.
  					
  				You should verify that the channel you wish to open exists on the remote device before attempting to open it,
  				by performing an SDP query. This is recommended because the service might have been removed from the,
  				remote device or the channel assignments for the service could have changed (this is rare, but it does happen
  				frequently on some devices). This also works around a bug that existed in early Leopard versions in certain
  				situations where the method would return an error; in these instances, the desired RFCOMM channel could not
  				be opened again until the calling app was restarted.
  
  				NOTE: This method is only available in Mac OS X 10.2.5 (Bluetooth v1.2) or later.
  				
  	@param		rfcommChannel	A pointer to an IOBluetoothRFCOMMChannel object to receive the RFCOMM channel 
                                  requested to be opened.  The rfcommChannel pointer will only be set if 
                                  kIOReturnSuccess is returned.
  
  	@param		channelID		The RFCOMM channel ID for the new channel.
  								
  	@param		channelDelegate the object that will play the role of delegate for the channel.
  				A channel delegate is the object the rfcomm uses as target for  data and events. The
  				developer will implement only the the methods he/she is interested in. A list of the
  				possible methods is at the end of the file "IOBluetoothRFCOMMChannel.h" in the definition
  				of the protocol IOBluetoothRFCOMMChannelDelegate.
  
  	@result		Returns kIOReturnSuccess if the open process was successfully started (or if an existing
                  RFCOMM channel was found). The channel must be released when the caller is done with it.
  */
  func openRFCOMMChannelAsync(rfcommChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothRFCOMMChannel?>, withChannelID channelID: BluetoothRFCOMMChannelID, delegate channelDelegate: AnyObject!) -> IOReturn

  /*!
      @property	getClassOfDevice
  	@abstract	Gets the full class of device value for the remote device.
  	@discussion	This value is only meaningful if the target device has been seen during an inquiry.  This can be
                  by checking the result of -getLastInquiryUpdate.  If nil is returned, then the device hasn't been
                  seen.
  	@result		Returns the class of device for the remote device.
  */
  var classOfDevice: BluetoothClassOfDevice { get }

  /*!
      @property	getServiceClassMajor
  	@abstract	Get the major service class of the device.
  	@discussion	This value is only meaningful if the target device has been seen during an inquiry.  This can be
                  by checking the result of -getLastInquiryUpdate.  If nil is returned, then the device hasn't been
                  seen.
  	@result		Returns the major service class of the device.
  */
  var serviceClassMajor: BluetoothServiceClassMajor { get }

  /*!
      @property	getDeviceClassMajor
  	@abstract	Get the major device class of the device.
  	@discussion	This value is only meaningful if the target device has been seen during an inquiry.  This can be
                  by checking the result of -getLastInquiryUpdate.  If nil is returned, then the device hasn't been
                  seen.
  	@result		Returns the major device class of the remote device.
  */
  var deviceClassMajor: BluetoothDeviceClassMajor { get }

  /*!
      @property	getDeviceClassMinor
  	@abstract	Get the minor service class of the device.
  	@discussion	This value is only meaningful if the target device has been seen during an inquiry.  This can be
                  by checking the result of -getLastInquiryUpdate.  If nil is returned, then the device hasn't been
                  seen.
  	@result		Returns the minor device class of the remote device.
  */
  var deviceClassMinor: BluetoothDeviceClassMinor { get }

  /*!
      @property	getName
  	@abstract	Get the human readable name of the remote device.
  	@discussion	This only returns a value if a remote name request has been performed on the target device.  If a
                  successful remote name request has not been completed, nil is returned.  To perform a remote
                  name request, call -remoteNameRequest.  If a remote name request has been successfully completed, 
                  the method -getLastNameUpdate will return the date/time of the last successful request.
  	@result		Returns the name of the remote device name.  This value is an NSString generated from the UTF-8
                  format of the most recent remote name request.
  */
  var name: String! { get }

  /*!
      @property	getNameOrAddress
  	@abstract	Get the human readable name of the remote device.  If the name is not present, it will return a string
                  containing the device's address.
  	@discussion	If a remote name request has been successfully completed, the device name will be returned.  If not,
                  a string containg the device address in the format of "XX-XX-XX-XX-XX-XX" will be returned.
      @result		Returns the device's name or a string containing the device's address.
  */
  var nameOrAddress: String! { get }

  /*!
      @property	getLastNameUpdate
  	@abstract	Get the date/time of the last successful remote name request.
  	@result		Returns the date/time of the last successful remote name request.  If no remote name request has been
                  completed on the target device, nil is returned.
  */
  var lastNameUpdate: NSDate! { get }

  /*!
      @property	getAddress
  	@abstract	Get the Bluetooth device address for the target device.
  	@result		Returns a pointer to the Bluetooth device address of the target device.
  */
  func getAddress() -> UnsafePointer<BluetoothDeviceAddress>

  /*!
      @property	getAddressString
  	@abstract	Get a string representation of the Bluetooth device address for the target device.  The
  				format of the string is the same as returned by IOBluetoothNSStringFromDeviceAddress().
  	@discussion	NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@result		Returns an NSString containing the Bluetooth device address of the target device.
  */
  var addressString: String! { get }

  /*!
      @property	getPageScanRepetitionMode
  	@abstract	Get the value of the page scan repetition mode for the device.
  	@discussion	This value is only meaningful if the target device has been seen during an inquiry.  This can be
                  by checking the result of -getLastInquiryUpdate.  If nil is returned, then the device hasn't been
                  seen.
  	@result		Returns the page scan repetition mode value for this device.
  */
  func getPageScanRepetitionMode() -> BluetoothPageScanRepetitionMode

  /*!
      @property	getPageScanPeriodMode
  	@abstract	Get the value of the page scan period mode for the device.
  	@discussion	This value is only meaningful if the target device has been seen during an inquiry.  This can be
                  by checking the result of -getLastInquiryUpdate.  If nil is returned, then the device hasn't been
                  seen.
  	@result		Returns page scan period mode value for the device.
  */
  func getPageScanPeriodMode() -> BluetoothPageScanPeriodMode

  /*!
      @property	getPageScanMode
  	@abstract	Get the page scan mode for the device.
  	@discussion	This value is only meaningful if the target device has been seen during an inquiry.  This can be
                  by checking the result of -getLastInquiryUpdate.  If nil is returned, then the device hasn't been
                  seen.
  	@result		Returns the value for the page scan mode for the device.
  */
  func getPageScanMode() -> BluetoothPageScanMode

  /*!
      @property	getClockOffset
  	@abstract	Get the clock offset value of the device.
  	@discussion	This value is only meaningful if the target device has been seen during an inquiry.  This can be
                  by checking the result of -getLastInquiryUpdate.  If nil is returned, then the device hasn't been
                  seen.
  	@result		Returns the clock offset value for the device.
  */
  func getClockOffset() -> BluetoothClockOffset

  /*!
      @property	getLastInquiryUpdate
  	@abstract	Get the date/time of the last time the device was returned during an inquiry.
  	@result		Returns the date/time of the last time the device was seen during an inquiry.
                  If the device has never been seen during an inquiry, nil is returned.
  */
  func getLastInquiryUpdate() -> NSDate!

  /*!
      @property	RSSI
  	@abstract	Get the RSSI device (if connected), above or below the golden range. If the RSSI is within the golden
  				range, a value of 0 is returned. For the actual RSSI value, use getRawRSSI. For more information, see
  				the Bluetooth 4.0 Core Specification.
  	@result		Returns the RSSI of the device. If the value cannot be read (e.g. the device is disconnected), a value 
  				of +127 will be returned.
  */
  @available(OSX 10.7, *)
  func rssi() -> BluetoothHCIRSSIValue

  /*!
      @property	rawRSSI
  	@abstract	Get the raw RSSI device (if connected).
  	@result		Returns the raw RSSI of the device.
  	@discussion	This value is the perceived RSSI value, not relative the the golden range (see getRSSI for that value).
  				This value will not available on all Bluetooth modules. If the value cannot be read (e.g. the device
  				is disconnected) or is not available on a module, a value of +127 will be returned.
  */
  @available(OSX 10.7, *)
  func rawRSSI() -> BluetoothHCIRSSIValue

  /*!
      @property	isConnected
  	@abstract	Indicates whether a baseband connection to the device exists.
  	@result		Returns YES if a baseband connection to the device exists.
  */
  func isConnected() -> Bool

  /*!
      @property	openConnection
  	@abstract	Create a baseband connection to the device.
  	@discussion	This method is synchronous and will not return until either a connection has been established
                  or the create connection has failed (perhaps timed out).  This method does the same thing as
  				calling -openConnection: with a nil target.	 This call with proceed without authentication required, and
  				using the default page timeout value.  If authentication or a non-default page timeout is required the method
  				-openConnection:withPageTimeout:authenticationRequired: should be used instead.	
  				
  				As of Mac OS X 10.7, this method will no longer mask out "Connection Exists" 'errors' with a success result code;
  				your code must account for the cases where the baseband connection is already open.
  										
  	@result		Returns kIOReturnSuccess if the connection was successfully created.
  */
  func openConnection() -> IOReturn

  /*!
      @property	openConnection:
  	@abstract	Create a baseband connection to the device.
  	@discussion	If a target is specified, the open connection call is asynchronous and on completion of the 
  				CREATE_CONNECTION command, the method -connectionComplete:status: will be called on the specified target.  
  				If no target is specified, the call is synchronous and will not return until the connection is open
  				or the CREATE_CONNECTION call has failed.  This call with proceed without authentication required, and
  				using the default page timeout value.  If authentication or a non-default page timeout is required the method
  				-openConnection:withPageTimeout:authenticationRequired: should be used instead.
  
  				As of Mac OS X 10.7, this method will no longer mask out "Connection Exists" 'errors' with a success result code;
  				your code must account for the cases where the baseband connection is already open.
  
  	@result		Returns kIOReturnSuccess if the connection was successfully created (or if asynchronous, if the
  				CREATE_CONNECTION command was successfully issued).
  */
  func openConnection(target: AnyObject!) -> IOReturn

  /*!
      @property	openConnection:withPageTimeout:authenticationRequired:
  	@abstract	Create a baseband connection to the device.
  	@discussion	If a target is specified, the open connection call is asynchronous and on completion of the 
  				CREATE_CONNECTION command, the method -connectionComplete:status: will be called on the specified target.  
  				If no target is specified, the call is synchronous and will not return until the connection is open
  				or the CREATE_CONNECTION call has failed.
  
  				NOTE: This method is only available in Mac OS X 10.2.7 (Bluetooth v1.3) or later.
  
  				As of Mac OS X 10.7, this method will no longer mask out "Connection Exists" 'errors' with a success result code;
  				your code must account for the cases where the baseband connection is already open.
  
  	@param		target The target to message when the create connection call is complete
  	@param		pageTimeoutValue The page timeout value to use for this call
  	@param		authenticationRequired BOOL value to indicate whether authentication should be required for the connection
  	@result		Returns kIOReturnSuccess if the connection was successfully created (or if asynchronous, if the
  				CREATE_CONNECTION command was successfully issued).
  */
  func openConnection(target: AnyObject!, withPageTimeout pageTimeoutValue: BluetoothHCIPageTimeout, authenticationRequired: Bool) -> IOReturn

  /*!
      @property	closeConnection
  	@abstract	Close down the baseband connection to the device.
  	@discussion	This method is synchronous and will not return until the connection has been closed (or the 
                  command failed).  In the future this API will be changed to allow asynchronous operation.
      @result		Returns kIOReturnSuccess if the connection has successfully been closed.
  */
  func closeConnection() -> IOReturn

  /*!
      @property	remoteNameRequest:
  	@abstract	Issues a remote name request to the target device.
  	@discussion	If a target is specified, the request is asynchronous and on completion of the request, the method
   
  				- (void)remoteNameRequestComplete:(IOBluetoothDevice *)device status:(IOReturn)status;
  
                  will be called on the specified target. If no target is specified, the request is made synchronously
   				and won't return until the request is complete.  This call with operate with the default page
   				timeout value. If a different page timeout value is desired, the method -remoteNameRequest:withPageTimeout:
   				should be used instead.
  	@param		target The target to message when the remote name request is complete
      @result		Returns kIOReturnSuccess if the remote name request was successfully issued (and if synchronous, if
                  the request completed successfully).
  */
  func remoteNameRequest(target: AnyObject!) -> IOReturn

  /*!
      @property	remoteNameRequest:withPageTimeout:
  	@abstract	Issues a remote name request to the target device.
  	@discussion	If a target is specified, the request is asynchronous and on completion of the REMOTE_NAME_REQUEST
                  command, the method -remoteNameRequestComplete:status:name: will be called on the specified target.
                  If no target is specified, the request is made synchronously and won't return until the request is 
                  complete.
  
  				NOTE: This method is only available in Mac OS X 10.2.7 (Bluetooth v1.3) or later.
  	@param		target The target to message when the remote name request is complete
  	@param		pageTimeoutValue The page timeout value to use for this call
      @result		Returns kIOReturnSuccess if the remote name request was successfully issued (and if synchronous, if
                  the request completed successfully).
  */
  func remoteNameRequest(target: AnyObject!, withPageTimeout pageTimeoutValue: BluetoothHCIPageTimeout) -> IOReturn

  /*!
      @property	requestAuthentication
  	@abstract	Requests that the existing baseband connection be authenticated.
  	@discussion	In order to authenticate a baseband connection, a link key needs to be generated as a result of 
                  the pairing process.  This call will synchronously initiate the pairing process with the target device
                  and not return until the authentication process is complete.  This API will be updated to allow
                  for asynchronous operation.
      @result		Returns kIOReturnSuccess if the connection has been successfully been authenticated.  Returns an error
                  if authentication fails or no baseband connection exists.
  */
  func requestAuthentication() -> IOReturn

  /*!
      @property	getConnectionHandle
  	@abstract	Get the connection handle for the baseband connection.
  	@discussion	This method only returns a valid result if a baseband connection is present (-isConnected returns TRUE).
  	@result		Returns the connection handle for the baseband connection.  If no baseband connection is present,
                  kBluetoothConnectionHandleNone is returned.
  */
  var connectionHandle: BluetoothConnectionHandle { get }

  /*!
      @property	isIncoming
  	@abstract	Returns TRUE if the device connection was generated by the remote host.
      @discussion	Returns TRUE if the device connection was generated by the remote host. False if the connection was generated by some other device that connected to the local host.
  
  				NOTE: This method is only available in Mac OS X 10.2.7 (Bluetooth v1.3) or later.
  	@result		Returns TRUE if the device connection was generated by the remote host.
  */
  func isIncoming() -> Bool

  /*!
      @property	getLinkType
  	@abstract	Get the link type for the baseband connection.
  	@discussion	This method only returns a valid result if a baseband connection is present (-isConnected returns TRUE).
  	@result		Returns the link type for the baseband connection.  If no baseband connection is present,
                  kBluetoothLinkTypeNone is returned.
  */
  func getLinkType() -> BluetoothLinkType

  /*!
      @property	getEncryptionMode
  	@abstract	Get the encryption mode for the baseband connection.
  	@discussion	This method only returns a valid result if a baseband connection is present (-isConnected returns TRUE).
  	@result		Returns the encryption mode for the baseband connection.  If no baseband connection is present,
                  kEncryptionDisabled is returned.
  */
  func getEncryptionMode() -> BluetoothHCIEncryptionMode

  /*!
      @property	performSDPQuery:
  	@abstract	Performs an SDP query on the target device.
  	@discussion	As a result of this call, a baseband connection will be built to the device (if not already connected).
  				Then, an L2CAP channel will be opened to the SDP server on the device.  At that point, a Service
  				Search Attribute request will be issued with a UUID of 0x0100 (L2CAP) and an attribute range of
  				0x0000 - 0xffff specified.  This will cause the SDP server to return all attributes of all L2CAP-derived 
  				services on the device.  The results essentially encompass all services on the device.
  				This function is always asynchronous.  If a target is specified, when the SDP query is complete (or
  				an error is encountered), the method -sdpQueryComplete:status: will be called on the given target.  If no target 
  				is specified, the request is still asynchronous, but no callback will be made.  That can be useful if the client 
  				has	registered for SDP service changed notifications.
  	@param		target The target to message when the SDP query is complete
      @result		Returns kIOReturnSuccess if the SDP query was successfully started.
  */
  func performSDPQuery(target: AnyObject!) -> IOReturn

  /*!
   @property	performSDPQuery:uuids:
   @abstract	Performs an SDP query on the target device with the specified service UUIDs.
   @discussion	As a result of this call, a baseband connection will be built to the device (if not already connected).
   Then, an L2CAP channel will be opened to the SDP server on the device.  At that point, a Service
   Search Attribute request will be issued for each service UUID specified in the UUID array.
   
   This function is always asynchronous.  If a target is specified, when the SDP query is complete (or
   an error is encountered), the method -sdpQueryComplete:status: will be called on the given target.  If no target 
   is specified, the request is still asynchronous, but no callback will be made.  That can be useful if the client 
   has	registered for SDP service changed notifications.
   @param		target The target to message when the SDP query is complete
   @param		uuidArray An array of IOBluetoothSDPUUID objects for each service the caller is interested in
   
   @result		Returns kIOReturnSuccess if the SDP query was successfully started.
   */
  @available(OSX 10.7, *)
  func performSDPQuery(target: AnyObject!, uuids uuidArray: [AnyObject]!) -> IOReturn

  /*!
      @property	services
  	@abstract	Gets an array of service records for the device.
  	@discussion	The resulting array contains IOBluetoothSDPServiceRecord objects.  The service records are only
                  present if an SDP query has been done on the target object.  This can be determined by calling
                  -getLastServicesUpdate.  It will return the last date/time of the SDP query. To initiate an
  				SDP query on a device, use -performSDPQuery: as defined above.
                  
                  Instead of allowing individual clients to query for different services and service attributes,
                  the system request all of the device's services and service attributes.
  	@result		Returns an array of service records for the device if an SDP query has been performed.  If no
                  SDP query has been performed, nil is returned.
  */
  var services: [AnyObject]! { get }

  /*!
      @property	getLastServicesUpdate
  	@abstract	Get the date/time of the last SDP query.
  	@result		Returns the date/time of the last SDP query.  If an SDP query has never been performed on the
                  device, nil is returned.
  */
  func getLastServicesUpdate() -> NSDate!

  /*!
      @property	getServiceRecordForUUID
  	@abstract	Search for a service record containing the given UUID.
  	@discussion	This method searches through the device's services to find a service that contains the given
                  UUID.  Only the first service record will be returned.  This method only operates on services
                  that have already been queried.  It will not initiate a new query.  This method should probably 
                  be updated to return an array of service records if more than one contains the UUID.  
      @param		sdpUUID UUID value to search for.  
  	@result		Returns the first service record that contains the given uuid.  If no service record is found,
                  nil is returned.
  */
  func getServiceRecordFor(sdpUUID: IOBluetoothSDPUUID!) -> IOBluetoothSDPServiceRecord!

  /*!
      @property	favoriteDevices
  	@abstract	Gets an array of the user's favorite devices.
  	@discussion	The resulting array contains IOBluetoothDevice objects.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@result		Returns an array of device objects representing the user's favorite devices.  If the
  				user has no favorites, nil is returned.
  */
  class func favoriteDevices() -> [AnyObject]!

  /*!
      @property	isFavorite
  	@abstract	Reports whether the target device is a favorite for the user.
  	@discussion	NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@result		Returns TRUE if the target device is a favorite for the user, FALSE if not.
  */
  func isFavorite() -> Bool

  /*!
      @property	addToFavorites
  	@abstract	Adds the target device to the user's favorite devices list.
  	@discussion	NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@result		Returns kIOReturnSuccess if the device was successfully added to the user's
  				list of favorite devices.
  */
  func addToFavorites() -> IOReturn

  /*!
      @property	removeFromFavorites
  	@abstract	Removes the target device from the user's favorite devices list.
  	@discussion	NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@result		Returns kIOReturnSuccess if the device was successfully removed from the user's
  				list of favorite devices.
  */
  func removeFromFavorites() -> IOReturn

  /*!
      @property	recentDevices
  	@abstract	Gets an array of recently used Bluetooth devices.
  	@discussion	The resulting array contains IOBluetoothDevice objects sorted in reverse chronological order.
  				The most recently accessed devices are first.  If the numDevices parameter is 0, all devices 
  				accessed by the system are returned.  If numDevices is non-zero, only the most recent devices
  				are returned.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
      @param		numDevices The number of devices to return.
  	@result		Returns an array of device objects recently used by the system.  If no devices have been accessed,
  				nil is returned.
  */
  class func recentDevices(numDevices: UInt) -> [AnyObject]!

  /*!
      @property	recentAccessDate
  	@abstract	Returns the date/time of the most recent access of the target device.
  	@discussion	This is the date that -recentDevices uses to sort its list of the most recently accessed
  				devices.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@result		Returns the date/time of the most recent access of the target device.  If the device
  				has not been accessed, nil is returned.
  */
  func recentAccessDate() -> NSDate!

  /*!
      @property	pairedDevices
  	@abstract	Gets an array of all of the paired devices on the system.
  	@discussion	The resulting array contains IOBluetoothDevice objects.  The paired devices are currently NOT stored
  				per user, so this is all devices paired by any user.
  
  				NOTE: This method is only available in Mac OS X 10.2.5 (Bluetooth v1.2) or later.
  	@result		Returns an array of device objects for all of the paired devices on the system.  If there are
  				no paired devices, nil is returned.
  */
  class func pairedDevices() -> [AnyObject]!

  /*!
      @property	isPaired
  	@abstract	Returns whether the target device is paired.
  	@discussion	NOTE: This method is only available in Mac OS X 10.2.5 (Bluetooth v1.2) or later.
  	@result		Returns TRUE if the target device is paired, FALSE if not.
  */
  func isPaired() -> Bool

  /*!
      @property	setSupervisionTimeout
  	@abstract	Sets the connection supervision timeout.
  	@discussion	NOTE: This method is only available in Mac OS X 10.5 (Bluetooth v2.0) or later.
  	@param		timeout A client-supplied link supervision timeout value to use to monitor the connection. The timeout
  				value should be specified in slots, so you can use the BluetoothGetSlotsFromSeconds macro to get the proper
  				value. e.g. BluetoothGetSlotsFromSeconds( 5.0 ) will give yield the proper number of slots (8000) for 5 seconds.
  	@result		Returns kIOReturnSuccess if it was possible to set the connection supervision timeout.
  */
  func setSupervisionTimeout(timeout: UInt16) -> IOReturn

  /*!
      @property	openL2CAPChannelSync:withPSM:withConfiguration:delegate:
  	@abstract	Opens a new L2CAP channel to the target device. Returns only after the channel is opened.
  	@discussion	This method will begin the process of opening a new L2CAP channel to the target device.  
                  The baseband connection to the device will be opened if it is not open already.  The L2CAP
                  channel open process will not complete until the client has registered an incoming data 
                  listener on the new channel.  This prevents a situation where the channel succeeds
                  in being configured and opened and receives data before the client is listening and
                  is ready for it. The L2CAP channel object is already retained when this function returns success;
  				the channel must be released when the caller is done with it.
  
  				NOTE: This method is only available in Mac OS X 10.5 (Bluetooth v2.0) or later.
  	@param		newChannel		A pointer to an IOBluetoothL2CAPChannel object to receive the L2CAP channel 
                                  requested to be opened.  The newChannel pointer will only be set if 
                                  kIOReturnSuccess is returned.
  	@param		withPSM			The L2CAP PSM value for the new channel.
  	@param		channelConfiguration the dictionary that describes the initial configuration for
  				the channel.
  	@param		channelDelegate the object that will play the role of delegate for the channel.
  				A channel delegate is the object the l2cap uses as target for  data and events. The
  				developer will implement only the the methods he/she is interested in. A list of the
  				possible methods is at the end of the file "IOBluetoothL2CAPChannel.h" in the definition
  				of the protocol IOBluetoothL2CAPChannelDelegate.
  			
  	@result		Returns kIOReturnSuccess if the open process was successfully started (or if an existing
                  L2CAP channel was found). The channel must be released when the caller is done with it.
  */
  func openL2CAPChannelSync(newChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothL2CAPChannel?>, withPSM psm: BluetoothL2CAPPSM, withConfiguration channelConfiguration: [NSObject : AnyObject]!, delegate channelDelegate: AnyObject!) -> IOReturn

  /*!
      @property	openL2CAPChannelAsync:withPSM:withConfiguration:delegate:
  	@abstract	Opens a new L2CAP channel to the target device. Returns immediately after starting the opening process.
  	@discussion	This method will begin the process of opening a new L2CAP channel to the target device.  
                  The baseband connection to the device will be opened if it is not open already.  The L2CAP
                  channel open process will not complete until the client has registered an incoming data 
                  listener on the new channel.  This prevents a situation where the channel succeeds
                  in being configured and opened and receives data before the client is listening and
                  is ready for it. The L2CAP channel object is already retained when this function returns success;
  				the channel must be released when the caller is done with it.
  
  				NOTE: This method is only available in Mac OS X 10.5 (Bluetooth v2.0) or later.
  	@param		newChannel		A pointer to an IOBluetoothL2CAPChannel object to receive the L2CAP channel 
                                  requested to be opened.  The newChannel pointer will only be set if 
                                  kIOReturnSuccess is returned.
  	@param		psm				The L2CAP PSM value for the new channel.
  	@param		channelConfiguration the dictionary that describes the initial configuration for
  				the channel.
  	@param		channelDelegate the object that will play the role of delegate for the channel.
  				A channel delegate is the object the l2cap uses as target for  data and events. The
  				developer will implement only the the methods he/she is interested in. A list of the
  				possible methods is at the end of the file "IOBluetoothL2CAPChannel.h" in the definition
  				of the protocol IOBluetoothL2CAPChannelDelegate.
  				
  	@result		Returns kIOReturnSuccess if the open process was successfully started (or if an existing
                  L2CAP channel was found). The channel must be released when the caller is done with it.
  */
  func openL2CAPChannelAsync(newChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothL2CAPChannel?>, withPSM psm: BluetoothL2CAPPSM, withConfiguration channelConfiguration: [NSObject : AnyObject]!, delegate channelDelegate: AnyObject!) -> IOReturn
  func awakeAfterUsing(coder: NSCoder!) -> AnyObject!
  init()
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  class func supportsSecureCoding() -> Bool
}

/*!	@class			IOBluetoothDeviceInquiry
	@abstract		Object representing a device inquiry that finds Bluetooth devices in-range of the computer,
					and (optionally) retrieves name information for them.
	@discussion		You should only use this object if your application needs to know about in-range devices and cannot
					use the GUI provided by the IOBluetoothUI framework. It will not let you perform unlimited back-to-back
					inquiries, but will instead throttle the number of attempted inquiries if too many are attempted within
					a small window of time.
					Important Note: DO NOT perform remote name requests on devices from delegate methods or while this
					object is in use. If you wish to do your own remote name requests on devices, do them after you have
					stopped this object. If you do not heed this warning, you could potentially deadlock your process.
*/
class IOBluetoothDeviceInquiry : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject!

  /*!	@method		initWithDelegate
  	@abstract	Initializes an alloc'd inquiry object, and sets the delegate object, as if -setDelegate: were called on it.
  	@param		delegate		A delegate object that wishes to receive messages from the inquiry object. Delegate methods are listed below, under IOBluetoothDeviceInquiryDelegate.
  	@result		A pointer to the initialized IOBluetoothDeviceInquiry object.
  */
  init!(delegate: AnyObject!)

  /*!	@method		start
  	@abstract	Tells inquiry object to begin the inquiry and name updating process, if specified.
  	@result		Returns kIOReturnSuccess if start was successful. Returns kIOReturnBusy if the object is already in process. May return other IOReturn values, as appropriate.
  	@discussion Calling start multiple times in rapid succession or back-to-back will probably not produce the intended
  				results. Inquiries are throttled if they are called too quickly in succession.
  */
  func start() -> IOReturn

  /*!	@method		stop
  	@abstract   Halts the inquiry object. Could either stop the search for new devices, or the updating of found device names.
  	@result		Returns kIOReturnSuccess if the inquiry is successfully stopped. Returns kIOReturnNotPermitted if the inquiry object is already stopped. May return other IOReturn values, as appropriate.
  */
  func stop() -> IOReturn

  /*!	@method		setInquiryLength
  	@abstract   Set the length of the inquiry that is performed each time -start is used on an inquiry object. 
  	@param		seconds			Number of seconds the inquiry will search for in-range devices before refreshing device names, if specified.
  	@result		Number of seconds the search will be performed.
  	@discussion A default of 10 seconds is used, unless a different value is specified using this method.  Note that if you
  				have called -start again too quickly, your inquiry may actually take much longer than what length you
  				specify, as inquiries are throttled in the system. Also note that if you have the inquiry object updating
  				device names for you, the whole inquiry process could be much longer than the specified length, depending
  				on the number of devices found and how responsive to name requests they are. If you -must- have a strict
  				inquiry length, disable name updates. In other words, this "length" only refers to the actual device discovery
  				portion of the whole inquiry process.
  */
  var inquiryLength: UInt8

  /*!	@method		setSearchType
  	@abstract   Set the devices that are found. 
  	@param		searchType		Bluetooth versions the search will discover.
  	@discussion A default of kIOBluetoothDeviceSearchClassic is used, unless a different value is specified using this method.
  */
  var searchType: IOBluetoothDeviceSearchTypes

  /*!	@method		setUpdateNewDeviceNames
  	@abstract   Sets whether or not the inquiry object will retrieve the names of devices found during the search.
  	@param		inValue		Pass TRUE if names are to be updated, otherwise pass FALSE.
  	@discussion The default value for the inquiry object is TRUE, unless this method is used to change it.
  */
  var updateNewDeviceNames: Bool

  /*!	@method		foundDevices
  	@abstract   Returns found IOBluetoothDevice objects as an array.
  	@result		Returns an NSArray of IOBluetoothDevice objects.
  	@discussion Will not return nil. If there are no devices found, returns an array with length of 0.
  */
  func foundDevices() -> [AnyObject]!

  /*!	@method		clearFoundDevices
  	@abstract   Removes all found devices from the inquiry object.
  */
  func clearFoundDevices()

  /*!	@method		setSearchCriteria
  	@abstract   Use this method to set the criteria for the device search.
  	@param		inServiceClassMajor		Set the major service class for found devices. Set to kBluetoothServiceClassMajorAny for all devices. See BluetoothAssignedNumbers.h for possible values.
  	@param		inMajorDeviceClass		Set the major device class for found devices. Set to kBluetoothDeviceClassMajorAny for all devices. See BluetoothAssignedNumbers.h for possible values.
  	@param		inMinorDeviceClass		Set the minor device class for found devices. Set to kBluetoothDeviceClassMinorAny for all devices. See BluetoothAssignedNumbers.h for possible values.
  	@discussion The default inquiry object will search for all types of devices. If you wish to find only keyboards, for example, you might use this method like this:
  	
  				[myInquiryObject		setSearchCriteria:kBluetoothServiceClassMajorAny
  										majorDeviceClass:kBluetoothDeviceClassMajorPeripheral
  										minorDeviceClass:kBluetoothDeviceClassMinorPeripheral1Keyboard];
  										
  				However, we recommend only using this if you are certain of the device class you are looking for, as some
  				devices may report a different/unexpected device class, and the search may miss the device you are interested in.
  */
  func setSearchCriteria(inServiceClassMajor: BluetoothServiceClassMajor, majorDeviceClass inMajorDeviceClass: BluetoothDeviceClassMajor, minorDeviceClass inMinorDeviceClass: BluetoothDeviceClassMinor)
  init()
}

/*!
    @category 		IOBluetoothDeviceInquiryDelegate
    @discussion		This category on NSObject describes the delegate methods for the IOBluetoothDeviceInquiry object. All
					methods are optional, but it is highly recommended you implement them all. Do NOT invoke remote name
					requests on found IOBluetoothDevice objects unless the inquiry object has been stopped. Doing so may
					deadlock your process.
*/
protocol IOBluetoothDeviceInquiryDelegate {

  /*!	@method			deviceInquiryStarted
  	@discussion 	This message will be delivered when the inquiry actually starts. Since the inquiry could be throttled, this
  					message may not be received immediately after called -start.
  	@param			sender				Inquiry object that sent this delegate message.
  */
  optional func deviceInquiryStarted(sender: IOBluetoothDeviceInquiry!)

  /*!	@method			deviceInquiryDeviceFound
  	@discussion 	A new device has been found. You do not need to retain the device - it will be held in the internal
  					storage of the inquiry, and can be accessed later using -foundDevices.
  	@param			sender				Inquiry object that sent this delegate message.
  	@param			device				IOBluetoothDevice that was found.
  */
  optional func deviceInquiryDeviceFound(sender: IOBluetoothDeviceInquiry!, device: IOBluetoothDevice!)

  /*!	@method			deviceInquiryUpdatingDeviceNamesStarted
  	@discussion 	The inquiry has begun updating device names that were found during the search.
  	@param			sender				Inquiry object that sent this delegate message.
  	@param			devicesRemaining	Number of devices remaining to update.
  */
  optional func deviceInquiryUpdatingDeviceNamesStarted(sender: IOBluetoothDeviceInquiry!, devicesRemaining: UInt32)

  /*!	@method			deviceInquiryDeviceNameUpdated
  	@discussion 	A device name has been retrieved. Also indicates how many devices are left to be updated.
  	@param			sender				Inquiry object that sent this delegate message.
  	@param			device				IOBluetoothDevice that was updated.
  	@param			devicesRemaining	Number of devices remaining to update.
  */
  optional func deviceInquiryDeviceNameUpdated(sender: IOBluetoothDeviceInquiry!, device: IOBluetoothDevice!, devicesRemaining: UInt32)

  /*!	@method			deviceInquiryComplete
  	@discussion 	When the inquiry is completely stopped, this delegate method will be invoked. It will supply an error
  					code value, kIOReturnSuccess if the inquiry stopped without problem, otherwise a non-kIOReturnSuccess
  					error code will be supplied.
  	@param			sender				Inquiry object that sent this delegate message.
  	@param			error				Error code. kIOReturnSuccess if the inquiry completed without incident.
  	@param			aborted				TRUE if user called -stop on the inquiry.
  */
  optional func deviceInquiryComplete(sender: IOBluetoothDeviceInquiry!, error: IOReturn, aborted: Bool)
}

/*!
 	@class		IOBluetoothDevicePair
	@abstract	An instance of IOBluetoothDevicePair represents a pairing attempt to a remote Bluetooth device.
	@discussion	Use the IOBluetoothDevicePair object to attempt to pair with any Bluetooth device. Once -start is invoked
				on it, progress is returned to the delegate via the messages defined below. This object enables you to
				pair with devices within your application without having to use the standard panels provided by the
				IOBluetoothUI framework, allowing you to write custom UI to select devices, and still handle the ability
				to perform device pairings.
				
				Of note is that this object MAY attempt to perform two low-level pairings, depending on the type of device
				you are attempting to pair. This is inconsequential to your code, however, as it occurs automatically and
				does not change the messaging.
				
				Once started, the pairing can be stopped. This will set the delegate to nil and then attempt to disconnect
 				from the device if already connected.
*/
class IOBluetoothDevicePair : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject!

  /*!
      @method		pairWithDevice:
  	@abstract	Creates an autorelease IOBluetoothDevicePair object with a device as the pairing target.
  	@param		device		An IOBluetoothDevice to attept to pair with. The device is retained.
  	@result		Returns an IOReturn or Bluetooth error code, if the pairing could not be started.
  */
  convenience init!(device: IOBluetoothDevice!)

  /*!
      @method		start
  	@abstract	Kicks off the pairing with the device.
  	@result		Returns an IOReturn or Bluetooth error code, if the pairing could not be started.
  */
  func start() -> IOReturn

  /*!
   @method		stop
   @abstract		Stops the current pairing. Removes the delegate and disconnects if device was connected.
   */
  func stop()

  /*!
      @method		device
  	@abstract	Get the IOBluetoothDevice being used by the object.
  	@result		device		The IOBluetoothDevice object that the IOBluetoothDevicePair object is pairing with, as
  							specified in -setDevice: or pairWithDevice:
  */
  func device() -> IOBluetoothDevice!

  /*!
      @method		setDevice:
  	@abstract	Set the device object to pair with. It is retained by the object.
  	@param		device		The IOBluetoothDevice object that the IOBluetoothDevicePair object with which to perform a pairing.
  */
  func setDevice(inDevice: IOBluetoothDevice!)

  /*!
      @method		replyPINCode:
  	@abstract	This is the required reply to the devicePairingPINCodeRequest delegate message.
  				Set the PIN code to use during pairing if required.
  	@param		PINCodeSize	The PIN code length in octets (8 bits).
  	@param		PINcode		PIN code for the device.  Can be up to a maximum of 128 bits.
  */
  func replyPINCode(PINCodeSize: Int, pinCode PINCode: UnsafeMutablePointer<BluetoothPINCode>)

  /*!
      @method		replyUserConfirmation:
  	@abstract	This is the required reply to the devicePairingUserConfirmationRequest delegate message.
  	@param		reply		A yes/no answer provide by the user to the numeric comparison presented.
  */
  func replyUserConfirmation(reply: Bool)
  init()
}
protocol IOBluetoothDevicePairDelegate : NSObjectProtocol {

  /*!
      @method		devicePairingStarted:
  	@abstract	Indicates that the pairing has started.
  	@param		sender		The IOBluetoothDevicePair object.
  */
  optional func devicePairingStarted(sender: AnyObject!)

  /*!
      @method		devicePairingConnecting:
  	@abstract	Indicates to the delegate that the pairing object is making the device (baseband) connection.
  	@param		sender		The IOBluetoothDevicePair object.
  */
  optional func devicePairingConnecting(sender: AnyObject!)

  /*!
      @method		devicePairingPINCodeRequest:
  	@abstract	Indicates to the delegate that the pairing object has made the device (baseband) connection and is
  				awaiting the PIN code (if specified) to be entered on the device. Thus, when you recieve this message,
  				you should display to the user that they should enter the PIN code on the device.
  				The method replyPINCode must be invoked in response and happen before the timeout period of the device.
  	@param		sender		The IOBluetoothDevicePair object.
  */
  optional func devicePairingPINCodeRequest(sender: AnyObject!)

  /*!
      @method		devicePairingUserConfirmationRequest:numericValue
  	@abstract	Indicates to the delegate that the pairing object has made the device (baseband) connection and is
  				awaiting the a yes/no answer for the Simple Secure Pairing numeric comparison. Thus, when you recieve this message,
  				you should display to the user the numeric value and then accept the yes/no answer if it matches the value
  				on the other device.
  				The method replyUserConfirmation must be invoked in response and happen before the timeout period of the device.
  	@param		sender			The IOBluetoothDevicePair object.
  	@param		numericValue	Numeric value to be displayed.
  */
  optional func devicePairingUserConfirmationRequest(sender: AnyObject!, numericValue: BluetoothNumericValue)

  /*!
      @method		devicePairingUserPasskeyNotification:passkey
  	@abstract	Indicates to the delegate that the pairing object has made the device (baseband) connection and is
  				awaiting the passkey (if specified) to be entered on the device for the Secure Simple Pairing.
  				Thus, when you recieve this message, you should display to the user that they should enter
  				the passkey on the device.
  	@param		sender			The IOBluetoothDevicePair object.
  	@param		passkey			Passkey to be displayed.
  */
  optional func devicePairingUserPasskeyNotification(sender: AnyObject!, passkey: BluetoothPasskey)

  /*!
      @method		devicePairingFinished:error:
  	@abstract	Indicates to the delegate that the pairing object has fully completed the process. Can tell the delegate
  				when and error occurred during the attempt to pair with the device.
  	@discussion	The error passed to your delegate could be kBluetoothHCIErrorAuthenticationFailure,
  				kBluetoothHCIErrorLMPResponseTimeout, etc. See Bluetooth.h for all the possibilities.
  	@param		sender		The IOBluetoothDevicePair object.
  	@param		error		An IOReturn or Bluetooth error code.
  */
  optional func devicePairingFinished(sender: AnyObject!, error: IOReturn)

  /*!
   @method		deviceSimplePairingComplete:status:
   @abstract	Indicates to the delegate that the pairing object has fully completed the simple pairing process. Can tell the delegate
   when and error occurred during the attempt to pair with the device.
   @discussion	The status passed to your delegate could be BluetoothHCIEventStatus, etc. See Bluetooth.h for all the possibilities.
   @param		sender		The IOBluetoothDevicePair object.
   @param		status		A simple pairing complete error code.
   */
  optional func deviceSimplePairingComplete(sender: AnyObject!, status: BluetoothHCIEventStatus)
}
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

/*!
 @class IOBluetoothHandsFree
 @abstract Hands free profile class.
 @discussion Superclass of IOBluetoothHandsFreeDevice and IOBluetoothHandsFreeAudioGateway classes.
			 Contains the common code used to support the bluetoooth hands free profile.
 @coclass IOBluetoothHandsFreeDevice
 @coclass IOBluetoothHandsFreeAudioGateway
 */
@available(OSX 10.7, *)
class IOBluetoothHandsFree : NSObject {

  /*!
   @method		supportedFeatures
   @abstract		Return supported features
   @discussion	Returns the supported features bitmap. The values are described in “IOBluetoothHandsFreeDeviceFeatures and IOBluetoothHandsFreeAudioGatewayFeatures.”
   @result		The supported features bitmap
   */
  /*!
   @method		setSupportedFeatures:featuresBitmap
   @abstract		Set the supported features
   @discussion	Sets the supported features bitmap. The values are described in “IOBluetoothHandsFreeDeviceFeatures and IOBluetoothHandsFreeAudioGatewayFeatures.”
   @param			featuresBitmap The features bitmap
   */
  @available(OSX 10.7, *)
  var supportedFeatures: UInt32

  /*!
   @method		inputVolume
   @abstract		Return the input volume
   @discussion	Returns the input volume between 0 and 1. 0 is the same as mute.
   @result		The input volume
   */
  /*!
   @method		setInputVolume:newVolume
   @abstract		Set the input volume
   @discussion	Sets the input volume between 0 and 1. 0 is the same as mute.
   @param			newVolume The new input volume
   */
  @available(OSX 10.7, *)
  var inputVolume: Float

  /*!
   @method		isInputMuted
   @abstract		Return the input mute state.
   @discussion	Returns the inputs mute state.
   @result		YES if muted; otherwise NO.
   */
  /*!
   @method		setInputMuted:muted
   @abstract		Set the input mute state.
   @discussion	Sets the inputs mute state.
   @param			muted YES if muted; otherwise NO.
   */
  @available(OSX 10.7, *)
  var isInputMuted: Bool

  /*!
   @method		outputVolume
   @abstract		Return the output volume
   @discussion	Returns the output volume between 0 and 1. 0 is the same as mute.
   @result		The output volume
   */
  /*!
   @method		setOutputVolume:newVolume
   @abstract		Set the output volume
   @discussion	Sets the output volume between 0 and 1. 0 is the same as mute.
   @param			newVolume The new output volume
   */
  @available(OSX 10.7, *)
  var outputVolume: Float

  /*!
   @method		isOutputMuted
   @abstract		Return the output mute state.
   @discussion	Returns the outputs mute state.
   @result		YES if muted; otherwise NO.
   */
  /*!
   @method		setOutputMuted:muted
   @abstract		Set the output mute state.
   @discussion	Sets the outputs mute state.
   @param			muted YES if muted; otherwise NO.
   */
  @available(OSX 10.7, *)
  var isOutputMuted: Bool

  /*!
   @method		device
   @abstract		Return the IOBluetoothDevice.
   @discussion	Returns the IOBluetoothDevice to connect with.
   @result		The IOBluetoothDevice object
   */
  @available(OSX 10.7, *)
  var device: IOBluetoothDevice! { get }

  /*!
   @method		deviceSupportedFeatures
   @abstract		Return the device's supported features.
   @discussion	Returns the device's supported features bitmap. The values are described in “IOBluetoothHandsFreeDeviceFeatures and IOBluetoothHandsFreeAudioGatewayFeatures.”
   @result		The device features bitmap
   */
  @available(OSX 10.7, *)
  var deviceSupportedFeatures: UInt32 { get }

  /*!
   @method		deviceSupportedSMSServices
   @abstract		Return the device's supported SMS services.
   @discussion	Returns the device's supported SMS services bitmap. The values are described in “IOBluetoothHandsFreeSMSSupport.”
   @result		The SMS services supported
   */
  @available(OSX 10.7, *)
  var deviceSupportedSMSServices: UInt32 { get }

  /*!
   @method		deviceCallHoldModes
   @abstract		Return the device's supported call hold modes.
   @discussion	Returns the device's supported call hold modes bitmap. The values are described in “IOBluetoothHandsFreeCallHoldModes.”
   @result		The SMS services supported
   */
  @available(OSX 10.7, *)
  var deviceCallHoldModes: UInt32 { get }

  /*!
   @method		SMSMode
   @abstract		Return the device's SMS mode.
   @discussion	Returns the device's SMS mode. The values are described in “IOBluetoothSMSMode.”
   @result		The SMS mode
   */
  @available(OSX 10.7, *)
  var smsMode: IOBluetoothSMSMode { get }

  /*!
   @method		isSMSEnabled
   @abstract		Return YES if the device has SMS enabled.
   @discussion	Returns YES if the device has SMS enabled (by responding to a CMGF command). NO if the device has not set an SMS mode or doesn't support SMS.
   @result		YES if the device has SMSEnabled; otherwise, NO.
   */
  @available(OSX 10.7, *)
  var isSMSEnabled: Bool { get }

  /*!
   @method		delegate
   @abstract		Return the delegate
   @discussion	Returns the hands free object's delegate.
   @result		The delegate for the hands free object or nil if it doesn't have a delegate.
   */
  /*!
   @method		setDelegate:newDelegate
   @abstract		Sets the hands free object’s delegate to a given object or removes an existing delegate.
   @discussion	A IOBluetoothHandsFree delegate can optionally respond to any of the delegate methods in IOBluetoothHandsFreeDelegate and any subclasses delegates.
   @param			newDelegate The delegate for the hands free object. Pass nil to remove an existing delegate.
   */
  @available(OSX 10.7, *)
  unowned(unsafe) var delegate: @sil_unmanaged IOBluetoothHandsFreeDelegate!

  /*!
   @method		indicator:indicatorName
   @abstract		Return an indicator's value
   @discussion	Returns an indicator's value.
   @param			indicatorName  See  “Hands free indicator constants," for standard indicator names.
   */
  @available(OSX 10.7, *)
  func indicator(indicatorName: String!) -> Int32

  /*!
   @method		setIndicator:indicatorName:indicatorValue
   @abstract		Set an indicator's value
   @discussion	Sets an indicator's value.
   @param			indicatorName  See  “Hands free indicator constants," for standard indicator names.
   @param			indicatorValue Will set the indicator value as long as it is within the min and max values allowed.
   */
  @available(OSX 10.7, *)
  func setIndicator(indicatorName: String!, value indicatorValue: Int32)

  /*!
   @method		initWithDevice:delegate:
   @abstract		Create a new IOBluetoothHandsFree object
   @discussion	This method should be called on a subclass (IOBluetoothHandsFreeDevice or IOBluetoothHandsFreeAudioGateway) to get full functionality.
   @param			device An IOBluetoothDevice
   @param			inDelegate An object to act as delegate that implements the IOBluetoothHandsFreeDelegate protocol.
   @result		A newly created IOBluetoothHandsFreeAudioGateway object on success, nil on failure
   */
  @available(OSX 10.7, *)
  init!(device: IOBluetoothDevice!, delegate inDelegate: IOBluetoothHandsFreeDelegate!)

  /*!
   @method		connect
   @abstract		Connect to the device
   @discussion	Connects to the device and sets up a service level connection (RFCOMM channel).
   				Delegate methods will be called once the connection is complete or a failure occurs.
   */
  @available(OSX 10.7, *)
  func connect()

  /*!
   @method		disconnect
   @abstract		Disconnect from the device
   @discussion	Disconnects from the device, closes the SCO and service level connection if they are connected.
   				Delegate methods will be called once the disconnection is complete.
   */
  @available(OSX 10.7, *)
  func disconnect()

  /*!
   @method		isConnected
   @abstract		Determine if there is a serivice level connection to the device
   @discussion	Determines if there is a serivice level connection to the device.
   @result		YES if there is a serivice level connection to the device; otherwise, NO.
   */
  @available(OSX 10.7, *)
  func isConnected() -> Bool

  /*!
   @method		connectSCO
   @abstract		Open a SCO connection with the device
   @discussion	Opens a SCO connection with the device. The device must already have a service level connection or this will return immediately.
   				Delegate methods will be called once the connection is complete of a failure occurs.
   */
  @available(OSX 10.7, *)
  func connectSCO()

  /*!
   @method		disconnectSCO
   @abstract		Disconnect the SCO connection with the device
   @discussion	Disconnects the SCO connection with the device (if one exists).
   				Delegate methods will be called once the disconnection is complete.
   */
  @available(OSX 10.7, *)
  func disconnectSCO()

  /*!
   @method		isSCOConnected
   @abstract		Determine if there is a SCO connection to the device
   @discussion	Determines if there is a SCO connection to the device.
   @result		YES if there is a SCO connection to the device; otherwise, NO.
   */
  @available(OSX 10.7, *)
  func isSCOConnected() -> Bool
  init()
}
protocol IOBluetoothHandsFreeDelegate : NSObjectProtocol {

  /*!
   @method		handsFree:connected
   @discussion	Tells the delegate that the hands free service level connection is complete.
   @param			device The IOBluetoothHandsFree object that was being connected
   @param			status The result of the connection attempt. An IOReturn result returned in an NSNumber object.
   */
  @available(OSX 10.7, *)
  optional func handsFree(device: IOBluetoothHandsFree!, connected status: NSNumber!)

  /*!
   @method		handsFree:disconnected
   @discussion	Tells the delegate that the hands free service level connection was disconnected.
   @param			device The IOBluetoothHandsFree object whose service level connection was disconnected
   @param			status The result of the disconnection attempt. An IOReturn result returned in an NSNumber object.
   */
  @available(OSX 10.7, *)
  optional func handsFree(device: IOBluetoothHandsFree!, disconnected status: NSNumber!)

  /*!
   @method		handsFree:scoConnectionOpened
   @discussion	Tells the delegate that the SCO connection is complete.
   @param			device The IOBluetoothHandsFree object that was being connected
   @param			status The result of the connection attempt. An IOReturn result returned in an NSNumber object.
   */
  @available(OSX 10.7, *)
  optional func handsFree(device: IOBluetoothHandsFree!, scoConnectionOpened status: NSNumber!)

  /*!
   @method		handsFree:scoConnectionClosed
   @discussion	Tells the delegate that the SCO connection was closed.
   @param			device The IOBluetoothHandsFree object whose SCO connection was closed
   @param			status The result of the disconnection attempt. An IOReturn result returned in an NSNumber object.
   */
  @available(OSX 10.7, *)
  optional func handsFree(device: IOBluetoothHandsFree!, scoConnectionClosed status: NSNumber!)
}
extension IOBluetoothDevice {

  /*!
   @method		handsFreeAudioGatewayServiceRecord
   @abstract		Return the hands free gateway SDP record
   @discussion	Returns the hands free gateway SDP record.
   @result		The hands free gateway SDP record
   */
  @available(OSX 10.7, *)
  func handsFreeAudioGatewayServiceRecord() -> IOBluetoothSDPServiceRecord!

  /*!
   @method		isHandsFreeAudioGateway
   @abstract		Return the devices support for hands free gateway
   @discussion	Returns the devices support for hands free gateway (obtained from the devices SDP record).
   @result		YES if the device supports hands free gateway; otherwise, NO.
   */
  @available(OSX 10.7, *)
  var isHandsFreeAudioGateway: Bool { get }

  /*!
   @method		handsFreeDeviceServiceRecord
   @abstract		Return the hands free device SDP record
   @discussion	Returns the hands free device SDP record.
   @result		The hands free device SDP record
   */
  @available(OSX 10.7, *)
  func handsFreeDeviceServiceRecord() -> IOBluetoothSDPServiceRecord!

  /*!
   @method		isHandsFreeDevice
   @abstract		Return the devices support for hands free device
   @discussion	Returns the devices support for hands free device (obtained from the devices SDP record).
   @result		YES if the device supports hands free device; otherwise, NO.
   */
  @available(OSX 10.7, *)
  var isHandsFreeDevice: Bool { get }
}
extension IOBluetoothSDPServiceRecord {

  /*!
   @method		handsFreeSupportedFeatures
   @abstract		Return the hands free supported features
   @discussion	Returns the hands free supported features bitmap stored in the SDP record. See “IOBluetoothHandsFreeDeviceFeatures and IOBluetoothHandsFreeAudioGatewayFeatures.”
   @result		The supported features bitmap.
   */
  @available(OSX 10.7, *)
  func handsFreeSupportedFeatures() -> UInt16
}

/*!
 @header
 @abstract	APIs for managing a hands free audio gateway
 @copyright	(c) 2010 by Apple Inc. All rights reserved.
 */
@available(OSX 10.7, *)
class IOBluetoothHandsFreeAudioGateway : IOBluetoothHandsFree {

  /*!
   @method		initWithDevice:delegate:
   @abstract		Create a new IOBluetoothHandsFreeAudioGateway to act as a hands free gateway
   @discussion	This will register a listener for incoming connections.
   @param			device An IOBluetoothDevice
   @param			inDelegate An object to act as delegate
   @result		A newly created IOBluetoothHandsFreeAudioGateway object on success, nil on failure
   */
  @available(OSX 10.7, *)
  init!(device: IOBluetoothDevice!, delegate inDelegate: AnyObject!)

  /*!
   @method		createIndicator:indicatorName:min:max:currentValue
   @abstract		Create an indicator
   @discussion	Creates an indicator with min and max values and sets the current value. The current value must be valid.
   @param			indicatorName  See  �ands free indicator constants," for standard indicator names.
   @param			minValue Minimum value allowed for the indicator
   @param			maxValue Maximum value allowed for the indicator
   @param			currentValue The current indicator value. Must be within the min and max values passed in or the indicator will not be created.
   */
  @available(OSX 10.7, *)
  func createIndicator(indicatorName: String!, min minValue: Int32, max maxValue: Int32, currentValue: Int32)

  /*!
   @method		processATCommand:atCommand
   @abstract		Handles AT commands sent from the hands free device
   @discussion	Implement this in a subclass if you wish to respond to additional AT commands or to change the default response.
   @param			atCommand The at command from the hands free device
   */
  @available(OSX 10.7, *)
  func processATCommand(atCommand: String!)

  /*!
   @method		sendOKResponse
   @abstract		Sends an OK response
   @discussion	Use this to respond OK.
   */
  @available(OSX 10.7, *)
  func sendOKResponse()

  /*!
   @method		sendResponse:response
   @abstract		Sends a response to the hands free device
   @discussion	Use this to send a response followed by an OK. Equivalent to [sendResponse:response withOK:YES].
   @param			response The response to send to the hands free device
   */
  @available(OSX 10.7, *)
  func sendResponse(response: String!)

  /*!
   @method		sendResponse:response:withOK
   @abstract		Sends a response to the hands free device
   @discussion	Use this to send a response and optionally followed by an OK.
   @param			response The response to send to the hands free device
   @param			withOK If yes, an OK response will also be sent.
   */
  @available(OSX 10.7, *)
  func sendResponse(response: String!, withOK: Bool)
  init()
}
protocol IOBluetoothHandsFreeAudioGatewayDelegate {

  /*!
   @method		handsFree:hangup
   @discussion	Tells the delegate that the device is sending a hangup.
   @param			device The IOBluetoothHandsFreeAudioGateway object
   @param			redial Always 1.
   */
  @available(OSX 10.7, *)
  optional func handsFree(device: IOBluetoothHandsFreeAudioGateway!, hangup: NSNumber!)

  /*!
   @method		handsFree:redial
   @discussion	Tells the delegate that the device is trying to redial.
   @param			device The IOBluetoothHandsFreeAudioGateway object
   @param			redial Always 1.
   */
  @available(OSX 10.7, *)
  optional func handsFree(device: IOBluetoothHandsFreeAudioGateway!, redial: NSNumber!)
}

/*!
 @header
 @abstract	APIs for managing a hands free device
 @copyright	(c) 2010 by Apple Inc. All rights reserved.
 */
@available(OSX 10.7, *)
class IOBluetoothHandsFreeDevice : IOBluetoothHandsFree {

  /*!
   @method		initWithDevice:delegate:
   @abstract		Create a new IOBluetoothHandsFreeDevice to act as a hands free device
   @discussion	This will register a listener for incoming connections.
   @param			device An IOBluetoothDevice
   @param			inDelegate An object to act as delegate
   @result		A newly created IOBluetoothHandsFreeDevice object on success, nil on failure
   */
  @available(OSX 10.7, *)
  init!(device: IOBluetoothDevice!, delegate: AnyObject!)

  /*!
   @method		dialNumber:aNumber
   @abstract		Dial a number
   @discussion	Calls aNumber
   @param			aNumber The number to call - the gateway determines acceptable formats.
   */
  @available(OSX 10.7, *)
  func dialNumber(aNumber: String!)

  /*!
   @method		memoryDial:memoryLocation
   @abstract		Dial a number from memory
   @discussion	Calls a number from a memory (or speed dial) location.
   @param			memoryLocation The location in memory
   */
  @available(OSX 10.7, *)
  func memoryDial(memoryLocation: Int32)

  /*!
   @method		redial
   @abstract		Redial a number
   @discussion	Redials the previous number stored by the hands free gateway.
   */
  @available(OSX 10.7, *)
  func redial()

  /*!
   @method		endCall
   @abstract		Hang up a call or reject an incoming call
   @discussion	Hangs up the current call, or rejects an incoming call.
   */
  @available(OSX 10.7, *)
  func endCall()

  /*!
   @method		acceptCall
   @abstract		Accept an incoming call
   @discussion	Accepts an incoming call.
   */
  @available(OSX 10.7, *)
  func acceptCall()

  /*!
   @method		acceptCallOnPhone
   @abstract		Accept an incoming call on the phone
   @discussion	Accepts an incoming call and then quickly transfer audio to the phone.
   */
  @available(OSX 10.7, *)
  func acceptCallOnPhone()

  /*!
   @method		sendDTMF:character
   @abstract		Send a key press
   @discussion	Sends a DTMF tone.
   @param			character A single character in the set 0-9, #,*,A-D
   */
  @available(OSX 10.7, *)
  func sendDTMF(character: String!)

  /*!
   @method		subscriberNumber
   @abstract		Get the subscriber number(s)
   @discussion	Gets the subscriber number(s) stored on the gateway. Each subscriber number is returned on the delegate method handsFree:subscriberNumber.
  				There is no guarantee that the gateway will have a subscriber number.
   */
  @available(OSX 10.7, *)
  func subscriberNumber()

  /*!
   @method		currentCallList
   @abstract		Get the current call list
   @discussion	Gets the current call list (active, held, and setup in process). Each call is returned on the delegate method handsFree:currentCall.
   */
  @available(OSX 10.7, *)
  func currentCallList()

  /*!
   @method		releaseHeldCalls
   @abstract		Release all held calls
   @discussion	Releases all held calls or sets User Determined User Busy for a waiting call.
   */
  @available(OSX 10.7, *)
  func releaseHeldCalls()

  /*!
   @method		releaseActiveCalls
   @abstract		Release all active calls
   @discussion	Releases all active calls (if any exist) and accepts the other (held or waiting) call.
   */
  @available(OSX 10.7, *)
  func releaseActiveCalls()

  /*!
   @method		releaseCall:index
   @abstract		Release an active call.
   @discussion	Releases the active call with index.
   @param			index Index of the call to release
   */
  @available(OSX 10.7, *)
  func releaseCall(index: Int32)

  /*!
   @method		holdCall
   @abstract		Place all active calls on hold
   @discussion	Places all active calls (if any exist) on hold and accepts the other (held or waiting) call.
   */
  @available(OSX 10.7, *)
  func holdCall()

  /*!
   @method		placeAllOthersOnHold:index
   @abstract		Place all other calls on hold.
   @discussion	Places all calls on hold except call with index.
   @param			index Index of the call to not place on hold
   */
  @available(OSX 10.7, *)
  func placeAllOthersOnHold(index: Int32)

  /*!
   @method		addHeldCall
   @abstract		Add a held call to the current conversation
   @discussion	Adds a held call to the current conversation.
   */
  @available(OSX 10.7, *)
  func addHeldCall()

  /*!
   @method		callTransfer
   @abstract		Release all active calls
   @discussion	Releases all active calls (if any exist) and accepts the other (held or waiting) call.
   */
  @available(OSX 10.7, *)
  func callTransfer()

  /*!
   @method		transferAudioToComputer
   @abstract		Transfer audio source to the computer.
   @discussion	Transfers audio to the computer.
   */
  @available(OSX 10.7, *)
  func transferAudioToComputer()

  /*!
   @method		transferAudioToPhone
   @abstract		Transfer audio source to the phone.
   @discussion	Transfers audio to the phone.
   */
  @available(OSX 10.7, *)
  func transferAudioToPhone()

  /*!
   @method		sendSMS:aNumber:aMessage
   @abstract		Send an SMS to a number.
   @discussion	Sends an SMS to aNumber with content aMessage. Currently this does not handle long SMS (>160 characters) or unicode messages.
   */
  @available(OSX 10.7, *)
  func sendSMS(aNumber: String!, message aMessage: String!)

  /*!
   @method		sendATCommand:atCommand
   @abstract		Send an AT command to the hands free gateway.
   @discussion	Sends an AT command to the hands free gateway with a timeout of 10 seconds and handled by the built-in response handling.
  				See sendAtCommand:timeout:selector:target for more details.
   @param			atCommand AT command to send
   */
  @available(OSX 10.7, *)
  func sendATCommand(atCommand: String!)

  /*!
   @method		sendATCommand:atCommand:timeout:selector:target
   @abstract		Send an AT command to the hands free gateway.
   @discussion	Sends an AT command to the hands free gateway with timeout.
   				On command complete (OK, ERROR, TIMEOUT response or after timeout seconds) will perform selector on target.
   @param			atCommand AT command to send
   */
  @available(OSX 10.7, *)
  func sendATCommand(atCommand: String!, timeout: Float, selector: Selector, target: AnyObject!)
  init()
}
protocol IOBluetoothHandsFreeDeviceDelegate : IOBluetoothHandsFreeDelegate {

  /*!
   @method		handsFree:isServiceAvailable
   @discussion	Tells the delegate the service indicator has changed.
   @param			device The IOBluetoothHandsFreeDevice object
   @param			isServiceAvailable 0 if no service available; 1 otherwise.
   */
  @available(OSX 10.7, *)
  optional func handsFree(device: IOBluetoothHandsFreeDevice!, isServiceAvailable: NSNumber!)

  /*!
   @method		handsFree:isCallActive
   @discussion	Tells the delegate the call indicator has changed.
   @param			device The IOBluetoothHandsFreeDevice object
   @param			isCallActive 0 if no call is active; 1 otherwise.
   */
  @available(OSX 10.7, *)
  optional func handsFree(device: IOBluetoothHandsFreeDevice!, isCallActive: NSNumber!)

  /*!
   @method		handsFree:callSetupMode
   @discussion	Tells the delegate the call setup indicator has changed.
   @param			device The IOBluetoothHandsFreeDevice object
   @param			callSetupMode	0 if not currently in call setup.
   								1 if an incoming call is in call setup.
   								2 if an outgoing call is in call setup.
   								3 if the remote party is being alerted for an outgoing call.
   */
  @available(OSX 10.7, *)
  optional func handsFree(device: IOBluetoothHandsFreeDevice!, callSetupMode: NSNumber!)

  /*!
   @method		handsFree:callHoldState
   @discussion	Tells the delegate the call held indicator has changed.
   @param			device The IOBluetoothHandsFreeDevice object
   @param			callHoldState	0 if no calls are held.
   								1 if a call is on hold and an active call exists.
  								2 if a call is on hold, but no active call exists.
   */
  @available(OSX 10.7, *)
  optional func handsFree(device: IOBluetoothHandsFreeDevice!, callHoldState: NSNumber!)

  /*!
   @method		handsFree:signalStrength
   @discussion	Tells the delegate the signal indicator has changed.
   @param			device The IOBluetoothHandsFreeDevice object
   @param			signalStrength 0-5 where 0 represents a weak signal.
   */
  @available(OSX 10.7, *)
  optional func handsFree(device: IOBluetoothHandsFreeDevice!, signalStrength: NSNumber!)

  /*!
   @method		handsFree:isRoaming
   @discussion	Tells the delegate the roam indicator has changed.
   @param			device The IOBluetoothHandsFreeDevice object
   @param			isRoaming 0 if not roaming; 1 otherwise.
   */
  @available(OSX 10.7, *)
  optional func handsFree(device: IOBluetoothHandsFreeDevice!, isRoaming: NSNumber!)

  /*!
   @method		handsFree:batteryCharge
   @discussion	Tells the delegate the battery charge indicator has changed.
   @param			device The IOBluetoothHandsFreeDevice object
   @param			batteryCharge 0-5 where 0 represents a low battery charge.
   */
  @available(OSX 10.7, *)
  optional func handsFree(device: IOBluetoothHandsFreeDevice!, batteryCharge: NSNumber!)

  /*!
   @method		handsFree:incomingCallFrom
   @discussion	Tells the delegate of an incoming call
   @param			device The IOBluetoothHandsFreeDevice object
   @param			number The remote caller's phone number
   */
  @available(OSX 10.7, *)
  optional func handsFree(device: IOBluetoothHandsFreeDevice!, incomingCallFrom number: String!)

  /*!
   @method		handsFree:ringAttempt
   @discussion	Tells the delegate of a ring alert
   @param			device The IOBluetoothHandsFreeDevice object
   @param			ringAttempt The number or ring alerts received
   */
  @available(OSX 10.7, *)
  optional func handsFree(device: IOBluetoothHandsFreeDevice!, ringAttempt: NSNumber!)

  /*!
   @method		handsFree:currentCall
   @discussion	Tells the delegate of a current call.
   @param			device The IOBluetoothHandsFreeDevice object
   @param			currentCall A dictionary representing a call. See "Hands free current call dictionary keys" for the keys and their values.
   */
  @available(OSX 10.7, *)
  optional func handsFree(device: IOBluetoothHandsFreeDevice!, currentCall: [NSObject : AnyObject]!)

  /*!
   @method		handsFree:subscriberNumber
   @discussion	Tells the delegate a subscriber number.
   @param			device The IOBluetoothHandsFreeDevice object
   @param			subscriberNumber A subscriber number. Note that a gateway may have multiple subscriber numbers in which case this will be called for each number.
   */
  @available(OSX 10.7, *)
  optional func handsFree(device: IOBluetoothHandsFreeDevice!, subscriberNumber: String!)

  /*!
   @method		handsFree:incomingSMS
   @discussion	Tells the delegate an incoming SMS has arrived.
   @param			device The IOBluetoothHandsFreeDevice object
   @param			incomingSMS A dictionary representing an SMS. See "Hands free SMS dictionary keys" for the keys and their values.
   */
  @available(OSX 10.7, *)
  optional func handsFree(device: IOBluetoothHandsFreeDevice!, incomingSMS sms: [NSObject : AnyObject]!)

  /*!
   @method		handsFree:unhandledResultCode
   @discussion	Tells the delegate an unknown result code was received. Use this to add support additional response codes.
   				If a developer needs to change the handling of an implemented result code, they must use a subclass and override processResultCode:(NSString *)resultCode.
   @param			device The IOBluetoothHandsFreeDevice object
   @param			unhandledResultCode The result code.  "/r/n" are stripped from the begining and end of the result code.
   */
  @available(OSX 10.7, *)
  optional func handsFree(device: IOBluetoothHandsFreeDevice!, unhandledResultCode resultCode: String!)
}

/*!	@class			IOBluetoothHostController
	@abstract		This class is a representation of a Bluetooth Host Controller Interface that is present on the
					local computer (either plugged in externally or available internally).
	@discussion		This object can be used to ask a Bluetooth HCI for certain pieces of information, and be used to make
					it perform certain functions.
*/
class IOBluetoothHostController : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject!

  /*!	@method		defaultController
  	@abstract	Gets the default HCI controller object.
  	@result		A (autoreleased) pointer to the created IOBluetoothHostController object.
  */
  class func defaultController() -> Self!

  /*!	@method		powerState
  	@abstract	Gets the controller power state
  	@result		The current controller's power state.  This will be 1 for on, or 0 for off.  Only Apple Bluetooth adapters support power off
   */
  var powerState: BluetoothHCIPowerState { get }

  /*!	@method		classOfDevice
  	@abstract	Gets the current class of device value.
  	@result		Returns the current class of device value.
  */
  func classOfDevice() -> BluetoothClassOfDevice

  /*!	@method		setClassOfDevice:forTimeInterval:
  	@abstract	Sets the current class of device value, for the specified amount of time. Note that the time interval *must*
  				be set and valid. The range of acceptable values is 30-120 seconds. Anything above or below will be rounded
  				up, or down, as appropriate.
  	@result		Returns the whether setting the class of device value was successful. 0 if success, error code otherwise.
  */
  func setClassOfDevice(classOfDevice: BluetoothClassOfDevice, forTimeInterval seconds: NSTimeInterval) -> IOReturn

  /*!	@method		addressAsString
  	@abstract	Convience routine to get the HCI controller's Bluetooth address as an NSString object.
  	@result		Returns NSString *. nil if the address could not be retrieved.
  */
  func addressAsString() -> String!

  /*!	@method		nameAsString
   @abstract	Gets the "friendly" name of HCI controller.
   @result		Returns NSString with the device name, nil if there is not one or it cannot be read.
   */
  func nameAsString() -> String!
  init()
}

/*!
    @category 		IOBluetoothHostControllerDelegate
    @discussion		This category on NSObject describes the delegate methods for the IOBluetoothHostController object. All
					methods are optional, but it is highly recommended you implement them all. Do NOT invoke remote name
					requests on found IOBluetoothDevice objects unless the controller object has been stopped. Doing so may
					deadlock your process.
*/
extension NSObject {

  /*!	@method			readRSSIForDeviceComplete:device:info:error:
  	@discussion 	This delegate gets invoked when an RSSI command complete event occurs. This could occur because you
  					invoked it by issuing an -readRSSIForDevice: command, or someone else did from another app on the
  					same controller.
  	@param			sender			Controller object that sent this delegate message.
  */
  class func readRSSIForDeviceComplete(controller: AnyObject!, device: IOBluetoothDevice!, info: UnsafeMutablePointer<BluetoothHCIRSSIInfo>, error: IOReturn)

  /*!	@method			readRSSIForDeviceComplete:device:info:error:
  	@discussion 	This delegate gets invoked when an RSSI command complete event occurs. This could occur because you
  					invoked it by issuing an -readRSSIForDevice: command, or someone else did from another app on the
  					same controller.
  	@param			sender			Controller object that sent this delegate message.
  */
  func readRSSIForDeviceComplete(controller: AnyObject!, device: IOBluetoothDevice!, info: UnsafeMutablePointer<BluetoothHCIRSSIInfo>, error: IOReturn)

  /*!	@method			readLinkQualityForDeviceComplete:device:info:error:
  	@discussion 	This delegate gets invoked when an read link quality command complete event occurs. This could occur because you
  					invoked it by issuing an -readLinkQualityForDevice: command, or someone else did from another app on the
  					same controller.
  	@param			sender			Controller object that sent this delegate message.
  */
  class func readLinkQualityForDeviceComplete(controller: AnyObject!, device: IOBluetoothDevice!, info: UnsafeMutablePointer<BluetoothHCILinkQualityInfo>, error: IOReturn)

  /*!	@method			readLinkQualityForDeviceComplete:device:info:error:
  	@discussion 	This delegate gets invoked when an read link quality command complete event occurs. This could occur because you
  					invoked it by issuing an -readLinkQualityForDevice: command, or someone else did from another app on the
  					same controller.
  	@param			sender			Controller object that sent this delegate message.
  */
  func readLinkQualityForDeviceComplete(controller: AnyObject!, device: IOBluetoothDevice!, info: UnsafeMutablePointer<BluetoothHCILinkQualityInfo>, error: IOReturn)
}
let IOBluetoothHostControllerPoweredOnNotification: String
let IOBluetoothHostControllerPoweredOffNotification: String
struct IOBluetoothL2CAPChannelEventType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOBluetoothL2CAPChannelEventTypeData: IOBluetoothL2CAPChannelEventType { get }
var kIOBluetoothL2CAPChannelEventTypeOpenComplete: IOBluetoothL2CAPChannelEventType { get }
var kIOBluetoothL2CAPChannelEventTypeClosed: IOBluetoothL2CAPChannelEventType { get }
var kIOBluetoothL2CAPChannelEventTypeReconfigured: IOBluetoothL2CAPChannelEventType { get }
var kIOBluetoothL2CAPChannelEventTypeWriteComplete: IOBluetoothL2CAPChannelEventType { get }
var kIOBluetoothL2CAPChannelEventTypeQueueSpaceAvailable: IOBluetoothL2CAPChannelEventType { get }
struct IOBluetoothL2CAPChannelDataBlock {
  var dataPtr: UnsafeMutablePointer<Void>
  var dataSize: Int
  init()
  init(dataPtr: UnsafeMutablePointer<Void>, dataSize: Int)
}
struct IOBluetoothL2CAPChannelEvent {
  struct __Unnamed_union_u {
    var data: IOBluetoothL2CAPChannelDataBlock
    var writeRefCon: UnsafeMutablePointer<Void>
    var padding: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    init(data: IOBluetoothL2CAPChannelDataBlock)
    init(writeRefCon: UnsafeMutablePointer<Void>)
    init(padding: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
    init()
  }
  var eventType: IOBluetoothL2CAPChannelEventType
  var u: IOBluetoothL2CAPChannelEvent.__Unnamed_union_u
  var status: IOReturn
  init()
  init(eventType: IOBluetoothL2CAPChannelEventType, u: IOBluetoothL2CAPChannelEvent.__Unnamed_union_u, status: IOReturn)
}
typealias IOBluetoothL2CAPChannelIncomingDataListener = @convention(c) (IOBluetoothL2CAPChannel!, UnsafeMutablePointer<Void>, UInt16, UnsafeMutablePointer<Void>) -> Void
typealias IOBluetoothL2CAPChannelIncomingEventListener = @convention(c) (IOBluetoothL2CAPChannel!, UnsafeMutablePointer<Void>, UnsafeMutablePointer<IOBluetoothL2CAPChannelEvent>) -> Void

/*!
 	@class IOBluetoothL2CAPChannel
	@abstract An instance of IOBluetoothL2CAPChannel represents a single open L2CAP channel.
	@discussion	A client won't create IOBluetoothL2CAPChannel objects directly.  Instead, the IOBluetoothDevice's 
                L2CAP channel open API is responsible for opening a new L2CAP channel and returning an
                IOBluetoothL2CAPChannel instance representing that newly opened channel.  Additionally, the IOBluetooth
                notification system will send notifications when new L2CAP channels are open (if requested).
                
                After a new L2CAP channel is opened, the L2CAP configuration process will not be completed until an
                incoming data listener is registered with the IOBluetoothL2CAPChannel object.  The reason for this is
                to due to the limited buffering done of incoming L2CAP data.  This way, we avoid the situation where 
                incoming data is received before the client is ready for it.  Once a client is done with an
                IOBluetoothL2CAPChannel that it opened, it should call -closeChannel.  Additionally, if the client
                does not intend to use the connection to the remote device any further, it should call -closeConnection
                on the IOBluetoothDevice object.
*/
class IOBluetoothL2CAPChannel : IOBluetoothObject, NSPortDelegate {

  /*!
      @method	registerForChannelOpenNotifications:selector:
  	@abstract	Allows a client to register for L2CAP channel open notifications for any L2CAP channel.
  	@discussion	The given selector will be called on the target object whenever any L2CAP channel is opened.
  				The selector should accept two arguments.  The first is the user notification object.  The second
  				is the IOBluetoothL2CAPChannel that was opened.
  	@param		object		Target object
  	@param		selector	Selector to be called on the target object when a new L2CAP channel is opened.
  	@result		Returns an IOBluetoothUserNotification representing the outstanding L2CAP channel notification.
  				To unregister the notification, call -unregister on the resulting IOBluetoothUserNotification 
  				object.  If an error is encountered creating the notification, nil is returned.  The returned
  				IOBluetoothUserNotification will be valid for as long as the notification is registered.  It is
  				not necessary to retain the result.  Once -unregister is called on it, it will no longer be valid.
  */
  class func registerForChannelOpenNotifications(object: AnyObject!, selector: Selector) -> IOBluetoothUserNotification!

  /*!
      @method	registerForChannelOpenNotifications:selector:withPSM:direction:
  	@abstract	Allows a client to register for L2CAP channel open notifications for certain types of
  				L2CAP channels.
  	@discussion	The given selector will be called on the target object whenever an L2CAP channel with the given
  				attributes is opened.  The selector should accept two arguments.  The first is the user 
  				notification object.  The second is the IOBluetoothL2CAPChannel that was opened.
  	@param		object		Target object
  	@param		selector	Selector to be called on the target object when a new L2CAP channel is opened.
  	@param		psm			PSM to match a new L2CAP channel.  If the PSM doesn't matter, 0 may be passed in.
  	@param		inDirection	The desired direction of the L2CAP channel - kIOBluetoothUserNotificationChannelDirectionAny
  				if the direction doesn't matter.
  	@result		Returns an IOBluetoothUserNotification representing the outstanding L2CAP channel notification.
  				To unregister the notification, call -unregister on the resulting IOBluetoothUserNotification 
  				object.  If an error is encountered creating the notification, nil is returned.  The returned
  				IOBluetoothUserNotification will be valid for as long as the notification is registered.  It is
  				not necessary to retain the result.  Once -unregister is called on it, it will no longer be valid.
  */
  class func registerForChannelOpenNotifications(object: AnyObject!, selector: Selector, withPSM psm: BluetoothL2CAPPSM, direction inDirection: IOBluetoothUserNotificationChannelDirection) -> IOBluetoothUserNotification!

  /*!
      @method	withObjectID:
  	@abstract	Returns the IObluetoothL2CAPChannel with the given IOBluetoothObjectID.
  	@discussion	The IOBluetoothObjectID can be used as a global reference for a given IOBluetoothL2CAPChannel.  It allows
  				two separate applications to refer to the same IOBluetoothL2CAPChannel object.
  	@param		objectID	IOBluetoothObjectID of the desired IOBluetoothL2CAPChannel.
  	@result		Returns the IOBluetoothL2CAPChannel that matches the given IOBluetoothObjectID if one exists.
  				If no matching L2CAP channel exists, nil is returned.
  */
  class func withObjectID(objectID: IOBluetoothObjectID) -> Self!

  /*!
      @method		closeChannel
  	@abstract	Initiates the close process on an open L2CAP channel.
      @discussion	This method may only be called by the client that opened the channel in the first place.  In the future
                  asynchronous and synchronous versions will be provided that let the client know when the close process
                  has been finished.
  	@result		Returns kIOReturnSuccess on success.
  */
  func close() -> IOReturn

  /*!
      @method		getOutgoingMTU
  	@abstract	Returns the current outgoing MTU for the L2CAP channel.
      @discussion	The outgoing MTU represents the maximum L2CAP packet size for packets being sent to the remote device.
  	@result		Returns the current outgoing MTU for the L2CAP channel.
  */
  var outgoingMTU: BluetoothL2CAPMTU { get }

  /*!
      @method		getIncomingMTU
  	@abstract	Returns the current incoming MTU for the L2CAP channel.
      @discussion	The incoming MTU represents the maximum L2CAP packet size for packets being sent by the remote device.
  	@result		Returns the current incoming MTU for the L2CAP channel.
  */
  var incomingMTU: BluetoothL2CAPMTU { get }

  /*!
      @method		requestRemoteMTU:
  	@abstract	Initiates the process to reconfigure the L2CAP channel with a new outgoing MTU.
      @discussion	Currently, this API does not give an indication that the re-config process has completed.  In
                  the future additional API will be available to provide that information both synchronously and
                  asynchronously.
      @param		remoteMTU	The desired outgoing MTU. 
  	@result		Returns kIOReturnSuccess if the channel re-configure process was successfully initiated.
  */
  func requestRemoteMTU(remoteMTU: BluetoothL2CAPMTU) -> IOReturn

  /*!
      @method		writeAsync:length:refcon:
  	@abstract	Writes the given data over the target L2CAP channel asynchronously to the remote device.
      @discussion	The length of the data may not exceed the L2CAP channel's ougoing MTU.  When the data has 
  				been successfully passed to the hardware to be transmitted, the delegate method 
  				-l2capChannelWriteComplete:refcon:status: will be called with the refcon passed 
  				into this method.
  
  				NOTE: This method is only available in Mac OS X 10.2.5 (Bluetooth v1.2) or later.
      @param		data	Pointer to the buffer containing the data to send.
      @param		length 	The length of the given data buffer.
  	@param		refcon	User supplied value that gets passed to the write callback.
  	@result		Returns kIOReturnSuccess if the data was buffered successfully.
  */
  func writeAsync(data: UnsafeMutablePointer<Void>, length: UInt16, refcon: UnsafeMutablePointer<Void>) -> IOReturn

  /*!
      @method		writeSync:length:
  	@abstract	Writes the given data synchronously over the target L2CAP channel to the remote device.
      @discussion	The length of the data may not exceed the L2CAP channel's ougoing MTU.  This method will
  				block until the data has been successfully sent to the hardware for transmission (or an error
  				occurs).
  
  				NOTE: This method is only available in Mac OS X 10.2.5 (Bluetooth v1.2) or later.
      @param		data	Pointer to the buffer containing the data to send.
      @param		length 	The length of the given data buffer.
  	@result		Returns kIOReturnSuccess if the data was written successfully.
  */
  func writeSync(data: UnsafeMutablePointer<Void>, length: UInt16) -> IOReturn

  /*!
      @method		setDelegate:
  	@abstract	Allows an object to register itself as client of the L2CAP channel.
      @discussion A channel delegate is the object the L2CAP channel uses as target for data and events. The
  				developer will implement only the the methods he/she is interested in. A list of the
  				possible methods is at the end of this file in the definition of the informal protocol
  				IOBluetoothL2CAPChannelDelegate.
                  A newly opened L2CAP channel will not complete its configuration process until the client
                  that opened it registers a connectionHandler.  This prevents that case where incoming
                  data is received before the client is ready. 
  
  				NOTE: This method is only available in Mac OS X 10.2.5 (Bluetooth v1.2) or later.
  	@param		channelDelegate	the object that will play the role of channel delegate [NOTE the l2cap channel will retain the delegate].
  	@result		Returns kIOReturnSuccess if the delegate is successfully registered.
  */
  func setDelegate(channelDelegate: AnyObject!) -> IOReturn

  /*!
      @method		setDelegate:withConfiguration:
  	@abstract	Allows an object to register itself as client of the L2CAP channel.
      @discussion A channel delegate is the object the L2CAP channel uses as target for data and events. The
  				developer will implement only the the methods he/she is interested in. A list of the
  				possible methods is at the end of this file in the definition of the informal protocol
  				IOBluetoothL2CAPChannelDelegate.
                  A newly opened L2CAP channel will not complete its configuration process until the client
                  that opened it registers a connectionHandler.  This prevents that case where incoming
                  data is received before the client is ready. 
  
  				NOTE: This method is only available in Mac OS X 10.5 (Bluetooth v2.0) or later.
  	@param		channelDelegate	the object that will play the role of channel delegate.
  	@param		channelConfiguration the dictionary that describes the initial configuration for
  				the channel.
  	@result		Returns kIOReturnSuccess if the delegate is successfully registered.
  */
  func setDelegate(channelDelegate: AnyObject!, withConfiguration channelConfiguration: [NSObject : AnyObject]!) -> IOReturn

  /*!
   @method		delegate
   @abstract		Returns the currently assigned delegate
   @discussion	An incoming channel is one that was initiated by a remote device.
   @result		Returns the current delegate, or nil if one is not set.
   */
  func delegate() -> AnyObject!

  /*!
      @method		getDevice
  	@abstract	Returns the IOBluetoothDevice to which the target L2CAP channel is open.
  	@result		Returns the IOBluetoothDevice to which the target L2CAP channel is open.
  */
  var device: IOBluetoothDevice! { get }

  /*!
      @method		getObjectID
  	@abstract	Returns the IOBluetoothObjectID of the given IOBluetoothL2CAPChannel.
      @discussion	The IOBluetoothObjectID can be used as a global reference for a given IOBluetoothL2CAPChannel.  It allows
  				two separate applications to refer to the same IOBluetoothL2CAPChannel.
  	@result		Returns the IOBluetoothObjectID of the given IOBluetoothL2CAPChannel.
  */
  var objectID: IOBluetoothObjectID { get }

  /*!
      @method		getPSM
  	@abstract	Returns the PSM for the target L2CAP channel.
  	@result		Returns the PSM for the target L2CAP channel.
  */
  var psm: BluetoothL2CAPPSM { get }

  /*!
      @method		getLocalChannelID
  	@abstract	Returns the local L2CAP channel ID for the target L2CAP channel.
  	@result		Returns the local L2CAP channel ID for the target L2CAP channel.
  */
  var localChannelID: BluetoothL2CAPChannelID { get }

  /*!
      @method		getRemoteChannelID
  	@abstract	Returns the remote L2CAP channel ID for the target L2CAP channel.
  	@result		Returns the remote L2CAP channel ID for the target L2CAP channel.
  */
  var remoteChannelID: BluetoothL2CAPChannelID { get }

  /*!
      @method		isIncoming
  	@abstract	Returns TRUE if the channel is an incoming channel.
      @discussion	An incoming channel is one that was initiated by a remote device.
  	@result		Returns TRUE if the channel is an incoming channel.
  */
  func isIncoming() -> Bool

  /*!
      @method		registerForChannelCloseNotification:selector:
  	@abstract	Allows a client to register for a channel close notification.
      @discussion	The given selector will be called on the target observer when the L2CAP channel is closed.
  				The selector should contain two arguments.  The first is the user notification object. The second
  				is the IOBluetoothL2CAPChannel that was closed.
  	@param		observer	Target observer object
  	@param		inSelector	Selector to be sent to the observer when the L2CAP channel is closed.
  	@result		Returns an IOBluetoothUserNotification representing the outstanding L2CAP channel close notification.
  				To unregister the notification, call -unregister of the returned IOBluetoothUserNotification 
  				object.  If an error is encountered creating the notification, nil is returned.
  */
  func registerForChannelCloseNotification(observer: AnyObject!, selector inSelector: Selector) -> IOBluetoothUserNotification!
  init()
  func handle(message: NSPortMessage)
}
protocol IOBluetoothL2CAPChannelDelegate {
  optional func l2capChannelData(l2capChannel: IOBluetoothL2CAPChannel!, data dataPointer: UnsafeMutablePointer<Void>, length dataLength: Int)
  optional func l2capChannelOpenComplete(l2capChannel: IOBluetoothL2CAPChannel!, status error: IOReturn)
  optional func l2capChannelClosed(l2capChannel: IOBluetoothL2CAPChannel!)
  optional func l2capChannelReconfigured(l2capChannel: IOBluetoothL2CAPChannel!)
  optional func l2capChannelWriteComplete(l2capChannel: IOBluetoothL2CAPChannel!, refcon: UnsafeMutablePointer<Void>, status error: IOReturn)
  optional func l2capChannelQueueSpaceAvailable(l2capChannel: IOBluetoothL2CAPChannel!)
}
let IOBluetoothL2CAPChannelPublishedNotification: String
let IOBluetoothL2CAPChannelTerminatedNotification: String
extension NSObject {
}
class IOBluetoothOBEXSession : OBEXSession, IOBluetoothRFCOMMChannelDelegate {

  /*!	@method		withSDPServiceRecord
  	@abstract	Creates a Bluetooth-based OBEX Session using an SDP service record, typically obtained from a device/service
  				browser window controller.
  	@param		inSDPServiceRecord		A valid SDP service record describing the service (and RFCOMM channel) you want to
  										connect to with Bluetooth/OBEX.
  	@result		An OBEX session representing the device/rfcomm channel found in the service record. nil if we failed.
  	@discussion	Note that this does NOT mean the transport connection was open. It will be opened when OBEXConnect is
  				invoked on the session object.
  				
  				*IMPORTANT NOTE*	In Bluetooth framework version 1.0.0, the session returned will NOT be autoreleased as it
  									should be according to objc convention. This has been changed starting in Bluetooth version
  									1.0.1 and later, so it WILL be autoreleased upon return, so you will need to retain
  									it if you want to reference it later.
  */
  class func withSDPServiceRecord(inSDPServiceRecord: IOBluetoothSDPServiceRecord!) -> Self!

  /*!	@method	withDevice
  	@abstract	Creates a Bluetooth-based OBEX Session using a Bluetooth device and a Bluetooth RFCOMM channel ID.
  	@param		inDevice				A valid Bluetooth device describing which device you want to connect to
  										with Bluetooth/OBEX.
  	@param		inRFCOMMChannelID		An RFCOMM Channel ID numbe that is available on the remote device. This channel will
  										be used when the transport connection is attempted.
  	@result		An OBEX session representing the device/rfcomm channel found in the service record. nil if we failed.
  	@discussion	Note that this does NOT mean the transport connection was open. It will be opened when OBEXConnect is
  				invoked on the session object.
  
  				*IMPORTANT NOTE*	In Bluetooth framework version 1.0.0, the session returned will NOT be autoreleased as it
  									should be according to objc convention. This has been changed starting in Bluetooth version
  									1.0.1 and later, so it WILL be autoreleased upon return, so you will need to retain
  									it if you want to reference it later.
  */
  class func withDevice(inDevice: IOBluetoothDevice!, channelID inRFCOMMChannelID: BluetoothRFCOMMChannelID) -> Self!

  /*!	@method		withIncomingRFCOMMChannel
  	@abstract	Creates a Bluetooth-based OBEX Session using an incoming RFCOMM channel.
  	@param		inChannel				The channel to use to create a connection to a device.
  	@param		inEventSelector			The selector that gets called when an event occurs on the OBEX Session.
  	@param		inEventSelectorTarget	The object that is used to call the above selector.
  	@param		inUserRefCon			The reference constant. Pass whatever you wish - it will be returned to you in the selector.
  	@result		
  	@discussion	
  
  				*IMPORTANT NOTE*	In Bluetooth framework version 1.0.0, the session returned will NOT be autoreleased as it
  									should be according to objc convention. This has been changed starting in Bluetooth version
  									1.0.1 and later, so it WILL be autoreleased upon return, so you will need to retain
  									it if you want to reference it later.
  */
  class func withIncomingRFCOMMChannel(inChannel: IOBluetoothRFCOMMChannel!, eventSelector inEventSelector: Selector, selectorTarget inEventSelectorTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> Self!

  /*!	@method		initWithSDPServiceRecord
  	@abstract	Initializes a Bluetooth-based OBEX Session using an SDP service record.
  	@param		inSDPServiceRecord		
  	@result		
  	@discussion	
  */
  init!(sdpServiceRecord inSDPServiceRecord: IOBluetoothSDPServiceRecord!)

  /*!	@method		initWithDevice
  	@abstract	Initializes a Bluetooth-based OBEX Session using a Bluetooth device.
  	@param		inDevice		The bluetooth device on which to open the OBEXSession.
  	@param		inChannelID		The RFCOMM channel ID to use when opening the connection.
  	@result		
  	@discussion	
  */
  init!(device inDevice: IOBluetoothDevice!, channelID inChannelID: BluetoothRFCOMMChannelID)

  /*!	@method		initWithIncomingRFCOMMChannel
  	@abstract	Initializes a Bluetooth-based OBEX Session using an incoming RFCOMM channel.
  	@param		inChannelID				RFCOMM channel ID of the desired channel to be used.
  	@param		inEventSelector			The selector to be called when an event is received.
  	@param		inEventSelectorTarget	The target object that get the selector message.
  	@param		refCon					caller reference constant, pass whatever you want, it will be returned to you in the selector.		
  	@result		
  	@discussion	
  */
  init!(incomingRFCOMMChannel inChannel: IOBluetoothRFCOMMChannel!, eventSelector inEventSelector: Selector, selectorTarget inEventSelectorTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>)

  /*!	@method		getRFCOMMChannel
  	@abstract	Get the Bluetooth RFCOMM channel being used by the session object.
  	@result		A IOBluetoothRFCOMMChannel object.
  	@discussion	This could potentially be nil even though you have a valid OBEX session, because the RFCOMM channel is
  				only valid when the session is connected.
  */
  func getRFCOMMChannel() -> IOBluetoothRFCOMMChannel!

  /*!	@method		getDevice
  	@abstract	Get the Bluetooth Device being used by the session object.
  	@result		An IOBluetoothDevice object.
  	@discussion	
  */
  func getDevice() -> IOBluetoothDevice!

  /*!	@method		sendBufferTroughChannel
  	@abstract	Sends the next block of data trough the rfcomm channel.
  	@result
  	@discussion	Since a send in the rfcomm channel is broken in multiple write calls (this actually is true only if the size is grater
  	than the rfcomm MTU). Each write call is performed by sendBufferTroughChannel. This should never need to be overwritten.
  */
  func sendBufferTroughChannel() -> IOReturn

  /*!	@method		restartTransmission
  	@abstract	If the transmission was stopeed due to the lack of buffers this call restarts it.
  	@result
  	@discussion	If the transmission was stopeed due to the lack of buffers this call restarts it.
  */
  func restartTransmission()

  /*!	@method		isSessionTargetAMac
  	@abstract	Tells whether the target device is a Mac by checking its service record.
  	@result		TRUE only if device service record has Mac entry, FALSE for all else.
  	@discussion	Tells whether the target device is a Mac by checking its service record.
  */
  func isSessionTargetAMac() -> Bool

  /*!	@method		openTransportConnection
  	@abstract	An OBEXSession override. When this is called by the session baseclass, we will attempt to open the
  				transport connection. In our case, this would be an RFCOMM channel to another Bluetooth device.
  	@result		Success or failure code.
  	@discussion	Your selector should have the following signature:
  	
  					-(void)transportConnectionSelector:(id)refcon		status:(OBEXError)status;
  				
  				Thus you could use it with openTransportConnection like this:
  				
  					OBEXError	error = [anOBEXSession	openTransportConnection:@selector( transportConnectionSelector:status: )
  														selectorTarget:self
  														refCon:anOBEXSession];	// or whatever you want to pass as a refCon...
  				
  				Be sure to check the status code! Assume the connection was not opened unless status is kOBEXSuccess.
  				
  */
  func openTransportConnection(inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError

  /*!	@method		hasOpenTransportConnection
  	@abstract	An OBEXSession override. When this is called by the session baseclass, we will return whether or not we
  				have a transport connection established to another OBEX server/client. In our case we will tell whether
  				or not the RFCOMM channel to a remote device is still open.
  	@result		True or false, whether there is already an open transport connection for this OBEX session.
  	@discussion	
  */
  func hasOpenTransportConnection() -> Bool

  /*!	@method		closeTransportConnection
  	@abstract	An OBEXSession override. When this is called by the session baseclass, we will close the transport
  				connection if it is opened. In our case, it will be the RFCOMM channel that needs closing.
  	@result		Success or failure code, describing whether the call succeeded in closing the transport connection successfully.
  	@discussion	
  */
  func closeTransportConnection() -> OBEXError

  /*!	@method		sendDataToTransport
  	@abstract	An OBEXSession override. When this is called by the session baseclass, we will send the data we are given
  				over our transport connection. If none is open, we could try to open it, or just return an error. In our
  				case, it will be sent over the RFCOMM channel.
  	@result		Success or failure code, describing whether the call succeeded in writing the data to the transport.
  	@discussion	
  */
  func sendDataToTransport(inDataToSend: UnsafeMutablePointer<Void>, dataLength inDataLength: Int) -> OBEXError

  /*!	@method		setOpenTransportConnectionAsyncSelector
  	@abstract	Allows you to set the selector to be used when a transport connection is opened, or fails to open.
  	@param		inEventSelector				Selector to call on the target.
  	@param		inEventSelectorTarget		Target to be called with the selector.
  	@param		inUserRefCon				User's refCon that will get passed to them when their selector is invoked.
  	@discussion	You do not need to call this on the session typically, unless you have subclassed the OBEXSession to
  				implement a new transport and that transport supports async opening of connections. If it does not support
  				async open, then using this is pointless.
  */
  func setOpenTransportConnectionAsyncSelector(inSelector: Selector, target inSelectorTarget: AnyObject!, refCon inUserRefCon: AnyObject!)

  /*!	@method		setOBEXSessionOpenConnectionCallback
  	@abstract	For C API support. Allows you to set the callback to be invoked when the OBEX connection is actually opened.
  	@param		inCallback			function to call on the target.
  	@param		inUserRefCon		user's reference constant, will be returned on the callback.
  */
  func setOBEXSessionOpenConnectionCallback(inCallback: IOBluetoothOBEXSessionOpenConnectionCallback!, refCon inUserRefCon: UnsafeMutablePointer<Void>)
  init()
  func rfcommChannelData(rfcommChannel: IOBluetoothRFCOMMChannel!, data dataPointer: UnsafeMutablePointer<Void>, length dataLength: Int)
  func rfcommChannelOpenComplete(rfcommChannel: IOBluetoothRFCOMMChannel!, status error: IOReturn)
  func rfcommChannelClosed(rfcommChannel: IOBluetoothRFCOMMChannel!)
  func rfcommChannelControlSignalsChanged(rfcommChannel: IOBluetoothRFCOMMChannel!)
  func rfcommChannelFlowControlChanged(rfcommChannel: IOBluetoothRFCOMMChannel!)
  func rfcommChannelWriteComplete(rfcommChannel: IOBluetoothRFCOMMChannel!, refcon: UnsafeMutablePointer<Void>, status error: IOReturn)
  func rfcommChannelQueueSpaceAvailable(rfcommChannel: IOBluetoothRFCOMMChannel!)
}
class IOBluetoothObject : NSObject, NSCopying {
  init()
  func copy(zone zone: NSZone = nil) -> AnyObject
}
var kBluetoothTargetDoesNotRespondToCallbackExceptionName: String { get }

/*!
    @class IOBluetoothRFCOMMChannel
    @abstract An instance of this class represents an rfcomm channel as defined by the Bluetooth SDP spec..
    @discussion An RFCOMM channel object can be obtained by opening an rfcomm channel in a device, or
    by requesting a notification when a channel is created (this is commonly used to provide services).
*/
class IOBluetoothRFCOMMChannel : IOBluetoothObject, NSPortDelegate {

  /*!
  	@method	registerForChannelOpenNotifications:selector:
  	@abstract	Allows a client to register for RFCOMM channel open notifications for any RFCOMM channel.
  	@discussion	The given selector will be called on the target object whenever any RFCOMM channel is opened.
  				The selector should accept two arguments.  The first is the user notification object.  The second
  				is the IOBluetoothRFCOMMChannel that was opened.
  	@param		rfcommChannelRef IOBluetoothRFCOMMChannelRef for which an IOBluetoothRFCOMMChannel * is desired.
  	@param		object		Target object
  	@param		selector	Selector to be called on the target object when a new RFCOMM channel is opened.
  				the format for the selector is: 
  				-(void) selectorName:(IOBluetoothUserNotification *)inNotification channel:(IOBluetoothRFCOMMChannel *)newChannel
  	@result		Returns an IOBluetoothUserNotification representing the outstanding RFCOMM channel notification.
  				To unregister the notification, call -unregister on the resulting IOBluetoothUserNotification 
  				object.  If an error is encountered creating the notification, nil is returned.  The returned
  				IOBluetoothUserNotification will be valid for as long as the notification is registered.  It is
  				not necessary to retain the result.  Once -unregister is called on it, it will no longer be valid.
  */
  class func registerForChannelOpenNotifications(object: AnyObject!, selector: Selector) -> IOBluetoothUserNotification!

  /*!
      @method	registerForChannelOpenNotifications:selector:
  	@abstract	Allows a client to register for RFCOMM channel open notifications for certain types of
  				RFCOMM channels.
  	@discussion	The given selector will be called on the target object whenever an RFCOMM channel with the given
  				attributes is opened.  The selector should accept two arguments.  The first is the user 
  				notification object.  The second is the IOBluetoothRFCOMMChannel that was opened.
  	@param		object		Target object
  	@param		selector	Selector to be called on the target object when a new RFCOMM channel is opened.
  				the format for the selector is: 
  				-(void) selectorName:(IOBluetoothUserNotification *)inNotification channel:(IOBluetoothRFCOMMChannel *)newChannel
  	@param		channeLID	RFCOMM channel ID to match a new RFCOMM channel.  If the channel ID doesn't matter, 0 may be passed in.
  	@param		inDirection	The desired direction of the RFCOMM channel - kIOBluetoothUserNotificationChannelDirectionAny
  				if the direction doesn't matter.
  	@result		Returns an IOBluetoothUserNotification representing the outstanding RFCOMM channel notification.
  				To unregister the notification, call -unregister on the resulting IOBluetoothUserNotification 
  				object.  If an error is encountered creating the notification, nil is returned.  The returned
  				IOBluetoothUserNotification will be valid for as long as the notification is registered.  It is
  				not necessary to retain the result.  Once -unregister is called on it, it will no longer be valid.
  */
  class func registerForChannelOpenNotifications(object: AnyObject!, selector: Selector, withChannelID channelID: BluetoothRFCOMMChannelID, direction inDirection: IOBluetoothUserNotificationChannelDirection) -> IOBluetoothUserNotification!

  /*!	@method	withRFCOMMChannelRef:
  	@abstract	Method call to convert an IOBluetoothRFCOMMChannelRef into an IOBluetoothRFCOMMChannel *.
          @param	rfcommChannelRef IOBluetoothRFCOMMChannelRef for which an IOBluetoothRFCOMMChannel * is desired.
  	@result		Returns the IOBluetoothRFCOMMChannel * for the given IOBluetoothRFCOMMChannelRef.
  */
  class func withRFCOMMChannelRef(rfcommChannelRef: IOBluetoothRFCOMMChannel!) -> Self!

  /*!
      @method	withObjectID:
  	@abstract	Returns the IObluetoothRFCOMMChannel with the given IOBluetoothObjectID.
  	@discussion	The IOBluetoothObjectID can be used as a global reference for a given IObluetoothRFCOMMChannel.  It allows
  				two separate applications to refer to the same IObluetoothRFCOMMChannel object.
  	@param		objectID	IOBluetoothObjectID of the desired IObluetoothRFCOMMChannel.
  	@result		Returns the IObluetoothRFCOMMChannel that matches the given IOBluetoothObjectID if one exists.
  				If no matching RFCOMM channel exists, nil is returned.
  */
  class func withObjectID(objectID: IOBluetoothObjectID) -> Self!

  /*!	@method	getRFCOMMChannelRef
  	@abstract	Returns an IOBluetoothRFCOMMChannelRef representation of the target IOBluetoothRFCOMMChannel object.
  	@result		Returns an IOBluetoothRFCOMMChannelRef representation of the target IOBluetoothRFCOMMChannel object.
  */
  func getRef() -> Unmanaged<IOBluetoothRFCOMMChannel>!

  /*!
      @method closeChannel
      @abstract Close the channel.
      @result An error code value. 0 if successful.
  */
  func close() -> IOReturn

  /*!
      @method isOpen
      @abstract Returns the state of the channel. 
      @discussion	note that "not open" means closed, opening and closing.
      @result TRUE if the channel state is open,  FALSE otherwise.
  */
  func isOpen() -> Bool

  /*!
      @method getMTU
      @abstract Returns the channel maximum transfer unit.
      @discussion Returns the length of the largest chunk of data that this channel can carry. If the
      caller wishes to use the write:length:sleep: api the length of the data can not be bigger than
      the channel MTU (maximum transfer unit). 
      @result Channel MTU size .
  */
  func getMTU() -> BluetoothRFCOMMMTU

  /*!
      @method isTransmissionPaused
      @abstract Returns TRUE if flow control is off.
      @discussion Returns true if the remote device flow control is stopping out transmission. This is
              useful because we do not buffer data, we stop the transmitting actor. With this method
              the transmitter can check if sending data is going to be successful or is going to block.
      @result TRUE if the action of sending data will block the current thread, FALSE otherwise.
  
  */
  func isTransmissionPaused() -> Bool

  /*!
      @method  writeAsync:length:refcon:
      @abstract Sends a block of data in the channel asynchronously.
      @discussion The number of bytes to be sent must not exceed the channel MTU. 
  				If the return value is an error condition none of the data was sent.  Once the data
  				has been successfully passed to the hardware to be transmitted, the delegate method
  				-rfcommChannelWriteComplete:refcon:status: will be called with the refcon that was passed
  				to this method.
  
  				NOTE: This method is only available in Mac OS X 10.2.5 (Bluetooth v1.2) or later.
      @param		data A pointer to the data buffer to be sent.
      @param		length The length of the buffer to be sent (in bytes).
  	@param		refcon User supplied value that gets passed to the write callback.
      @result		Returns kIOReturnSuccess if the data was buffered successfully. 
  */
  func writeAsync(data: UnsafeMutablePointer<Void>, length: UInt16, refcon: UnsafeMutablePointer<Void>) -> IOReturn

  /*!
      @method  writeSync:length:
      @abstract Sends a block of data in the channel synchronously.
      @discussion	Sends data through the channel. The number of bytes to be sent must not exceed the channel MTU. 
  				If the return value is an error condition none of the data was sent.  This method will
  				block until the data has been successfully sent to the hardware for transmission (or until
  				an error occurs).
  
  				NOTE: This method is only available in Mac OS X 10.2.5 (Bluetooth v1.2) or later.
      @param		data A pointer to the data buffer to be sent.
      @param		length The length of the buffer to be sent (in bytes).
  	@result		Returns kIOReturnSuccess if the data was written successfully.
  */
  func writeSync(data: UnsafeMutablePointer<Void>, length: UInt16) -> IOReturn

  /*!
      @method  setSerialParameters:dataBits:parity:stopBits:
      @abstract Changes the parameters of the serial connection. 
      @param speed the baudrate.
      @param nBits number of data bits.
      @param parity the type of parity can be NoParity, OddParity, EvenParity or MaxParity.
      @param bitStop number of stop bits.
      @result An error code value. 0 if successful. 
  */
  func setSerialParameters(speed: UInt32, dataBits nBits: UInt8, parity: BluetoothRFCOMMParityType, stopBits bitStop: UInt8) -> IOReturn

  /*!
      @method  sendRemoteLineStatus:
      @abstract Sends an error to the remote side. 
      @param lineStatus the error type. The error code can be NoError, OverrunError, ParityError or FramingError.
      @result An error code value. 0 if successful. 
  */
  func sendRemoteLineStatus(lineStatus: BluetoothRFCOMMLineStatus) -> IOReturn

  /*!
      @method		setDelegate:
  	@abstract	Allows an object to register itself as a client of the RFCOMM channel.
      @discussion A channel delegate is the object the RFCOMM channel uses as target for data and events. The
  				developer will implement only the the methods he/she is interested in. A list of the
  				possible methods is at the end of this file in the definition of the informal protocol
  				IOBluetoothRFCOMMChannelDelegate.
  
  				NOTE: This method is only available in Mac OS X 10.2.5 (Bluetooth v1.2) or later.
  				NOTE: Before Mac OS X 10.6, the delegate was retained.  On 10.6 and later, it is not.
  	@param		delegate	The object that will play the role of channel delegate [NOTE the rfcomm channel will reatin the delegate].
  	@result		Returns kIOReturnSuccess if the delegate is successfully registered.
  */
  func setDelegate(delegate: AnyObject!) -> IOReturn

  /*!
   @method	delegate
   @abstract	Returns the object delegate
   @result	the current delegate, or nil
   */
  func delegate() -> AnyObject!

  /*!
      @method channelNumber
      @abstract Returns the object rfcomm channel ID. 
      @result the RFCOMM channel number .
  */
  func getID() -> BluetoothRFCOMMChannelID

  /*!
      @method isIncoming
      @abstract	Returns the direction of the channel.  An incoming channel is one that was opened by the remote
                  device. 
      @result 	Returns TRUE if the channel was opened by the remote device, FALSE if the channel was opened by this object.
  */
  func isIncoming() -> Bool

  /*!
      @method getDevice
      @abstract Returns the Bluetooth Device that carries the rfcomm data. 
      @result the IOBluetoothDevice object .
  */
  func getDevice() -> IOBluetoothDevice!

  /*!
      @method		getObjectID
  	@abstract	Returns the IOBluetoothObjectID of the given IOBluetoothRFCOMMChannel.
      @discussion	The IOBluetoothObjectID can be used as a global reference for a given IOBluetoothRFCOMMChannel.  It allows
  				two separate applications to refer to the same IOBluetoothRFCOMMChannel.
  	@result		Returns the IOBluetoothObjectID of the given IOBluetoothRFCOMMChannel.
  */
  func getObjectID() -> IOBluetoothObjectID

  /*!
      @method		registerForChannelCloseNotification:selector:
  	@abstract	Allows a client to register for a channel close notification.
      @discussion	The given selector will be called on the target observer when the RFCOMM channel is closed.
  				The selector should contain two arguments.  The first is the user notification object. The second
  				is the IOBluetoothRFCOMMChannel that was closed.
  	@param		observer	Target observer object
  	@param		inSelector	Selector to be sent to the observer when the RFCOMM channel is closed.
  	@result		Returns an IOBluetoothUserNotification representing the outstanding RFCOMM channel close notification.
  				To unregister the notification, call -unregister of the returned IOBluetoothUserNotification 
  				object.  If an error is encountered creating the notification, nil is returned.
  */
  func registerForChannelCloseNotification(observer: AnyObject!, selector inSelector: Selector) -> IOBluetoothUserNotification!
  init()
  func handle(message: NSPortMessage)
}
protocol IOBluetoothRFCOMMChannelDelegate {
  optional func rfcommChannelData(rfcommChannel: IOBluetoothRFCOMMChannel!, data dataPointer: UnsafeMutablePointer<Void>, length dataLength: Int)
  optional func rfcommChannelOpenComplete(rfcommChannel: IOBluetoothRFCOMMChannel!, status error: IOReturn)
  optional func rfcommChannelClosed(rfcommChannel: IOBluetoothRFCOMMChannel!)
  optional func rfcommChannelControlSignalsChanged(rfcommChannel: IOBluetoothRFCOMMChannel!)
  optional func rfcommChannelFlowControlChanged(rfcommChannel: IOBluetoothRFCOMMChannel!)
  optional func rfcommChannelWriteComplete(rfcommChannel: IOBluetoothRFCOMMChannel!, refcon: UnsafeMutablePointer<Void>, status error: IOReturn)
  optional func rfcommChannelQueueSpaceAvailable(rfcommChannel: IOBluetoothRFCOMMChannel!)
}

/*!
    @class IOBluetoothSDPDataElement
    @abstract An instance of this class represents a single SDP data element as defined by the Bluetooth SDP spec.
    @discussion The data types described by the spec have been mapped onto the base Foundation classes NSNumber, 
                NSArray, NSData as well as IOBluetoothSDPUUID.  The number and boolean types (type descriptor 1, 2 
                and 5) are represented as NSNumber objects with the exception of 128-bit numbers which are 
                represented as NSData objects in their raw format.  The UUID type (type descriptor 3) is 
                represented by IOBluetoothSDPUUID.  The string and URL types (type descriptor 4 and 8) are 
                represented by NSString.  The sequence types (type descriptor 6 and 7) are represented by NSArray.
                
                Typically, you will not need to create an IOBluetoothSDPDataElement directly, the system will
                do that automatically for both client and server operations.  However, the current API for adding 
                SDP services to the system does allow the use of an NSDictionary based format for creating new 
                services.  The purpose for that is to allow a service to be built up completely in a text file
                (a plist for example) and then easily imported into an app and added to the system without a 
                lot of tedious code to build up the entire SDP service record.
                
                The basis for that NSDictionary structure comes from the IOBluetoothSDPDataElement.  At its
                simplest, a data element is made up of three parts: the type descriptor, the size (from which
                the size descriptor is generated) and the actual value.  To provide a complete representation
                of a data element, an NSDictionary with three entries can be used.  Each of the three entries
                has a key/value pair representing one of the three attributes of a data element.  The first
                key/value pair has a key 'DataElementType' that contains a number value with the actual
                type descriptor for the data element.  The second pair has a key 'DataElementSize' that
                contains the actual size of the element in bytes.  The size descriptor will be calculated
                based on the size and type of the element.  The third pair is the value itself whose key is
                'DataElementValue' and whose type corresponds to the type mapping above.
                
                In addition to this complete description of a data element, their are some shortcuts that
                can be used for some of the common types and sizes.
                
                If the 'DataElementType' value is one of the numeric types (1, 2), the 'DataElementValue' 
                can be an NSData instead of an NSNumber.  In that case, the numeric data is taken in network 
                byte order (MSB first).  Additionally, the 'DataElementSize' parameter may be omitted and the 
                size will be taken from the length of the data object.
                
                If the 'DataElementType' value is the nil type (0), no 'DataElementSize' or 'DataElementValue'
                entries are needed.
                
                If the 'DataElementType' value is any of the other types, the 'DataElementSize' entry is not
                needed since the size will be taken directly from the value (data, array, string).
                
                In the case where the element is an unsigned, 32-bit integer (type descriptor 1, size descriptor
                4), the value itself may simply be a number (instead of a dictionary as in the previous examples).
                
                In the case where the element is a UUID (type descriptor 3), the value itself may be a data object.  
                The UUID type will be inferred and the size taken from the length of the data object.
                
                In the case where the element is a text string (type descriptor 4), the value may be a string object.
                The text string type will be inferred and the size taken from the length of the string.
                
                In the case where the element is a data element sequence, the value may be an array object.  The
                type will be inferred and the size taken from the length of the array.  Additionally, the array
                must contain sub-elements that will be parsed out individually.
*/
class IOBluetoothSDPDataElement : NSObject, NSCoding {

  /*!
      @method withElementValue:
      @abstract Creates a new IOBluetoothSDPDataElement with the given value.
      @discussion The value must follow the format listed above and must be an instance of NSData, NSString, NSNumber, 
                  NSArray, NSDictionary, IOBluetoothSDPUUID.
      @param element	The data element value of one of the specified types. 
      @result Returns the newly allocated data element object.  Returns nil if there was an error parsing the element
              value.  The returned IOBluetoothSDPDataElement object has been autoreleased, so it is not necessary
              for the caller to release it.  If the object is to be referenced and kept around, retain should be
              called.
  */
  class func withElementValue(element: NSObject!) -> Self!

  /*!
      @method withType:sizeDescriptor:size:value:
      @abstract Creates a new IOBluetoothSDPDataElement with the given attributes.
      @discussion Warning - be careful using this method.  There is next to no error checking done on the 
                  attributes.  It is entirely possible to construct an invalid data element.  It is recommended
                  that +withElementValue: be used instead of this one.
      @param typeDescriptor The type descriptor for the data element.
      @param sizeDescriptor The size descriptor for the data element (verify it matches the size parameter).
      @param size The size of the data element in bytes (make sure it is a valid size for the given size descriptor).
      @param value The raw value itself.  This must be the base NSString, NSNumber, NSArray or NSData objects.  It
                      may not be NSDictionary.  If a dictionary format is present, use +withElementValue:.
      @result Returns the newly allocated data element object.  Returns nil if an error is encountered (not likely
                      due to the limited error checking currently done).  The returned IOBluetoothSDPDataElement 
                      object has been autoreleased, so it is not necessary for the caller to release it.  If the 
                      object is to be referenced and kept around, retain should be called.
  */
  class func withType(type: BluetoothSDPDataElementTypeDescriptor, sizeDescriptor newSizeDescriptor: BluetoothSDPDataElementSizeDescriptor, size newSize: UInt32, value newValue: NSObject!) -> Self!

  /*!
      @method	withSDPDataElementRef:
  	@abstract	Method call to convert an IOBluetoothSDPDataElementRef into an IOBluetoothSDPDataElement *.
          @param	sdpDataElementRef IOBluetoothSDPDataElementRef for which an IOBluetoothSDPDataElement * is desired.
  	@result		Returns the IOBluetoothSDPDataElement * for the given IOBluetoothSDPDataElementRef.
  */
  class func withSDPDataElementRef(sdpDataElementRef: IOBluetoothSDPDataElement!) -> Self!

  /*!
      @method initWithElementValue:
      @abstract Initializes a new IOBluetoothSDPDataElement with the given value.
      @discussion The value must follow the format listed above and must be an instance of NSData, NSString, NSNumber, 
                  NSArray, NSDictionary, IOBluetoothSDPUUID.
      @param element	The data element value of one of the specified types. 
      @result Returns self if successful.  Returns nil if there was an error parsing the element value.
  */
  init!(elementValue element: NSObject!)

  /*!
      @method initWithType:sizeDescriptor:size:value:
      @abstract Initializes a new IOBluetoothSDPDataElement with the given attributes.
      @discussion Warning - be careful using this method.  There is next to no error checking done on the 
                  attributes.  It is entirely possible to construct an invalid data element.  It is recommended
                  that +withElementValue: be used instead of this one.
      @param typeDescriptor The type descriptor for the data element.
      @param sizeDescriptor The size descriptor for the data element (verify it matches the size parameter).
      @param size The size of the data element in bytes (make sure it is a valid size for the given size descriptor).
      @param value The raw value itself.  This must be the base NSString, NSNumber, NSArray or NSData objects.  It
                      may not be NSDictionary.  If a dictionary format is present, use +withElementValue:.
      @result Returns self if successful.  Returns nil if an error is encountered (not likely
                      due to the limited error checking currently done).
  */
  init!(type newType: BluetoothSDPDataElementTypeDescriptor, sizeDescriptor newSizeDescriptor: BluetoothSDPDataElementSizeDescriptor, size newSize: UInt32, value newValue: NSObject!)

  /*!
      @method	getSDPDataElementRef
  	@abstract	Returns an IOBluetoothSDPDataElementRef representation of the target IOBluetoothSDPDataElement object.
  	@result		Returns an IOBluetoothSDPDataElementRef representation of the target IOBluetoothSDPDataElement object.
  */
  func getRef() -> Unmanaged<IOBluetoothSDPDataElement>!

  /*!
      @method getTypeDescriptor
      @abstract Returns the SDP spec defined data element type descriptor for the target data element.
      @result Returns the type descriptor for the target data element.
  */
  func getTypeDescriptor() -> BluetoothSDPDataElementTypeDescriptor

  /*!
      @method getSizeDescriptor
      @abstract Returns the SDP spec defined data element size descriptor for the target data element.
      @result Returns the size descriptor for the target data element.
  */
  func getSizeDescriptor() -> BluetoothSDPDataElementSizeDescriptor

  /*!
      @method getSize
      @abstract Returns the size in bytes of the target data element.
      @discussion The size is valid whether the data element has a fixed or variable size descriptor.
      @result Returns the size in bytes of the target data element.
  */
  func getSize() -> UInt32

  /*!
      @method getNumberValue
      @abstract If the data element is represented by a number, it returns the value as an NSNumber.
      @discussion The data types represented by a number are 1 (unsigned int), 2 (signed int) and 5 (boolean) 
                  except for 128-bit versions of 1 and 2.
      @result Returns an NSNumber representation of the data element if it is a numeric type.
  */
  func getNumberValue() -> NSNumber!

  /*!
      @method getDataValue
      @abstract If the data element is represented by a data object, it returns the value as an NSData.
      @discussion The data types represented by a data object are 128-bit versions of 1 (unsigned int) and 
                  2 (signed int).
      @result Returns an NSData representation of the data element if it is a 128-bit number.
  */
  func getDataValue() -> NSData!

  /*!
      @method getStringValue
      @abstract If the data element is represented by a string object, it returns the value as an NSString.
      @discussion The data types represented by a string object are 4 (text string) and 8 (URL).
      @result Returns an NSString representation of the data element if it is a text or URL type.
  */
  func getStringValue() -> String!

  /*!
      @method getArrayValue
      @abstract If the data element is represented by an array object, it returns the value as an NSArray.
      @discussion The data types represented by an array object are 6 (data element sequence) and 7 (data
                  element alternative).
      @result Returns an NSArray representation of the data element if it is a sequence type.
  */
  func getArrayValue() -> [AnyObject]!

  /*!
      @method getUUIDValue
      @abstract If the data element is a UUID (type 3), it returns the value as an IOBluetoothSDPUUID.
      @result Returns an IOBluetoothSDPUUID representation of the data element if it is a UUID.
  */
  func getUUIDValue() -> IOBluetoothSDPUUID!

  /*!
      @method getValue
      @abstract Returns the object value of the data element.
      @discussion The value returned may be an NSNumber, NSString, NSData, NSArray or IOBluetoothSDPDataElement
                  depending on the type of the data element.
      @result Returns the object value of the target data element.
  */
  func getValue() -> NSObject!

  /*!
      @method containsDataElement:
      @abstract Checks to see if the target data element is the same as the dataElement parameter or if it contains
                  the dataElement parameter (if its a sequence type).
      @discussion If the target data element is not a sequence type, this method simply compares the two data elements.  If
                  it is a sequence type, it will search through the sequence (and sub-sequences) for the dataElement
                  parameter.
      @param dataElement The data element to compare with (and search for). 
      @result Returns TRUE if the target either matches the given data element or if it contains the given data element.
  */
  func contains(dataElement: IOBluetoothSDPDataElement!) -> Bool

  /*!
      @method containsValue:
      @abstract Checks to see if the target data element's value is the same as the value parameter or if it contains
                  the value parameter.
      @discussion This method works just like -containsDataElement: except that it is comparing the value objects directly.
      @param cmpValue The value to compare with (and search for).
      @result Returns TRUE if the target's value either matches the given value or if it contains the given value.
  */
  func containsValue(cmpValue: NSObject!) -> Bool
  init()
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*!
    @class IOBluetoothSDPServiceAttribute
    @abstract IOBluetoothSDPServiceAttribute represents a single SDP service attribute.
    @discussion A service attribute contains two components: an attribute ID and a data element.
*/
class IOBluetoothSDPServiceAttribute : NSObject, NSCoding {

  /*!
      @method withID:attributeElementValue:
      @abstract Creates a new service attribute with the given ID and element value.
      @discussion See +[IOBluetoothSDPDataElement withElementValue:] for a description of the types that 
                  may be passed in as the attributeElementValue.
      @param attributeID The attribute ID of the new service attribute.
      @param attributeElementValue The data element value of the new service attribute
      @result Returns the newly allocated service attribute object.  Returns nil if there was an error parsing the 				element value.  The returned IOBluetoothSDPDataElement object has been autoreleased, so it is not 
              necessary for the caller to release it.  If the object is to be referenced and kept around, retain 
              should be called.
  */
  class func withID(newAttributeID: BluetoothSDPServiceAttributeID, attributeElementValue: NSObject!) -> Self!

  /*!
      @method withID:attributeElement:
      @abstract Creates a new service attribute with the given ID and data element.
      @param attributeID The attribute ID of the new service attribute.
      @param attributeElement The data element of the new service attribute.
      @result Returns the newly allocated service attribute object.  Returns nil if there was an error.  
              The returned IOBluetoothSDPDataElement object has been autoreleased, so it is not 
              necessary for the caller to release it.  If the object is to be referenced and kept around, retain 
              should be called.
  */
  class func withID(newAttributeID: BluetoothSDPServiceAttributeID, attributeElement: IOBluetoothSDPDataElement!) -> Self!

  /*!
      @method initWithID:attributeElementValue:
      @abstract Initializes a new service attribute with the given ID and element value.
      @discussion See +[IOBluetoothSDPDataElement withElementValue:] for a description of the types that 
                  may be passed in as the attributeElementValue.
      @param attributeID The attribute ID of the new service attribute.
      @param attributeElementValue The data element value of the new service attribute
      @result Returns self if successful.  Returns nil if there was an error parsing the element value.
  */
  init!(id newAttributeID: BluetoothSDPServiceAttributeID, attributeElementValue: NSObject!)

  /*!
      @method initWithID:attributeElement:
      @abstract Initializes a new service attribute with the given ID and data element.
      @param attributeID The attribute ID of the new service attribute.
      @param attributeElement The data element of the new service attribute.
      @result Returns self if successful.  Returns nil if there was an error.
  */
  init!(id newAttributeID: BluetoothSDPServiceAttributeID, attributeElement: IOBluetoothSDPDataElement!)

  /*!
      @method getAttributeID
      @abstract Returns the attribute ID for the target service attribute.
      @result Returns the attribute ID for the target service attribute.
  */
  func getID() -> BluetoothSDPServiceAttributeID

  /*!
      @method getDataElement
      @abstract Returns the data element for the target service attribute.
      @result Returns the data element for the target service attribute.
  */
  func getDataElement() -> IOBluetoothSDPDataElement!

  /*!
      @method getIDDataElement
      @abstract Returns the data element representing the attribute ID for the target service attribute.
      @result Returns the data element representing the attribute ID for the target service attribute.
  */
  func getIDDataElement() -> IOBluetoothSDPDataElement!
  init()
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*!
    @class IOBluetoothSDPServiceRecord
    @abstract An instance of this class represents a single SDP service record.
    @discussion As a service record, an instance of this class has an NSDictionary of service attributes.
                It also has a link to the IOBluetoothDevice that the service belongs to.  The service
                dictionary is keyed off of the attribute ID of each attribute represented as an NSNumber.
*/
class IOBluetoothSDPServiceRecord : NSObject, NSCoding {

  /*!
   @method		publishedServiceRecordWithDictionary:
   @abstract      Adds a service to the local SDP server.
   @result		Returns an IOBluetoothSDPServiceRecord * with the attributes specified in the provided dictionary.
  
   @discussion	Each entry in the dictionary representing the service contains the individual attributes.  Each
   attribute in the dict is keyed by a string that must begin with a hex number representing the
   attribute ID.  The key string may contain additional characters if desired as long as they
   follow a space after the ID hex string.  The attribute value must follow the dictionary format
   described by IOBluetoothSDPDataElement.  This dictionary format allows a service dict to be
   created as a plist file and then loaded into the system rather than built up in code.  See the
   example code for an example of how can be done.
   
   If the service record handle, L2CAP PSM or RFCOMM channel ID specified in the dictionary are in
   use, an alternate one will be assigned.
   
   In addition to attributes that represent the service itself, additional attributes may be specified
   that control the local behavior of the service.  To specify these local attributes, an additional
   property titled "LocalAttributes" may be added to the root of the service dict.  The value of this
   property must be a dictionary that contains the individual local attributes.
   
   Currently, only two local attributes are supported: "Persistent" and "TargetApplication".
   
   The "Persistent" local attribute must be either a boolean or number representing whether the service
   should be persistent.  A persistent service will be saved off and restored any time the Bluetooth
   hardware is present.  It will persist through reboots and can only be removed by calling
   IOBluetoothRemoveServiceWithRecordHandle().  This attribute is optional.  By default, if no
   "Persistent" local property is present,	the service will only exist temporarily.  It will
   be removed either when IOBluetoothRemoveServiceWithRecordHandle() is called or when the client
   application exits.
   
   The "TargetApplication" local attribute is used to specify an application to be launched when a
   remote device attempts to connect to the service (by opening either an L2CAP or RFCOMM channel of
   the type specified in the service).  This value must be a string representing the absolute path to
   the target executable (not just the .app wrapper - i.e.
   /System/Library/CoreServices/OBEXAgent.app/Contents/MacOS/OBEXAgent).  This attribute is optional.
   If no "TargetApplication" local attribute is specified, no special action will take place when an
   incoming connection to the service is created.  It is up to the client to be monitoring for the
   connection and to do the right thing when one appears.
   
   The "LocalAttributes" property is optional.  If it is not specified, by default the created service
   is transient and will be removed when the client exits.
   
   Additional local attributes to further control incoming services will be added in the future.
   
   @param		serviceDict	A dictionary containing the attributes for the new service 
  */
  class func publishedServiceRecordWith(serviceDict: [NSObject : AnyObject]!) -> Self!

  /*!	@function	removeServiceRecord
   @abstract	Removes the service from the local SDP server.
   @result		Returns kIOReturnSuccess if successful.
   */
  func remove() -> IOReturn

  /*!
      @method		withServiceDictionary:device:
  	@abstract	Returns an IOBluetoothSDPServiceRecord * with the attributes specified in the provided service dictionary. Provide
  				a pointer to an IOBlueotothDevice if you wish to associate the record to a specific IOBluetoothDevice.
  	@result		Returns an IOBluetoothSDPServiceRecord * with the attributes specified in the provided dictionary.
  */
  class func withServiceDictionary(serviceDict: [NSObject : AnyObject]!, device: IOBluetoothDevice!) -> Self!

  /*!
      @method		initWithServiceDictionary
  	@abstract	Returns an initialized IOBluetoothSDPServiceRecord * with the attributes specified in the provided service dictionary. Provide
  				a pointer to an IOBlueotothDevice if you wish to associate the record to a specific IOBluetoothDevice.
  	@result		Returns an initialized IOBluetoothSDPServiceRecord * with the attributes specified in the provided dictionary.
  */
  init!(serviceDictionary serviceDict: [NSObject : AnyObject]!, device: IOBluetoothDevice!)

  /*!
      @method		withSDPServiceRecordRef:
  	@abstract	Method call to convert an IOBluetoothSDPServiceRecordRef into an IOBluetoothSDPServiceRecord *.
  	@param		sdpServiceRecordRef IOBluetoothSDPServiceRecordRef for which an IOBluetoothSDPServiceRecord * is desired.
  	@result		Returns the IOBluetoothSDPServiceRecord * for the given IOBluetoothSDPServiceRecordRef.
  */
  class func withSDPServiceRecordRef(sdpServiceRecordRef: IOBluetoothSDPServiceRecord!) -> Self!

  /*!
      @method	getSDPServiceRecordRef
  	@abstract	Returns an IOBluetoothSDPServiceRecordRef representation of the target IOBluetoothSDPServiceRecord object.
  	@result		Returns an IOBluetoothSDPServiceRecordRef representation of the target IOBluetoothSDPServiceRecord object.
  */
  func getRef() -> Unmanaged<IOBluetoothSDPServiceRecord>!

  /*!
      @method		device
      @abstract	Returns the IOBluetoothDevice that the target service belongs to.
      @discussion If the service is a local service (i.e. one the current host is vending out), then nil is returned.
      @result		Returns the IOBluetoothDevice that the target service belongs to.  If the service is one the local host
  				is vending, then nil is returned.
  */
  var device: IOBluetoothDevice! { get }

  /*!
      @method		attributes
      @abstract	Returns an NSDictionary containing the attributes for the service.
      @discussion	The attribute dictionary is keyed off of the attribute id represented as an NSNumber.  The values
                  in the NSDictionary are IOBluetoothSDPDataElement objects representing the data element for the
                  given attribute.
      @result Returns an NSDictionary containing the attributes for the target service.
  */
  var attributes: [NSObject : AnyObject]! { get }

  /*!
      @method		getAttributeDataElement:
      @abstract	Returns the data element for the given attribute ID in the target service.
      @param		attributeID The attribute ID of the desired attribute.	 
      @result		Returns the data element for the given attribute ID in the target service.  If the service does not
  				contain an attribute with the given ID, then nil is returned.
  */
  func getAttributeDataElement(attributeID: BluetoothSDPServiceAttributeID) -> IOBluetoothSDPDataElement!

  /*!
      @method		getServiceName
      @abstract	Returns the name of the service.
      @discussion This is currently implemented to simply return the attribute with an id of 0x0100.  In
                  the future, it will be extended to allow name localization based on the user's chosen
                  language or other languages.
      @result		Returns the name of the target service.
  */
  func getServiceName() -> String!

  /*!
      @method		getRFCOMMChannelID:
      @abstract	Allows the discovery of the RFCOMM channel ID assigned to the service.
      @discussion This method will search through the ProtoclDescriptorList attribute to find an entry
                  with the RFCOMM UUID (UUID16: 0x0003).  If one is found, it gets the second element of
                  the data element sequence and sets the rfcommChannelID pointer to it.  The channel ID
                  only gets set when kIOReturnSuccess is returned.
      @param		rfcommChannelID A pointer to the location that will get the found RFCOMM channel ID.
      @result		Returns kIOReturnSuccess if the channel ID is found.
  */
  func getRFCOMMChannelID(rfcommChannelID: UnsafeMutablePointer<BluetoothRFCOMMChannelID>) -> IOReturn

  /*!
      @method		getL2CAPPSM:
      @abstract	Allows the discovery of the L2CAP PSM assigned to the service.
      @discussion This method will search through the ProtoclDescriptorList attribute to find an entry
                  with the L2CAP UUID (UUID16: 0x0100).  If one is found, it gets the second element of
                  the data element sequence and sets the outPSM pointer to it.  The PSM value
                  only gets set when kIOReturnSuccess is returned.
      @param		outPSM A pointer to the location that will get the found L2CAP PSM.
      @result		Returns kIOReturnSuccess if the PSM is found.
  */
  func getL2CAPPSM(outPSM: UnsafeMutablePointer<BluetoothL2CAPPSM>) -> IOReturn

  /*!
      @method		getServiceRecordHandle:
      @abstract	Allows the discovery of the service record handle assigned to the service.
      @discussion This method will search through the attributes to find the one representing the 
                  service record handle.  If one is found the outServiceRecordHandle param is set
                  with the value.  The outServiceRecordHandle value only gets set when kIOReturnSuccess 
                  is returned.
      @param		outServiceRecordHandle A pointer to the location that will get the found service record handle.
      @result		Returns kIOReturnSuccess if the service record handle is found.
  */
  func getHandle(outServiceRecordHandle: UnsafeMutablePointer<BluetoothSDPServiceRecordHandle>) -> IOReturn

  /*!
   @method		matchesUUID16:
   @abstract	Returns TRUE the UUID16 is found in the target service.
   
   			NOTE: This method is only available in Mac OS X 10.7 or later.
   @param uuid16 A BluetoothSDPUUID16 to search for in the target service.	 
   @result Returns TRUE if the UUID16 is present in the service.
   */
  func matchesUUID16(uuid16: BluetoothSDPUUID16) -> Bool

  /*!
      @method		matchesUUIDArray:
      @abstract	Returns TRUE if ALL of the UUIDs in the given array is found in the target service.
      @discussion The given array should contain IOBluetoothSDPUUID objects.  It only returns TRUE if all of
                  the UUIDs are found.  This method is like hasServiceFromArray: except that it requires that
                  all UUIDs match instead of any of them matching.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
      @param array An NSArray of IOBluetoothSDPUUID objects to search for in the target service.	 
      @result Returns TRUE if all of the given UUIDs are present in the service.
  */
  func matchesUUIDArray(uuidArray: [AnyObject]!) -> Bool

  /*!
      @method		matchesSearchArray:
      @abstract	Returns TRUE any of the UUID arrays in the search array match the target service.
      @discussion The given array should contain NSArray objects.  Each sub-NSArray should contain
                  IOBluetoothSDPUUID objects.  In turn, each sub-NSArray gets passed to -matchesUUIDArray:
                  If any of those returns TRUE, then the search stops and TRUE is returned.
                  Essentially the master NSArray contains the OR operations and each sub-array contains
                  the AND operations.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
      @param		array An NSArray of NSArrays of IOBluetoothSDPUUID objects.	 
      @result		Returns TRUE if any of the UUID arrays match.
  */
  func matchesSearch(searchArray: [AnyObject]!) -> Bool

  /*!
      @method		hasServiceFromArray:
      @abstract	Returns TRUE if any one of the UUIDs in the given array is found in the target service.
      @discussion The given array should contain IOBluetoothSDPUUID objects.  It is currently implemented
                  such that it returns TRUE if any of the UUIDs are found.  However in the future, it is likely
                  that this will change to more closely match the functionality in the SDP spec so that it only
                  returns TRUE if all of the given UUIDs are present.  That way, both AND and OR comparisons
                  can be implemented.  Please make a note of this potential change.
      @param		array An NSArray of IOBluetoothSDPUUID objects to search for in the target service.	 
      @result		Returns TRUE if any of the given UUIDs are present in the service.
  */
  func hasServiceFrom(array: [AnyObject]!) -> Bool

  /*!
   @method		sortedAttributes:
   @abstract		Returns a sorted array of SDP attributes
   @discussion	This method will walk all the elements of the service record and return an array of 
  				IOBluetoothSDPServiceAttribute objects sorted by attributeID
   @result		Returns a sorted array of SDP attributes
   */
  var sortedAttributes: [AnyObject]! { get }
  init()
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*!
    @class IOBluetoothSDPUUID
    @abstract An NSData subclass that represents a UUID as defined in the Bluetooth SDP spec.
    @discussion The IOBluetoothSDPUUID class can represent a UUID of any valid size (16, 32 or 128 bits).
            It provides the ability to compare two UUIDs no matter what their size as well as the ability
            to promote the size of a UUID to a larger one.
*/
class IOBluetoothSDPUUID : NSData {

  /*!
      @method uuidWithBytes:length:
      @abstract Creates a new IOBluetoothSDPUUID object with the given bytes of the given length.
      @discussion If the length is invalid for a UUID, nil is returned.
      @param bytes An array of bytes representing the UUID.
      @param length The length of the array of bytes.
      @result Returns the new IOBluetoothSDPUUID object or nil on failure.
  */
  class func uuidWithBytes(bytes: UnsafePointer<Void>, length: UInt32) -> Self!

  /*!
      @method uuidWithData:
      @abstract Creates a new IOBluetoothSDPUUID object from the given NSData.
      @discussion If the length of the NSData is invalid for a UUID, nil is returned.
      @param data The NSData containing the UUID bytes.
      @result Returns the new IOBluetoothSDPUUID object or nil on failure.
  */
  class func uuidWith(data: NSData!) -> Self!

  /*!
      @method uuid16:
      @abstract Creates a new 16-bit IOBluetoothSDPUUID with the given UUID16
      @param uuid16 A scalar representing a 16-bit UUID
      @result Returns the new IOBluetoothSDPUUID object.
  */
  class func uuid16(uuid16: BluetoothSDPUUID16) -> Self!

  /*!
      @method uuid32:
      @abstract Creates a new 32-bit IOBluetoothSDPUUID with the given UUID32
      @param uuid32 A scalar representing a 32-bit UUID
      @result Returns the new IOBluetoothSDPUUID object.
  */
  class func uuid32(uuid32: BluetoothSDPUUID32) -> Self!

  /*!
      @method initWithUUID16:
      @abstract Initializes a new 16-bit IOBluetoothSDPUUID with the given UUID16
      @param uuid16 A scalar representing a 16-bit UUID
      @result Returns self.
  */
  init!(uuid16: BluetoothSDPUUID16)

  /*!
      @method initWithUUID32:
      @abstract Creates a new 32-bit IOBluetoothSDPUUID with the given UUID32
      @param uuid32 A scalar representing a 32-bit UUID
      @result Returns self.
  */
  init!(uuid32: BluetoothSDPUUID32)

  /*!
      @method getUUIDWithLength:
      @abstract Returns an IOBluetoothSDPUUID object matching the target UUID, but with the given number of bytes.
      @discussion If the target object is the same length as newLength, it returns self.  If newLength is greater
                  it creates a new IOBluetoothSDPUUID object with the correct value for the given length.  If
                  newLength is smaller, it will attempt to create a new IOBluetoothSDPUUID that is smaller if
                  the data matches the Bluetooth UUID base.  This downconversion is currently unimplemented.
      @param newLength The desired length for the UUID. 
      @result Returns an IOBluetoothSDPUUID object with the same data as the target but with the given length if it
              is possible to do so.  Otherwise, nil is returned.
  */
  func getWithLength(newLength: UInt32) -> Self!

  /*!
      @method isEqualToUUID:
      @abstract Compares the target IOBluetoothSDPUUID object with the given otherUUID object.
      @discussion This method will compare the two UUID values independent of their length.
      @param otherUUID The UUID object to be compared with the target.
      @result Returns true if the UUID values of each object are equal.  This includes the case where the sizes are different
              but the data itself is the same when the Bluetooth UUID base is applied.
  */
  func isEqualTo(otherUUID: IOBluetoothSDPUUID!) -> Bool
  func classForCoder() -> AnyClass!
  func classForArchiver() -> AnyClass!
  func classForPortCoder() -> AnyClass!
  init()
  init?(coder aDecoder: NSCoder)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
  @available(OSX 10.9, *)
  init?(base64EncodedString base64String: String, options: NSDataBase64DecodingOptions = [])
  @available(OSX 10.9, *)
  init?(base64EncodedData base64Data: NSData, options: NSDataBase64DecodingOptions = [])
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  @available(OSX 10.9, *)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)? = nil)
  init(contentsOfFile path: String, options readOptionsMask: NSDataReadingOptions = []) throws
  init(contentsOf url: NSURL, options readOptionsMask: NSDataReadingOptions = []) throws
  init?(contentsOfFile path: String)
  init?(contentsOf url: NSURL)
  init(data: NSData)
}

/*!
    @class IOBluetoothUserNotification
    @abstract Represents a registered notification.
    @discussion When registering for various notifications in the system, an IOBluetoothUserNotification
				object is returned.  To unregister from the notification, call -unregister on the
				IOBluetoothUserNotification object.  Once -unregister is called, the object will no
				longer be valid.
*/
class IOBluetoothUserNotification : NSObject {

  /*!
      @method unregister
      @abstract Called to unregister the target notification.
      @discussion Once this method has completed, the target IOBluetoothUserNotification will
  				no longer be valid.
  */
  func unregister()
  init()
}
extension NSMutableDictionary {
  convenience init!(obexHeadersData inHeadersData: UnsafePointer<Void>, headersDataSize inDataSize: Int)
  convenience init!(obexHeadersData inHeadersData: NSData!)
  func getHeaderBytes() -> NSMutableData!
  func addTargetHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addHTTPHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addBodyHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32, endOfBody isEndOfBody: Bool) -> OBEXError
  func addWhoHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addConnectionIDHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addApplicationParameterHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addByteSequenceHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addObjectClassHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addAuthorizationChallengeHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addAuthorizationResponseHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addTimeISOHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addTypeHeader(type: String!) -> OBEXError
  func addLengthHeader(length: UInt32) -> OBEXError
  func addTime4ByteHeader(time4Byte: UInt32) -> OBEXError
  func addCountHeader(inCount: UInt32) -> OBEXError
  func addDescriptionHeader(inDescriptionString: String!) -> OBEXError
  func addNameHeader(inNameString: String!) -> OBEXError
  func addUserDefinedHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addImageHandleHeader(type: String!) -> OBEXError
  func addImageDescriptorHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
}

/*!
    @class			OBEXFileTransferServices
    @abstract		Implements advanced OBEX operations in addition to simple PUT and GET.
    @discussion		All operations are asynchronous and will callback over a respective delegate 
					method if the initial return value is successful.  The initial return value 
					usually concerns the state of this object where as the delegate return value
					reflects the response of the remote device.
*/
class OBEXFileTransferServices : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject!

  /*!
  	@method			withOBEXSession:
      @abstract		Create a new OBEXFileTransferServices object
      @discussion		This object must be constructed with a valid IOBluetoothOBEXSession. The given 
  					IOBluetoothOBEXSession does not need to be connected to the remote server.  
  					This module can be manually connected through the connect() method. 
  	@param			inOBEXSession A valid IOBluetoothOBEXSession
  	@result			A newly created OBEXFileTransferServices object on success, nil on failure
  */
  class func withOBEXSession(inOBEXSession: IOBluetoothOBEXSession!) -> Self!

  /*!
  	@method			initWithOBEXSession:
  	@abstract		Create a new OBEXFileTransferServices object
  	@discussion		This object must be constructed with a valid IOBluetoothOBEXSession. The given 
  					IOBluetoothOBEXSession does not need to be connected to the remote server.  
  					OBEXFileTransferServices can be manually connected through the provided connection 
  					methods.
  	@param			inOBEXSession A valid IOBluetoothOBEXSession
  	@result			A newly created OBEXFileTransferServices object on success, nil on failure
  */
  init!(obexSession inOBEXSession: IOBluetoothOBEXSession!)

  /*!
  	@method     currentPath
  	@abstract   Get the remote current directory path during an FTP session
  	@discussion This path is changed with each path-specific command called on OBEXFileTransferServices.
  	@result		The current path being browsed over FTP
  */
  func currentPath() -> String!

  /*!
  	@method     isBusy
  	@abstract   Get the action state of the module
  	@discussion OBEXFileTransferServices will be considered "busy" when an operation in taking place or
  				has not completed.  Calling abort: on this module will not automatically reset its busy
  				state.  The user will have to wait for the operation to complete or for the current
  				operation to timeout.
  	@result		Success or failure code.
  */
  func isBusy() -> Bool

  /*!
  	@method     isConnected
  	@abstract   Get the connected state of this module.
  	@discussion Asks the OBEXSession that was passed to it on creation if it has an open OBEX connection
  	@result		Success or failure code.
  */
  func isConnected() -> Bool

  /*!
  	@method     connectToFTPService
  	@abstract   Connect to a remote device for FTP operations
  	@discussion If the OBEXSession given to OBEXFileTransferServices on creation is not connected it
  				can be manually connected through this method. 
  	@result		kOBEXSuccess, kOBEXSessionBusyError, or kOBEXSessionAlreadyConnectedError, kOBEXNoResourcesError
  				initially.  Further results returned through the fileTransferServicesConnectionComplete:
  				delegate method if initially successful.
  */
  func connectToFTPService() -> OBEXError

  /*!
      @method     connectToObjectPushService
      @abstract   Connect to a remote device for ObjectPush operations.
  				Most of the FTP functionality of this object will be disabled.
      @discussion If the OBEXSession given to OBEXFileTransferServices on creation is not connected it
  				can be manually connected through this method. 
  	@result		kOBEXSuccess, kOBEXSessionBusyError, or kOBEXSessionAlreadyConnectedError, kOBEXNoResourcesError
  				initially.  Further results returned through the fileTransferServicesConnectionComplete: 
  				delegate method if initially successful.
  */
  func connectToObjectPushService() -> OBEXError

  /*!
      @method     disconnect
      @abstract   Disconnect from the remote device
      @discussion The user can manually disconnect the OBEXSession from the remote device if they want
  				to.  OBEXFileTransferServices will disconnect the OBEXSession at release only if it was responsible 
  				for opening the connection via a connect method.
  	@result		kOBEXSuccess, kOBEXSessionNotConnectedError, or kOBEXSessionBusyError initially. Further results 
  				returned through the fileTransferServicesDisconnectionComplete: delegate method if initially successful.
  */
  func disconnect() -> OBEXError

  /*!
      @method     changeCurrentFolderRoot
      @abstract   Asynchronously change to the remote root directory
      @discussion Equivalent to 'cd ~/'
  	@result		kOBEXSuccess or kOBEXSessionBusyError initially.  Further results
  				returned through the fileTransferServicesPathChangeComplete: delegate method if initially successful.
  */
  func changeCurrentFolderToRoot() -> OBEXError

  /*!
      @method     changeCurrentFolderBackward
      @abstract   Change to the directory above the current level if not at the root
      @discussion Equivalent to 'cd ..' only if remote path is not already at root.  
  	@result		kOBEXSuccess or kOBEXSessionBusyError initially. Further results
  				returned through the fileTransferServicesPathChangeComplete: delegate method if initially successful.
  */
  func changeCurrentFolderBackward() -> OBEXError

  /*!
      @method     changeCurrentFolderForwardToPath:
      @abstract   Change the remote path
      @discussion Equivalent to 'cd dirName'.  
  	@param		inDirName The name of the remote folder to be set as current
  	@result		kOBEXSuccess, kOBEXSessionBusyError, or kOBEXBadArgumentError initially. Further results
  				returned through the fileTransferServicesPathChangeComplete: delegate method if initially successful.
  */
  func changeCurrentFolderForwardToPath(inDirName: String!) -> OBEXError

  /*!
      @method     createFolder:
      @abstract   Create a folder on the remote target
      @discussion Equivalent to 'mkdir dirName'.  
  	@param		inDirName The name of the folder to be created
  	@result		kOBEXSuccess, kOBEXSessionBusyError, or kOBEXBadArgumentError initially. 
  				Further results returned through the fileTransferServicesCreateFolderComplete delegate method
  				if initially successful.
  */
  func createFolder(inDirName: String!) -> OBEXError

  /*!
      @method     removeItem:
      @abstract   Remove a remote item.
      @discussion Not supported for use on Apple computer targets  
  	@param		inItemName The name of the remote item to be removed
  	@result		kOBEXSuccess, kOBEXSessionBusyError, or kOBEXBadArgumentError initially.  
  				Further results returned through the fileTransferServicesRemoveItemComplete: delegate method 
  				if initially successful.
  */
  func removeItem(inItemName: String!) -> OBEXError

  /*!
      @method     retrieveFolderListing
      @abstract   Get a remote directory listing
      @discussion Equivalent to 'ls'.  
  	@result		kOBEXSuccess or kOBEXSessionBusyError initially.  Further results returned through 
  				the fileTransferServicesRetrieveFolderListingComplete: delegate method if initially successful.
  */
  func retrieveFolderListing() -> OBEXError

  /*!
      @method     sendFile:
      @abstract   Put a local file to the remote target
      @discussion Equivalent to 'mv inLocalFilePath remoteCurrentPath'.
  	@param		inLocalPathAndName The name and path of the file to be sent an instance of OBEXFilePut.  
  	@result		kOBEXSuccess, kOBEXSessionBusyError, or kOBEXBadArgumentError initially. Further 
  				results returned through the fileTransferServicesSendComplete: and 
  				fileTransferServicesSendProgress: delegate methods if initially successful.
  */
  func sendFile(inLocalPathAndName: String!) -> OBEXError

  /*!
      @method     copyRemoteFile:toLocalPath:
      @abstract   Copy a remote file to a local path
      @discussion Equivalent to 'cp remotePath/remoteFileName localPathAndName'.
  	@param		inRemoteFileName The name of the remote file to get
  	@param		inLocalPathAndName The path and name of where the received file will go
  	@result		kOBEXSuccess, kOBEXSessionBusyError, or kOBEXBadArgumentError. initially.  Further 
  				results returned through the fileTransferServicesGetComplete: and 
  				fileTransferServicesGetProgress: delegate methods if initially successful.
  */
  func copyRemoteFile(inRemoteFileName: String!, toLocalPath inLocalPathAndName: String!) -> OBEXError

  /*!
  	@method     sendData:type:name:
  	@abstract   Send data to a remote target
  	@discussion Use this method when you have data to send but no file to read from.
  	@param		inData The data to be sent
  	@param		inType The type of the data to be sent that will be used in the OBEX type header,
  				usually a mime-type.  For example, use "text/x-vCard" when sending vCards. This 
  				argument is optional. 
  	@param		inName The name of the file that the data can be referenced as.
  	@result		kOBEXSuccess, kOBEXSessionBusyError, or kOBEXBadArgumentError initially. Further 
  				results returned through the fileTransferServicesSendComplete: and 
  				fileTransferServicesSendProgress: delegate methods if initially successful.
  */
  func send(inData: NSData!, type inType: String!, name inName: String!) -> OBEXError

  /*!
  	@method     getDefaultVCard:
  	@abstract   Get the remote default VCard, if it is supported
  	@discussion Some devices such as cellphones and computers support default VCards
  	@param		inLocalPathAndName The path and name of where the received file will go
  	@result		kOBEXSuccess, kOBEXSessionBusyError, or kOBEXBadArgumentError initially.  Further 
  				results returned through the fileTransferServicesGetComplete: and 
  				fileTransferServicesGetProgress: delegate methods if initially successful.
  */
  func getDefaultVCard(inLocalPathAndName: String!) -> OBEXError

  /*!
      @method     abort
      @abstract   Abort the current operation
      @discussion Attempts send an abort request to the remote device.  Returns the OBEXFileTransferServices
  				object to an idle state though the state of the remote device is not guaranteed.
  	@result		kOBEXSuccess, or kOBEXGeneralError if no command is in progress. ABORT 
  				commands can only be sent on our turn, meaning we may have to timeout if the
  				target side never responds to the command in progress.  In that case this object
  				will call back with a status of kOBEXTimeoutError and an error. Further results
  				returned through the fileTransferServicesAbortComplete: delegate method if initially successful.
  */
  func abort() -> OBEXError
  init()
}
extension NSObject {

  /*!
  	@method			fileTransferServicesConnectionComplete:error:
  	@abstract		The delegate method that corresponds to the connect method
  	@discussion		inError will either be kOBEXSuccess or it will be an error returned by the OBEX Session
  */
  class func fileTransferServicesConnectionComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)

  /*!
  	@method			fileTransferServicesConnectionComplete:error:
  	@abstract		The delegate method that corresponds to the connect method
  	@discussion		inError will either be kOBEXSuccess or it will be an error returned by the OBEX Session
  */
  func fileTransferServicesConnectionComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)

  /*!
  	@method			fileTransferServicesDisconnectionComplete:error:
  	@abstract		The delegate method that corresponds to the disconnect method
  	@discussion		inError will be kOBEXSuccess on success.  This method will also be called if the connection
  					is lost to the server.  Possible error codes include kOBEXSessionTransportDiedError, 
  					kOBEXSessionNoTransportError, and kOBEXSessionNotConnectedError.
  */
  class func fileTransferServicesDisconnectionComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)

  /*!
  	@method			fileTransferServicesDisconnectionComplete:error:
  	@abstract		The delegate method that corresponds to the disconnect method
  	@discussion		inError will be kOBEXSuccess on success.  This method will also be called if the connection
  					is lost to the server.  Possible error codes include kOBEXSessionTransportDiedError, 
  					kOBEXSessionNoTransportError, and kOBEXSessionNotConnectedError.
  */
  func fileTransferServicesDisconnectionComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)

  /*!
  	@method			fileTransferServicesAbortComplete:error:
  	@abstract		The delegate method that corresponds to the abort method
  	@discussion		Possible inError values are kOBEXSuccess and kOBEXTimeoutError
  */
  class func fileTransferServicesAbortComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)

  /*!
  	@method			fileTransferServicesAbortComplete:error:
  	@abstract		The delegate method that corresponds to the abort method
  	@discussion		Possible inError values are kOBEXSuccess and kOBEXTimeoutError
  */
  func fileTransferServicesAbortComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)

  /*!
  	@method			fileTransferServicesRemoveItemComplete:error:removedItem:
  	@abstract		The delegate method that corresponds to the removeItemNamed: method.
  	@discussion		
  	@param			inItemName The name of the remote item that was removed
  */
  class func fileTransferServicesRemoveItemComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError, removedItem inItemName: String!)

  /*!
  	@method			fileTransferServicesRemoveItemComplete:error:removedItem:
  	@abstract		The delegate method that corresponds to the removeItemNamed: method.
  	@discussion		
  	@param			inItemName The name of the remote item that was removed
  */
  func fileTransferServicesRemoveItemComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError, removedItem inItemName: String!)

  /*!
  	@method			fileTransferServicesCreateFolderComplete:error:folderName:
  	@abstract		The delegate method that corresponds to the createFolderNamed: method.
  	@discussion		
  	@param			inFolderName The name of the newly created folder
  */
  class func fileTransferServicesCreateFolderComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError, folder inFolderName: String!)

  /*!
  	@method			fileTransferServicesCreateFolderComplete:error:folderName:
  	@abstract		The delegate method that corresponds to the createFolderNamed: method.
  	@discussion		
  	@param			inFolderName The name of the newly created folder
  */
  func fileTransferServicesCreateFolderComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError, folder inFolderName: String!)

  /*!
  	@method			fileTransferServicesPathChangeComplete:error:finalPath:
  	@abstract		The delegate method that corresponds to the changeCurrentFolderToRoot:,
  					changeCurrentFolderBackward:, and changeCurrentFolderForward: methods
  	@discussion	
  	@param			inPath The current remote path
  */
  class func fileTransferServicesPathChangeComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError, finalPath inPath: String!)

  /*!
  	@method			fileTransferServicesPathChangeComplete:error:finalPath:
  	@abstract		The delegate method that corresponds to the changeCurrentFolderToRoot:,
  					changeCurrentFolderBackward:, and changeCurrentFolderForward: methods
  	@discussion	
  	@param			inPath The current remote path
  */
  func fileTransferServicesPathChangeComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError, finalPath inPath: String!)

  /*!
  	@method			fileTransferServicesRetrieveFolderListingComplete:error:listing:
  	@abstract		The delegate method that corresponds to the retrieveFolderListing method
  	@discussion		
  	@param			inListing An array of NSDictionary's that detail each file at the current path.  The keys
  					to this dictionary are defined in the OBEXFileTransferServicesDelegate category.
  */
  class func fileTransferServicesRetrieveFolderListingComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError, listing inListing: [AnyObject]!)

  /*!
  	@method			fileTransferServicesRetrieveFolderListingComplete:error:listing:
  	@abstract		The delegate method that corresponds to the retrieveFolderListing method
  	@discussion		
  	@param			inListing An array of NSDictionary's that detail each file at the current path.  The keys
  					to this dictionary are defined in the OBEXFileTransferServicesDelegate category.
  */
  func fileTransferServicesRetrieveFolderListingComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError, listing inListing: [AnyObject]!)

  /*!
  	 @method		fileTransferServicesFilePreparationComplete:error:
  	 @abstract		The delegate method for receiving information on the preparation of each file to send
  	 @discussion	This method will be called before the transfer operation.
  */
  class func fileTransferServicesFilePreparationComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)

  /*!
  	 @method		fileTransferServicesFilePreparationComplete:error:
  	 @abstract		The delegate method for receiving information on the preparation of each file to send
  	 @discussion	This method will be called before the transfer operation.
  */
  func fileTransferServicesFilePreparationComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)

  /*!
  	@method			fileTransferServicesSendFileProgress:transferProgress:
  	@abstract		The delegate method for receiving information on the sendFile: transfer
  	@discussion		This method will be called during the transfer operation.
  	@param			inProgressDescription A dictionary containing information on the state of the transfer. The keys
  					 to this dictionary are defined in the OBEXFileTransferServicesDelegate category.
  */
  class func fileTransferServicesSendFileProgress(inServices: OBEXFileTransferServices!, transferProgress inProgressDescription: [NSObject : AnyObject]!)

  /*!
  	@method			fileTransferServicesSendFileProgress:transferProgress:
  	@abstract		The delegate method for receiving information on the sendFile: transfer
  	@discussion		This method will be called during the transfer operation.
  	@param			inProgressDescription A dictionary containing information on the state of the transfer. The keys
  					 to this dictionary are defined in the OBEXFileTransferServicesDelegate category.
  */
  func fileTransferServicesSendFileProgress(inServices: OBEXFileTransferServices!, transferProgress inProgressDescription: [NSObject : AnyObject]!)

  /*!
  	@method			fileTransferServicesSendFileComplete:error:
  	@abstract		The delegate method that corresponds to the sendFile: method.
  	@discussion		This method will be called when the transfer operation has finished.
  */
  class func fileTransferServicesSendFileComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)

  /*!
  	@method			fileTransferServicesSendFileComplete:error:
  	@abstract		The delegate method that corresponds to the sendFile: method.
  	@discussion		This method will be called when the transfer operation has finished.
  */
  func fileTransferServicesSendFileComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)

  /*!
  	@method			fileTransferServicesCopyRemoteFileProgress:transferProgress:
  	@abstract		The delegate method for receiving information on the GET transfer
  	@discussion		This method will be called during the transfer operation
  	@param			inProgressDescription A dictionary containing information on the state of the transfer. The keys
  					to this dictionary are defined in the OBEXFileTransferServicesDelegate category.
  */
  class func fileTransferServicesCopyRemoteFileProgress(inServices: OBEXFileTransferServices!, transferProgress inProgressDescription: [NSObject : AnyObject]!)

  /*!
  	@method			fileTransferServicesCopyRemoteFileProgress:transferProgress:
  	@abstract		The delegate method for receiving information on the GET transfer
  	@discussion		This method will be called during the transfer operation
  	@param			inProgressDescription A dictionary containing information on the state of the transfer. The keys
  					to this dictionary are defined in the OBEXFileTransferServicesDelegate category.
  */
  func fileTransferServicesCopyRemoteFileProgress(inServices: OBEXFileTransferServices!, transferProgress inProgressDescription: [NSObject : AnyObject]!)

  /*!
  	@method			fileTransferServicesCopyRemoteFileComplete:error:
  	@abstract		The delegate method that corresponds to the getFileNamed:toLocalPathAndName: method
  	@discussion		This method will be called when the transfer operation has finished
  */
  class func fileTransferServicesCopyRemoteFileComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)

  /*!
  	@method			fileTransferServicesCopyRemoteFileComplete:error:
  	@abstract		The delegate method that corresponds to the getFileNamed:toLocalPathAndName: method
  	@discussion		This method will be called when the transfer operation has finished
  */
  func fileTransferServicesCopyRemoteFileComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)
}

/*!
 @const			kFTSProgressBytesTransferredKey
 @abstract		NSNumber integer value. This key is used with the NSDictionary returned from the fileTransferServicesPutProgress:
				and fileTransferServicesGetProgress: delegate methods
 */
var kFTSProgressBytesTransferredKey: Unmanaged<CFString>!

/*!
 @const			kFTSProgressBytesTotalKey
 @abstract		NSNumber integer value. This key is used with the NSDictionary returned from the fileTransferServicesPutProgress:
				and fileTransferServicesGetProgress: delegate methods
 */
var kFTSProgressBytesTotalKey: Unmanaged<CFString>!

/*!
 @const			kFTSProgressPercentageKey
 @abstract		NSNumber float value. This key is used with the NSDictionary returned from the fileTransferServicesPutProgress:
				and fileTransferServicesGetProgress: delegate methods
 */
var kFTSProgressPercentageKey: Unmanaged<CFString>!
var kFTSProgressPrecentageKey: Unmanaged<CFString>!

/*!
 @const			kFTSProgressEstimatedTimeKey
 @abstract		NSNumber double value. This key is used with the NSDictionary returned from the fileTransferServicesPutProgress:
				and fileTransferServicesGetProgress: delegate methods
 */
var kFTSProgressEstimatedTimeKey: Unmanaged<CFString>!

/*!
 @const			kFTSProgressTimeElapsedKey
 @abstract		NSNumber int value. This key is used with the NSDictionary returned from the fileTransferServicesPutProgress:
				and fileTransferServicesGetProgress: delegate methods
 */
var kFTSProgressTimeElapsedKey: Unmanaged<CFString>!

/*!
 @const			kFTSProgressTransferRateKey
 @abstract		NSNumber float value. This key is used with the NSDictionary returned from the fileTransferServicesPutProgress:
				and fileTransferServicesGetProgress: delegate methods
 */
var kFTSProgressTransferRateKey: Unmanaged<CFString>!

/*!
	@const			kFTSListingNameKey
	@abstract		NSString value.  This key is used with the array of NSDictionary's returned through the delegate method
					fileTransferServicesGetListingComplete: after calling getFolderListing.  
 */
var kFTSListingNameKey: Unmanaged<CFString>!

/*!
	@const			kFTSListingTypeKey
	@abstract		FTSFileType value.  This key is used with the array of NSDictionary's returned through the delegate method
					fileTransferServicesGetListingComplete: after calling getFolderListing.  
 */
var kFTSListingTypeKey: Unmanaged<CFString>!

/*!
	@const			kFTSListingSizeKey
	@abstract		Int value.  This key is used with the array of NSDictionary's returned through the delegate method
					fileTransferServicesGetListingComplete: after calling getFolderListing.  
 */
var kFTSListingSizeKey: Unmanaged<CFString>!

/*!
 @enum			FTSFileType
 @discussion	The type values associated with the kFTSListingTypeKey dictionary value
 @constant		kFTSFileTypeFolder Folder
 @constant		kFTSFileTypeFile File
 */
struct FTSFileType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kFTSFileTypeFolder: FTSFileType { get }
var kFTSFileTypeFile: FTSFileType { get }
typealias PrivOBEXSessionDataRef = COpaquePointer
class OBEXSession : NSObject {

  /*!	@method		OBEXConnect
  	@abstract	Initiate an OBEX connection to a device. Causes underlying transport (Bluetooth, et al) to attempt to connect
  				to a remote device. After success, an OBEX connect packet is sent to establish the OBEX Connection.
  	@param		inFlags					OBEX connect flags. See OBEX.h for possibilities.
  	@param		inMaxPacketLength		Maximum packet size you want to support. May be negotiated down, depending on
  										target device.
  	@param		inOptionalHeaders		Can be NULL. Ptr to some data you want to send as your optional headers. Use the
  										provided header contruction kit in OBEX.h and OBEXHeadersToBytes() for convenience.
  	@param		inOptionalHeadersLength	Length of data in ptr passed in above.
  	@param		inSelector				A VALID selector to be called when something interesting happens due to this call.
  										Selector in your target object MUST have the following signature, or it
  										will not be called properly (look for error messages in Console.app):
  
  										- (void)OBEXConnectHandler:(const OBEXSessionEvent*)inSessionEvent;
  
  	@param		inTarget				A VALID target object for the selector.
  	@param		inUserRefCon			Whatever you want to pass here. It will be passed back to you in the refCon portion of the
  										OBEXSessionEvent struct. nil is, of course, OK here.
  	@result		An error code value on failure (see OBEX.h and IOReturn.h for possible return values). 0 (kOBEXSuccess) if successful.
  	@discussion A NULL selector or target will result in an error. After return, the data passed in will have been sent over the
  				transport. You will receive a response to your command on your selector. If you have already established an OBEX
  				connection and you call this again you will get an 'kOBEXSessionAlreadyConnectedError' as a result.
  */
  func obexConnect(inFlags: OBEXFlags, maxPacketLength inMaxPacketLength: OBEXMaxPacketLength, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError

  /*!	@method		OBEXDisconnect
  	@abstract	Send an OBEX Disconnect command to the session's target. THIS DOES NOT necessarily close the underlying transport
  				connection. Deleting the session will ensure that closure.
  	@param		inOptionalHeaders		Can be NULL. Ptr to some data you want to send as your optional headers. Use
  										the provided header contruction kit in OBEX.h and OBEXHeadersToBytes() for convenience.
  	@param		inOptionalHeadersLength	Length of data in ptr passed in above.
  	@param		inSelector				A VALID selector to be called when something interesting happens due to this call.
  										Selector in your target object MUST have the following signature, or it
  										will not be called properly (look for error messages in Console.app):
  
  										- (void)OBEXDisconnectHandler:(const  OBEXSessionEvent*)inSessionEvent;
  
  	@param		inTarget				A VALID target object for the selector.
  	@param		inUserRefCon			Whatever you want to pass here. It will be passed back to you in the refCon portion of the
  										OBEXSessionEvent struct. nil is, of course, OK here.
  	@result		An error code value on failure (see OBEX.h and IOReturn.h for possible return values). 0 (kOBEXSuccess) if successful.
  	@discussion A NULL selector or target will result in an error. After return, the data passed in will have been sent over the
  				transport. You will receive a response to your command on your selector.
  				Be careful not to exceed the max packet length in your optional headers, or your command will be rejected.
  				It is recommended that you call getMaxPacketLength on your session before issuing this command so
  				you know how much data the session's target will accept in a single transaction.
  */
  func obexDisconnect(inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError

  /*!	@method		OBEXPut
  	@abstract	Send an OBEX Put command to the session's target.
  	@param		isFinalChunk			Specify if this request is complete in one shot - that all the headers you are
  										supplying will fit in the negotiated max packet length.
  	@param		inHeadersData			Can be NULL. Ptr to some data you want to send as your headers, such as Length,
  										Name, etc. Use the provided header contruction kit in OBEX.h and OBEXHeadersToBytes()
  										for convenience.
  	@param		inHeadersDataLength		Length of data in ptr passed in above.
  	@param		inBodyData				Can be NULL. Ptr to some data you want to send as your BODY header. Do not construct a
  										real OBEX header here, it will be done for you - just pass a pointer to your
  										data, we'll do the rest. HOWEVER, be aware that some overhead (3 bytes) will be added
  										to the data in constructing the BODY header for you.
  	@param		inBodyDataLength		Length of data in ptr passed in above.
  	@param		inSelector				A VALID selector to be called when something interesting happens due to this call.
  										Selector in your target object MUST have the following signature, or it
  										will not be called properly (look for error messages in Console.app):
  
  										- (void)OBEXPutHandler:(const  OBEXSessionEvent*)inSessionEvent;
  
  
  	@param		inTarget				A VALID target object for the selector.
  	@param		inUserRefCon			Whatever you want to pass here. It will be passed back to you in the refCon portion of the
  										OBEXSessionEvent struct. nil is, of course, OK here.
  	@result		An error code value on failure (see OBEX.h and IOReturn.h for possible return values). 0 (kOBEXSuccess) if successful.
  	@discussion	A NULL selector or target will result in an error. After return, the data passed in will have been sent over the
  				transport. You will receive a response to your command on your selector. 
  */
  func obexPut(isFinalChunk: Bool, headersData inHeadersData: UnsafeMutablePointer<Void>, headersDataLength inHeadersDataLength: Int, bodyData inBodyData: UnsafeMutablePointer<Void>, bodyDataLength inBodyDataLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError

  /*!	@method		OBEXGet
  	@abstract	Send an OBEX Get command to the session's target.
  	@param		isFinalChunk			Specify if this request is complete in one shot - that all the headers you are
  										supplying will fit in the negotiated max packet length.
  	@param		inHeadersData			Can be NULL. Ptr to some data you want to send as your headers, such as Length,
  										Name, etc. Use the provided header contruction kit in OBEX.h and OBEXHeadersToBytes()
  										for your convenience.
  	@param		inHeadersDataLength		Length of data in ptr passed in above.
  	@param		inSelector				A VALID selector to be called when something interesting happens due to this call.
  										Selector in your target object MUST have the following signature, or it
  										will not be called properly (look for error messages in Console.app):
  
  										- (void)OBEXGetHandler:(const  OBEXSessionEvent*)inSessionEvent;
  
  	@param		inTarget				A VALID target object for the selector.
  	@param		inUserRefCon			Whatever you want to pass here. It will be passed back to you in the refCon portion of the
  										OBEXSessionEvent struct. nil is, of course, OK here.
  	@result		An error code value on failure (see OBEX.h and IOReturn.h for possible return values). 0 (kOBEXSuccess) if successful.
  	@discussion	A NULL selector or target will result in an error. After return, the data passed in will have been sent over the
  				transport. You will receive a response to your command on your selector. 
  */
  func obexGet(isFinalChunk: Bool, headers inHeaders: UnsafeMutablePointer<Void>, headersLength inHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError

  /*!	@method		OBEXAbort
  	@abstract	Send an OBEX Abort command to the session's target.
  	@param		inOptionalHeaders		Can be NULL. Ptr to some data you want to send as your optional headers. Use
  										the provided header contruction kit in OBEX.h and OBEXHeadersToBytes() for convenience.
  	@param		inOptionalHeadersLength	Length of data in ptr passed in above.
  	@param		inSelector				A VALID selector to be called when something interesting happens due to this call.
  										Selector in your target object MUST have the following signature, or it
  										will not be called properly (look for error messages in Console.app):
  
  										- (void)OBEXAbortHandler:(const  OBEXSessionEvent*)inSessionEvent;
  
  	@param		inTarget				A VALID target object for the selector.
  	@param		inUserRefCon			Whatever you want to pass here. It will be passed back to you in the refCon portion of the
  										OBEXSessionEvent struct. nil is, of course, OK here.
  	@result		An error code value on failure (see OBEX.h and IOReturn.h for possible return values). 0 (kOBEXSuccess) if successful.
  	@discussion	A NULL selector or target will result in an error. After return, the data passed in will have been sent over the
  				transport. You will receive a response to your command on your selector. 
  */
  func obexAbort(inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError

  /*!	@method		OBEXSetPath
  	@abstract	Send an OBEX SetPath command to the session's target.
  	@param		inFlags					OBEX setpath flags. See OBEX.h for possibilities.
  	@param		inConstants				OBEX setpath constants. See OBEX.h for possibilities.
  	@param		inOptionalHeaders		Can be NULL. Ptr to some data you want to send as your optional headers. Use
  										the provided header contruction kit in OBEX.h and OBEXHeadersToBytes() for convenience.
  	@param		inOptionalHeadersLength	Length of data in ptr passed in above.
  	@param		inSelector				A VALID selector to be called when something interesting happens due to this call.
  										Selector in your target object MUST have the following signature, or it
  										will not be called properly (look for error messages in Console.app):
  
  										- (void)OBEXSetPathHandler:(const  OBEXSessionEvent*)inSessionEvent;
  
  	@param		inTarget				A VALID target object for the selector.
  	@param		inUserRefCon			Whatever you want to pass here. It will be passed back to you in the refCon portion of the
  										OBEXSessionEvent struct. nil is, of course, OK here.
  	@result		An error code value on failure (see OBEX.h and IOReturn.h for possible return values). 0 (kOBEXSuccess) if successful.
  	@discussion A NULL selector or target will result in an error. After return, the data passed in will have been sent over the
  				transport. You will receive a response to your command on your selector.
  */
  func obexSetPath(inFlags: OBEXFlags, constants inConstants: OBEXConstants, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError

  /*!	@method		OBEXConnectResponse
  	@abstract	Send a connect response to a session's target.
  	@param		inFlags					OBEX connect flags. See OBEX.h for possibilities.
  	@param		inConstants				OBEX connect constants. See OBEX.h for possibilities.
  	@param		inMaxPacketLength		Maximum packet size you want your OBEX session to communicate with. This MUST be
  										lower than the max packet size the client has reported to you in the connect command
  										you received from it.
  	@param		inOptionalHeaders		Can be NULL. Ptr to some data you want to send as your optional headers. Use
  										the provided header contruction kit in OBEX.h and OBEXHeadersToBytes() for convenience.
  	@param		inOptionalHeadersLength	Length of data in ptr passed in above.
  	@param		inSelector				A VALID selector to be called when something interesting happens due to this call.
  										Selector in your target object MUST have the following signature, or it
  										will not be called properly (look for error messages in Console.app):
  
  										- (void)OBEXConnectResponseHandler:(const  OBEXSessionEvent*)inSessionEvent;
  
  	@param		inTarget				A VALID target object for the selector.
  	@param		inUserRefCon			Whatever you want to pass here. It will be passed back to you in the refCon portion of the
  										OBEXSessionEvent struct. nil is, of course, OK here.
  	@result		An error code value on failure (see OBEX.h and IOReturn.h for possible return values). 0 (kOBEXSuccess) if successful.
  	@discussion A NULL selector or target will result in an error. After return, the data passed in will have been sent over the
  				underlying OBEX transport. You will receive any responses to your command response on your selector.
  */
  func obexConnectResponse(inResponseOpCode: OBEXOpCode, flags inFlags: OBEXFlags, maxPacketLength inMaxPacketLength: OBEXMaxPacketLength, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError

  /*!	@method		OBEXDisconnectResponse
  	@abstract	Send a disconnect response to a session's target.
  	@param		inMaxPacketLength		Maximum packet size you want your OBEX session to communicate with. This MUST be
  										lower than the max packet size the client has reported to you in the connect command
  										you received from it.
  	@param		inOptionalHeaders		Can be NULL. Ptr to some data you want to send as your optional headers. Use
  										the provided header contruction kit in OBEX.h and OBEXHeadersToBytes() for convenience.
  	@param		inOptionalHeadersLength	Length of data in ptr passed in above.
  	@param		inSelector				A VALID selector to be called when something interesting happens due to this call.
  										Selector in your target object MUST have the following signature, or it
  										will not be called properly (look for error messages in Console.app):
  
  										- (void)OBEXDisconnectResponseHandler:(const  OBEXSessionEvent*)inSessionEvent;
  
  	@param		inTarget				A VALID target object for the selector.
  	@param		inUserRefCon			Whatever you want to pass here. It will be passed back to you in the refCon portion of the
  										OBEXSessionEvent struct. nil is, of course, OK here.
  	@result		An error code value on failure (see OBEX.h and IOReturn.h for possible return values). 0 (kOBEXSuccess) if successful.
  	@discussion A NULL selector or target will result in an error. After return, the data passed in will have been sent over the
  				underlying OBEX transport. You will receive any responses to your command response on your selector.
  */
  func obexDisconnectResponse(inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError

  /*!	@method		OBEXPutResponse
  	@abstract	Send a put response to a session's target.
  	@param		inMaxPacketLength		Maximum packet size you want your OBEX session to communicate with. This MUST be
  										lower than the max packet size the client has reported to you in the connect command
  										you received from it.
  	@param		inOptionalHeaders		Can be NULL. Ptr to some data you want to send as your optional headers. Use
  										the provided header contruction kit in OBEX.h and OBEXHeadersToBytes() for convenience.
  	@param		inOptionalHeadersLength	Length of data in ptr passed in above.
  	@param		inSelector				A VALID selector to be called when something interesting happens due to this call.
  										Selector in your target object MUST have the following signature, or it
  										will not be called properly (look for error messages in Console.app):
  
  										- (void)OBEXPutResponseHandler:(const  OBEXSessionEvent*)inSessionEvent;
  
  	@param		inTarget				A VALID target object for the selector.
  	@param		inUserRefCon			Whatever you want to pass here. It will be passed back to you in the refCon portion of the
  										OBEXSessionEvent struct. nil is, of course, OK here.
  	@result		An error code value on failure (see OBEX.h and IOReturn.h for possible return values). 0 (kOBEXSuccess) if successful.
  	@discussion A NULL selector or target will result in an error. After return, the data passed in will have been sent over the
  				underlying OBEX transport. You will receive any responses to your command response on your selector.
  */
  func obexPutResponse(inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError

  /*!	@method		OBEXGetResponse
  	@abstract	Send a get response to a session's target.
  	@param		inMaxPacketLength		Maximum packet size you want your OBEX session to communicate with. This MUST be
  										lower than the max packet size the client has reported to you in the connect command
  										you received from it.
  	@param		inOptionalHeaders		Can be NULL. Ptr to some data you want to send as your optional headers. Use
  										the provided header contruction kit in OBEX.h and OBEXHeadersToBytes() for convenience.
  	@param		inOptionalHeadersLength	Length of data in ptr passed in above.
  	@param		inSelector				A VALID selector to be called when something interesting happens due to this call.
  										Selector in your target object MUST have the following signature, or it
  										will not be called properly (look for error messages in Console.app):
  
  										- (void)OBEXGetResponseHandler:(const  OBEXSessionEvent*)inSessionEvent;
  
  	@param		inTarget				A VALID target object for the selector.
  	@param		inUserRefCon			Whatever you want to pass here. It will be passed back to you in the refCon portion of the
  										OBEXSessionEvent struct. nil is, of course, OK here.
  	@result		An error code value on failure (see OBEX.h and IOReturn.h for possible return values). 0 (kOBEXSuccess) if successful.
  	@discussion A NULL selector or target will result in an error. After return, the data passed in will have been sent over the
  				underlying OBEX transport. You will receive any responses to your command response on your selector.
  */
  func obexGetResponse(inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError

  /*!	@method		OBEXAbortResponse
  	@abstract	Send a abort response to a session's target.
  	@param		inMaxPacketLength		Maximum packet size you want your OBEX session to communicate with. This MUST be
  										lower than the max packet size the client has reported to you in the connect command
  										you received from it.
  	@param		inOptionalHeaders		Can be NULL. Ptr to some data you want to send as your optional headers. Use
  										the provided header contruction kit in OBEX.h and OBEXHeadersToBytes() for convenience.
  	@param		inOptionalHeadersLength	Length of data in ptr passed in above.
  	@param		inSelector				A VALID selector to be called when something interesting happens due to this call.
  										Selector in your target object MUST have the following signature, or it
  										will not be called properly (look for error messages in Console.app):
  
  										- (void)OBEXAbortResponseHandler:(const  OBEXSessionEvent*)inSessionEvent;
  
  	@param		inTarget				A VALID target object for the selector.
  	@param		inUserRefCon			Whatever you want to pass here. It will be passed back to you in the refCon portion of the
  										OBEXSessionEvent struct. nil is, of course, OK here.
  	@result		An error code value on failure (see OBEX.h and IOReturn.h for possible return values). 0 (kOBEXSuccess) if successful.
  	@discussion A NULL selector or target will result in an error. After return, the data passed in will have been sent over the
  				underlying OBEX transport. You will receive any responses to your command response on your selector.
  */
  func obexAbortResponse(inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError

  /*!	@method		OBEXSetPathResponse
  	@abstract	Send a set path response to a session's target.
  	@param		inMaxPacketLength		Maximum packet size you want your OBEX session to communicate with. This MUST be
  										lower than the max packet size the client has reported to you in the connect command
  										you received from it.
  	@param		inOptionalHeaders		Can be NULL. Ptr to some data you want to send as your optional headers. Use
  										the provided header contruction kit in OBEX.h and OBEXHeadersToBytes() for convenience.
  	@param		inOptionalHeadersLength	Length of data in ptr passed in above.
  	@param		inSelector				A VALID selector to be called when something interesting happens due to this call.
  										Selector in your target object MUST have the following signature, or it
  										will not be called properly (look for error messages in Console.app):
  
  										- (void)OBEXSetPathResponseHandler:(const  OBEXSessionEvent*)inSessionEvent;
  
  	@param		inTarget				A VALID target object for the selector.
  	@param		inUserRefCon			Whatever you want to pass here. It will be passed back to you in the refCon portion of the
  										OBEXSessionEvent struct. nil is, of course, OK here.
  	@result		An error code value on failure (see OBEX.h and IOReturn.h for possible return values). 0 (kOBEXSuccess) if successful.
  	@discussion A NULL selector or target will result in an error. After return, the data passed in will have been sent over the
  				underlying OBEX transport. You will receive any responses to your command response on your selector.
  */
  func obexSetPathResponse(inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError

  /*!	@method		getAvailableCommandPayloadLength
  	@abstract	Determine the maximum amount of data you can send in a particular command as an OBEX client session.
  	@param		inOpCode		The opcode you are interested in sending (as a client).
  	@result		The maximum amount of data a particular packet can handle, after accounting for any command overhead.
  	@discussion	Each OBEX Command has a certain amount of overhead. Since the negotiated max packet length does
  				not indicate what the maximum data amount you can send in a particular command's packet, you can
  				use this function to determine how much data to provide in optional headers or body data headers.
  */
  func getAvailableCommandPayloadLength(inOpCode: OBEXOpCode) -> OBEXMaxPacketLength

  /*!	@method		getAvailableCommandResponsePayloadLength
  	@abstract	Determine the maximum amount of data you can send in a particular command response as an OBEX server session.
  	@param		inOpCode		The opcode you are interested in responding to (as a server).
  	@result		The maximum amount of data a particular packet can handle, after accounting for any command response overhead.
  	@discussion	Each OBEX Command response has a certain amount of overhead. Since the negotiated max packet length does
  				not indicate what the maximum data amount you can send in a particular response's packet, you can
  				use this function to determine how much data to provide in optional headers or body data headers.
  */
  func getAvailableCommandResponsePayloadLength(inOpCode: OBEXOpCode) -> OBEXMaxPacketLength

  /*!	@method		getMaxPacketLength
  	@abstract	Gets current max packet length.
  	@result		Max packet length.
  	@discussion	This value *could* change before and after a connect command has been sent or a connect
  				command response has been received, since the recipient could negotiate a lower max packet size.
  */
  func getMaxPacketLength() -> OBEXMaxPacketLength

  /*!	@method		hasOpenOBEXConnection
  	@abstract	Has a successful connect packet been sent and received? This API tells you so.
  	@result		True or false, we are OBEX-connected to another OBEX entity.
  	@discussion	A "transport" connection may exist (such as a Bluetooth baseband connection), but the OBEX connection
  				may not be established over that transport. If it has been, this function returns true.
  */
  func hasOpenOBEXConnection() -> Bool

  /*!	@method		setEventCallback
  	@abstract	Sets the C-API callback used when the session recieves data.
  	@param		inEventCallback		Function to callback. Should be non-NULL, unless you are attempting to clear the
  									callback, but doing that doesn't make much sense.
  	@discussion	This is really not intended for client sessions. Only subclasses would really be interested in using this. They
  				should set these when their subclass object is created, because otherwise they will have no way of receiving
  				the initial command data packet. This is a partner to setEventRefCon, described below.
  */
  func setEventCallback(inEventCallback: OBEXSessionEventCallback!)

  /*!	@method		setEventRefCon
  	@abstract	Sets the C-API callback refCon used when the session recieves data.
  	@param		inRefCon		User's refCon that will get passed when their event callback is invoked.
  	@discussion	This is really not intended for client sessions. Only subclasses would really be interested in using this. They
  				should set these when their subclass object is created, because otherwise they will have no context in their
  				callback.
  */
  func setEventRefCon(inRefCon: UnsafeMutablePointer<Void>)

  /*!	@method		setEventSelector
  	@abstract	Allow you to set a selector to be called when events occur on the OBEX session.
  	@param		inEventSelector				Selector to call on the target.
  	@param		inEventSelectorTarget		Target to be called with the selector.
  	@param		inUserRefCon				User's refCon that will get passed when their event callback is invoked.
  	@discussion	Really not needed to be used, since the event selector will get set when an OBEX command is sent out.
  */
  func setEventSelector(inEventSelector: Selector, target inEventSelectorTarget: AnyObject!, refCon inUserRefCon: AnyObject!)

  /*!	@method		serverHandleIncomingData
  	@abstract	Tranport subclasses need to invoke this from their own data-receive handlers. For example, when data is
  				received over a Bluetooth RFCOMM channel in the IOBluetoothOBEXSession, it in turn calls this to dispatch
  				the data. If you do not handle this case, your server session will not work, guaranteed.
  	@param		event			New event received from the transport.
  	@discussion	Tranport subclasses must call this for OBEX server sessions to work!
  */
  func serverHandleIncomingData(event: UnsafeMutablePointer<OBEXTransportEvent>)

  /*!	@method		clientHandleIncomingData
  	@abstract	Tranport subclasses need to invoke this from their own data-receive handlers. For example, when data is
  				received over a Bluetooth RFCOMM channel in the IOBluetoothOBEXSession, it in turn calls this to dispatch
  				the data. If you do not handle this case, your server session will not work, guaranteed.
  	@param		event			New event received from the transport.
  	@discussion	Tranport subclasses must call this for OBEX client sessions to work!
  */
  func clientHandleIncomingData(event: UnsafeMutablePointer<OBEXTransportEvent>)

  /*!	@method		sendDataToTransport
  	@abstract	You must override this to send data over your transport. This does nothing by default, it will
  				return a kOBEXUnsupportedError.
  	@param		inDataToSend		Data to shove over the transport to a remote OBEX session.
  	@param		inDataLength		Length of data passed in.
  	@result		Return whether or not the transport could send the  data or not. If you are successful, return kOBEXSuccess,
  				otherwise an interesting error code.
  	@discussion	Tranport subclasses must override this! When called you should send the data over the transport to
  				the remote session.
  */
  func sendDataToTransport(inDataToSend: UnsafeMutablePointer<Void>, dataLength inDataLength: Int) -> OBEXError

  /*!	@method		openTransportConnection
  	@abstract	Opens a transport connection to a device. A Bluetooth connection is one example of a transport.
  	@param		inSelector			Selector to call for success, failure or timeout.
  	@param		inTarget			Target on which to call the selector.
  	@param		inUserRefCon		Caller's reference constant.
  	@result		Should return kOBEXSuccess ( 0 ) on success, otherwise an error code.
  	@discussion	Tranport subclasses must override this! when called you should attempt to open your transport
  				connection, and if you are successful, return kOBEXSuccess, otherwise an interesting error code.
  */
  func openTransportConnection(inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError

  /*!	@method		hasOpenTransportConnection
  	@abstract	You must override this - it will be called periodically to determine if a transport connection is open or not.
  	@result		Return whether or not the transport connection is still open.
  	@discussion	Tranport subclasses must override this! When called you simply return if the transport connection is still
  				open or not.
  */
  func hasOpenTransportConnection() -> Bool

  /*!	@method		closeTransportConnection
  	@abstract	You must override this - it will be called when the transport connection should be shutdown.
  	@result		Return whether or not the transport connection was closed successfully or not. Return OBEXSuccess ( 0 ) on
  				success, otherwise an error code.
  	@discussion	Tranport subclasses must override this! When called you should take whatever steps are necessary to
  				actually close down the transport connection.
  */
  func closeTransportConnection() -> OBEXError
  init()
}

/*!	@enum		OBEXTransportEventTypes
	@discussion	Pass these types in the OBEXTransportEvent, and then pass the struct on to the session object once you
				have filled it out. This is how you can communicate with the session when events happen - if data is
				received, the type will be 'kOBEXTransportEventTypeDataReceived'. if an error has occurred on your transport,
				like the remote target died, you can send a status event with a non-zero value. Since session objects will
				receive this status code on their event handlers, you should try to pass a useful status/error code, such as
				an IOReturn value.
*/
typealias OBEXTransportEventType = UInt32
struct OBEXTransportEventTypes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXTransportEventTypeDataReceived: OBEXTransportEventTypes { get }
var kOBEXTransportEventTypeStatus: OBEXTransportEventTypes { get }
struct OBEXTransportEvent {
  var type: OBEXTransportEventType
  var status: OBEXError
  var dataPtr: UnsafeMutablePointer<Void>
  var dataLength: Int
  init()
  init(type: OBEXTransportEventType, status: OBEXError, dataPtr: UnsafeMutablePointer<Void>, dataLength: Int)
}
