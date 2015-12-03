
@available(OSX 10.6, *)
let kICUTTypeRaw: CFString!
struct ICARawFileHeader {
  var imageDataOffset: UInt32
  var version: UInt32
  var imageWidth: UInt32
  var imageHeight: UInt32
  var bytesPerRow: UInt32
  var numberOfComponents: UInt32
  var bitsPerComponent: UInt32
  var bitsPerPixel: UInt32
  var cgColorSpaceModel: UInt32
  var bitmapInfo: UInt32
  var orientation: UInt32
  var dpi: UInt32
  var colorSyncModeStr: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
  init()
  init(imageDataOffset: UInt32, version: UInt32, imageWidth: UInt32, imageHeight: UInt32, bytesPerRow: UInt32, numberOfComponents: UInt32, bitsPerComponent: UInt32, bitsPerPixel: UInt32, cgColorSpaceModel: UInt32, bitmapInfo: UInt32, orientation: UInt32, dpi: UInt32, colorSyncModeStr: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8))
}
func ICDCreateColorSpace(bitsPerPixel: UInt32, _ samplesPerPixel: UInt32, _ icaObject: ICAObject, _ colorSyncMode: CFString!, _ abstractProfile: CFData!, _ tmpProfilePath: UnsafeMutablePointer<Int8>) -> Unmanaged<CGColorSpace>!
func ICDAddImageInfoToNotificationDictionary(dict: CFMutableDictionary!, _ width: UInt32, _ height: UInt32, _ bytesPerRow: UInt32, _ dataStartRow: UInt32, _ dataNumberOfRows: UInt32, _ dataSize: UInt32, _ dataBuffer: UnsafeMutablePointer<Void>) -> ICAError
func ICDAddBandInfoToNotificationDictionary(dict: CFMutableDictionary!, _ width: UInt32, _ height: UInt32, _ bitsPerPixel: UInt32, _ bitsPerComponent: UInt32, _ numComponents: UInt32, _ endianness: UInt32, _ pixelDataType: UInt32, _ bytesPerRow: UInt32, _ dataStartRow: UInt32, _ dataNumberOfRows: UInt32, _ dataSize: UInt32, _ dataBuffer: UnsafeMutablePointer<Void>) -> ICAError
func ICDSendNotification(pb: UnsafeMutablePointer<ICASendNotificationPB>) -> ICAError
func ICDSendNotificationAndWaitForReply(pb: UnsafeMutablePointer<ICASendNotificationPB>) -> ICAError
var ICLoggingEnabled: Int32
var ICLoggingLevelMask: Int32
let ICLoggingLevelError: Int32
let ICLoggingLevelWarning: Int32
let ICLoggingLevelBasicInfo: Int32
let ICLoggingLevelVerboseInfo: Int32
let ICLoggingLevelTimingInfo: Int32

/*!
    @header
        ICAApplication.h
    @discussion
      ICAApplication.h defines structures and functions that are used by clients of Image Capture framework. 
*/
typealias ICAError = OSErr
var kICAPBVersion: Int { get }
var kICACommunicationErr: Int { get }
var kICADeviceNotFoundErr: Int { get }
var kICADeviceNotOpenErr: Int { get }
var kICAFileCorruptedErr: Int { get }
var kICAIOPendingErr: Int { get }
var kICAInvalidObjectErr: Int { get }
var kICAInvalidPropertyErr: Int { get }
var kICAIndexOutOfRangeErr: Int { get }
var kICAPropertyTypeNotFoundErr: Int { get }
var kICACannotYieldDevice: Int { get }
var kICADataTypeNotFoundErr: Int { get }
var kICADeviceMemoryAllocationErr: Int { get }
var kICADeviceInternalErr: Int { get }
var kICADeviceInvalidParamErr: Int { get }
var kICADeviceAlreadyOpenErr: Int { get }
var kICADeviceLocationIDNotFoundErr: Int { get }
var kICADeviceGUIDNotFoundErr: Int { get }
var kICADeviceIOServicePathNotFoundErr: Int { get }
var kICADeviceUnsupportedErr: Int { get }
var kICAFrameworkInternalErr: Int { get }
var kICAExtensionInternalErr: Int { get }
var kICAInvalidSessionErr: Int { get }
var kICASandboxViolation: Int { get }
var kICASecureSessionRequired: Int { get }
var kICADevice: Int { get }
var kICADeviceCamera: Int { get }
var kICADeviceScanner: Int { get }
var kICADeviceMFP: Int { get }
var kICADevicePhone: Int { get }
var kICADevicePDA: Int { get }
var kICADeviceOther: Int { get }
var kICAList: Int { get }
var kICADirectory: Int { get }
var kICAFile: Int { get }
var kICAFileImage: Int { get }
var kICAFileMovie: Int { get }
var kICAFileAudio: Int { get }
var kICAFileFirmware: Int { get }
var kICAFileOther: Int { get }
var kICAProperty: Int { get }
var kICAPropertyImageWidth: Int { get }
var kICAPropertyImageHeight: Int { get }
var kICAPropertyImageBitDepth: Int { get }
var kICAPropertyImageDPI: Int { get }
var kICAPropertyImageExposureTime: Int { get }
var kICAPropertyImageFNumber: Int { get }
var kICAPropertyImageDateOriginal: Int { get }
var kICAPropertyImageDateDigitized: Int { get }
var kICAPropertyImageShutterSpeed: Int { get }
var kICAPropertyImageAperture: Int { get }
var kICAPropertyImageFlash: Int { get }
var kICAPropertyColorSpace: Int { get }
var kICAPropertyImageFilename: Int { get }
var kICAPropertyImageSize: Int { get }
var kICAPropertyImageData: Int { get }
var kICAPropertyImageThumbnail: Int { get }
var kICAPropertyColorSyncProfile: Int { get }
var kICATypeUInt8: Int { get }
var kICATypeUInt16: Int { get }
var kICATypeUInt32: Int { get }
var kICATypeUInt64: Int { get }
var kICATypeSInt16: Int { get }
var kICATypeSInt32: Int { get }
var kICATypeSInt64: Int { get }
var kICATypeFloat: Int { get }
var kICATypeFixed: Int { get }
var kICATypeBoolean: Int { get }
var kICATypeString: Int { get }
var kICATypeData: Int { get }
var kICATypeThumbnail: Int { get }
var kICAFlagReadWriteAccess: Int { get }
var kICAFlagReadAccess: Int { get }
var kICAButtonScan: Int { get }
var kICAButtonCopy: Int { get }
var kICAButtonEMail: Int { get }
var kICAButtonWeb: Int { get }
var kICACameraPassThruSend: Int { get }
var kICACameraPassThruReceive: Int { get }
var kICACameraPassThruNotUsed: Int { get }

/*!
    @struct ICAPTPPassThroughPB
    @field commandCode
        PTP command code (including vendor specific) <--
    @field resultCode
        PTP response code -->
    @field numOfInputParams
        Number of valid parameters to be sent to device <--
    @field numOfOutputParams
        Number of valid parameters expected from device <--
    @field params
        PTP parameters (command specific / optional) <->
    @field dataUsageMode
        One of (kICACameraPassThruSend, kICACameraPassThruReceive, kICACameraPassThruNotUsed) <--
    @field flags
        Not used currently
    @field dataSize
        Size of data block <->
    @field data
        Data block <->
*/
struct ICAPTPPassThroughPB {
  var commandCode: UInt32
  var resultCode: UInt32
  var numOfInputParams: UInt32
  var numOfOutputParams: UInt32
  var params: (UInt32, UInt32, UInt32, UInt32)
  var dataUsageMode: UInt32
  var flags: UInt32
  var dataSize: UInt32
  var data: (UInt8)
  init()
  init(commandCode: UInt32, resultCode: UInt32, numOfInputParams: UInt32, numOfOutputParams: UInt32, params: (UInt32, UInt32, UInt32, UInt32), dataUsageMode: UInt32, flags: UInt32, dataSize: UInt32, data: (UInt8))
}

/*!
    @struct ICAPTPEventDataset
    @field dataLength
        Data length in bytes
    @field containerType
        PTP container type
    @field eventCode
        PTP event code
    @field transactionID
        PTP transaction ID
    @field params
        PTP params. The number of params should be (dataLength - 12)/4
*/
struct ICAPTPEventDataset {
  var dataLength: UInt32
  var containerType: UInt16
  var eventCode: UInt16
  var transactionID: UInt32
  var params: (UInt32, UInt32, UInt32)
  init()
  init(dataLength: UInt32, containerType: UInt16, eventCode: UInt16, transactionID: UInt32, params: (UInt32, UInt32, UInt32))
}
@available(OSX 10.5, *)
let kICADevicesArrayKey: CFString!
@available(OSX 10.5, *)
let kICAObjectKey: CFString!
@available(OSX 10.5, *)
let kICAObjectNameKey: CFString!
@available(OSX 10.5, *)
let kICAUSBVendorIDKey: CFString!
@available(OSX 10.5, *)
let kICAUSBProductIDKey: CFString!
@available(OSX 10.5, *)
let kICADeviceTypeKey: CFString!
@available(OSX 10.5, *)
let kICAExecutableArchitectureKey: CFString!
@available(OSX 10.5, *)
let kICARemoteDeviceKey: CFString!
@available(OSX 10.5, *)
let kICADeviceSharedKey: CFString!
@available(OSX 10.5, *)
let kICADeviceWebSharedKey: CFString!
@available(OSX 10.5, *)
let kICADeviceUsedKey: CFString!
@available(OSX 10.5, *)
let kICABonjourServiceTypeKey: CFString!
@available(OSX 10.5, *)
let kICABonjourServiceNameKey: CFString!
@available(OSX 10.5, *)
let kICABonjourTXTRecordKey: CFString!
@available(OSX 10.5, *)
let kICADeviceCapabilitiesKey: CFString!
@available(OSX 10.5, *)
let kICALockStatusKey: CFString!
@available(OSX 10.5, *)
let kICADataPropertyKey: CFString!
@available(OSX 10.5, *)
let kICADataTypeKey: CFString!
@available(OSX 10.5, *)
let kICADataSizeKey: CFString!
@available(OSX 10.5, *)
let kICAThumbnailPropertyKey: CFString!
@available(OSX 10.5, *)
let kICAThumbnailSizeKey: CFString!
@available(OSX 10.5, *)
let kICARawKey: CFString!
@available(OSX 10.4, *)
let kICAMediaHeightKey: CFString!
@available(OSX 10.4, *)
let kICAMediaWidthKey: CFString!
@available(OSX 10.5, *)
let kICACreationDateStringKey: CFString!
@available(OSX 10.5, *)
let kICAModificationDateStringKey: CFString!
@available(OSX 10.5, *)
let kMetaDataDictionaryKey: CFString!
@available(OSX 10.5, *)
let kICAMediaDurationInSecondsKey: CFString!
@available(OSX 10.5, *)
let kICADeviceTypeCamera: CFString!
@available(OSX 10.5, *)
let kICADeviceTypeScanner: CFString!
@available(OSX 10.4, *)
let kICAUSBTransportType: CFString!
@available(OSX 10.4, *)
let kICAFireWireTransportType: CFString!
@available(OSX 10.4, *)
let kICABluetoothTransportType: CFString!
@available(OSX 10.4, *)
let kICATCPIPTransportType: CFString!
@available(OSX 10.4, *)
let kICASCSITransportType: CFString!
@available(OSX 10.4, *)
let kICATWAINTransportType: CFString!
@available(OSX 10.5, *)
let kICADeviceBrowserDeviceRefKey: CFString!
@available(OSX 10.4, *)
let kICADeviceModulePathKey: CFString!
@available(OSX 10.5, *)
let kICADeviceIconPathKey: CFString!
@available(OSX 10.4, *)
let kICATransportTypeKey: CFString!
@available(OSX 10.4, *)
let kICABluetoothAddressKey: CFString!
@available(OSX 10.4, *)
let kICAUSBLocationIDKey: CFString!
@available(OSX 10.4, *)
let kICAFireWireGUIDKey: CFString!
@available(OSX 10.4, *)
let kICAIOServicePathKey: CFString!
@available(OSX 10.4, *)
let kICAIPAddressKey: CFString!
@available(OSX 10.4, *)
let kICAIPPortKey: CFString!
@available(OSX 10.4, *)
let kICAIPNameKey: CFString!
@available(OSX 10.4, *)
let kICAIPGUIDKey: CFString!
@available(OSX 10.4, *)
let kICATWAINDSPathKey: CFString!

/*!
    @const
        kICAUserAssignedDeviceNameKey
    @abstract 
        This key may be present in the property dictionary of a device if the device has a user-assigned name.
    @discussion
        Value is of type CFStringRef.
*/
@available(OSX 10.5, *)
let kICAUserAssignedDeviceNameKey: CFString!

/*!
    @struct ICAHeader
    @discussion
        This is the first field in all parameter blocks used by APIs defined in ICAApplication.h.
        Type of parameter passed to a callback function used by APIs defined in ICAApplication.h.
        The parameter for the completion proc should to be casted to an appropriate type such as ICAGetChildCountPB* for it to be useful.
    @field err
        Error returned by an API. -->
    @field refcon
        An arbitrary refcon value passed to the callback. <--
*/
struct ICAHeader {
  var err: ICAError
  var refcon: UInt
  init()
  init(err: ICAError, refcon: UInt)
}
typealias ICACompletion = @convention(c) (UnsafeMutablePointer<ICAHeader>) -> Void
typealias ICAImportFilterProc = @convention(c) (CFDictionary!, UInt) -> DarwinBoolean
typealias ICANotificationProc = @convention(c) (CFString!, CFDictionary!) -> Void
typealias ICAObject = UInt32
typealias ICAProperty = UInt32
typealias ICAConnectionID = UInt32
typealias ICASessionID = UInt32
typealias ICAScannerSessionID = ICASessionID
typealias ICAEventDataCookie = UInt32

/*!
    @struct ICAObjectInfo
    @field objectType
        An object type, e.g., kICAFile.
    @field objectSubtype
        An object subtype, e.g., kICAFileImage.
*/
struct ICAObjectInfo {
  var objectType: OSType
  var objectSubtype: OSType
  init()
  init(objectType: OSType, objectSubtype: OSType)
}
var kICAAllowMultipleImages: Int { get }
var kICADownloadAndReturnPathArray: Int { get }

/*!
    @struct ICAImportImagePB
    @field header
        See description for ICAHeader.  <->
    @field deviceObject
        Object ID of a camera or scanner device. Set this to NULL to ge the default behavior: (a) if no device is connected, a panel saying that there� no device connected is displayed, (b) if a single device is connected, an appropriate user interface to access that device will be displayed, (c) if several devices are connected, a device selector panel will be displayed. <--
    @field flags
        One or more flags (combined with an OR operator) defined in ImportImage flags enum. <--
    @field supportedFileTypes
        An array of file extension strings such as "jpg", "tif", etc., that are of interest to the calling application. Set to NULL to display all files. <--
    @field filterProc
        Specify a filter proc to that will be called for each file before it is displayed in the user interface. <--
    @field importedImages
        Returns an array of CFDataRefs for the imported images if the kICADownloadAndReturnPathArray flag is not specified. Otherwise returns an array of CFStringRefs holding the paths of the images that are downloaded. The caller should provide a pointer to a CFArrayRef object initialized to NULL. The caller is responsible for released the array returned by this function. -->
*/
struct ICAImportImagePB {
  var header: ICAHeader
  var deviceObject: ICAObject
  var flags: UInt32
  var supportedFileTypes: Unmanaged<CFArray>!
  var filterProc: ICAImportFilterProc!
  var importedImages: UnsafeMutablePointer<Unmanaged<CFArray>?>
  init()
  init(header: ICAHeader, deviceObject: ICAObject, flags: UInt32, supportedFileTypes: Unmanaged<CFArray>!, filterProc: ICAImportFilterProc!, importedImages: UnsafeMutablePointer<Unmanaged<CFArray>?>)
}
typealias ICANotification = @convention(c) (CFString!, CFDictionary!) -> Void
@available(OSX 10.5, *)
let kICANotificationTypeObjectAdded: CFString!
@available(OSX 10.5, *)
let kICANotificationTypeObjectRemoved: CFString!
@available(OSX 10.5, *)
let kICANotificationTypeObjectInfoChanged: CFString!
@available(OSX 10.5, *)
let kICANotificationTypeStoreAdded: CFString!
@available(OSX 10.5, *)
let kICANotificationTypeStoreRemoved: CFString!
@available(OSX 10.5, *)
let kICANotificationTypeStoreFull: CFString!
@available(OSX 10.5, *)
let kICANotificationTypeStoreInfoChanged: CFString!
@available(OSX 10.5, *)
let kICANotificationTypeDeviceAdded: CFString!
@available(OSX 10.5, *)
let kICANotificationTypeDeviceRemoved: CFString!
@available(OSX 10.5, *)
let kICANotificationTypeDeviceInfoChanged: CFString!
@available(OSX 10.5, *)
let kICANotificationTypeDevicePropertyChanged: CFString!
@available(OSX 10.5, *)
let kICANotificationTypeDeviceWasReset: CFString!
@available(OSX 10.5, *)
let kICANotificationTypeDeviceStatusInfo: CFString!
@available(OSX 10.5, *)
let kICANotificationTypeDeviceStatusError: CFString!
@available(OSX 10.5, *)
let kICANotificationTypeCaptureComplete: CFString!
@available(OSX 10.5, *)
let kICANotificationTypeRequestObjectTransfer: CFString!
@available(OSX 10.5, *)
let kICANotificationTypeTransactionCanceled: CFString!
@available(OSX 10.5, *)
let kICANotificationTypeUnreportedStatus: CFString!
@available(OSX 10.5, *)
let kICANotificationTypeProprietary: CFString!
@available(OSX 10.5, *)
let kICANotificationTypeDeviceConnectionProgress: CFString!
@available(OSX 10.5, *)
let kICANotificationTypeDownloadProgressStatus: CFString!
@available(OSX 10.5, *)
let kICANotificationTypeScanProgressStatus: CFString!
@available(OSX 10.5, *)
let kICANotificationTypeScannerSessionClosed: CFString!
@available(OSX 10.5, *)
let kICANotificationTypeScannerScanDone: CFString!
@available(OSX 10.5, *)
let kICANotificationTypeScannerPageDone: CFString!
@available(OSX 10.5, *)
let kICANotificationTypeScannerButtonPressed: CFString!
@available(OSX 10.6, *)
let kICANotificationTypeScannerOverviewOverlayAvailable: CFString!
@available(OSX 10.5, *)
let kICAErrorKey: CFString!
@available(OSX 10.5, *)
let kICARefconKey: CFString!
@available(OSX 10.5, *)
let kICANotificationICAObjectKey: CFString!
@available(OSX 10.5, *)
let kICANotificationDeviceICAObjectKey: CFString!
@available(OSX 10.5, *)
let kICANotificationDeviceListICAObjectKey: CFString!
@available(OSX 10.5, *)
let kICANotificationClassKey: CFString!
@available(OSX 10.5, *)
let kICANotificationTypeKey: CFString!
@available(OSX 10.5, *)
let kICANotificationRawEventKey: CFString!
@available(OSX 10.5, *)
let kICANotificationDataKey: CFString!
@available(OSX 10.5, *)
let kICANotificationDataSizeKey: CFString!
@available(OSX 10.5, *)
let kICANotificationDataCookieKey: CFString!
@available(OSX 10.5, *)
let kICANotificationImageKey: CFString!
@available(OSX 10.5, *)
let kICANotificationImageWidthKey: CFString!
@available(OSX 10.5, *)
let kICANotificationImageHeightKey: CFString!
@available(OSX 10.5, *)
let kICANotificationImageBytesPerRowKey: CFString!
@available(OSX 10.5, *)
let kICANotificationImageStartRowKey: CFString!
@available(OSX 10.5, *)
let kICANotificationImageNumberOfRowsKey: CFString!
@available(OSX 10.5, *)
let kICANotificationImageDataKey: CFString!
@available(OSX 10.5, *)
let kICANotificationImageDataSizeKey: CFString!
@available(OSX 10.5, *)
let kICANotificationDataIsBigEndianKey: CFString!
@available(OSX 10.5, *)
let kICANotificationScannerDocumentNameKey: CFString!
@available(OSX 10.5, *)
let kICANotificationScannerButtonTypeKey: CFString!
@available(OSX 10.5, *)
let kICANotificationNumerOfImagesRemainingKey: CFString!
@available(OSX 10.5, *)
let kICANotificationPercentDownloadedKey: CFString!
@available(OSX 10.5, *)
let kICANotificationSubTypeKey: CFString!
@available(OSX 10.5, *)
let kICANotificationSubTypeWarmUpStarted: CFString!
@available(OSX 10.5, *)
let kICANotificationSubTypeWarmUpDone: CFString!
@available(OSX 10.5, *)
let kICANotificationVendorErrorCodeKey: CFString!
@available(OSX 10.6, *)
let kICANotificationSubTypePerformOverviewScan: CFString!
@available(OSX 10.6, *)
let kICANotificationSubTypeDocumentLoaded: CFString!
@available(OSX 10.6, *)
let kICANotificationSubTypeDocumentNotLoaded: CFString!
@available(OSX 10.5, *)
let kICANotificationClassPTPStandard: CFString!
@available(OSX 10.5, *)
let kICANotificationClassPTPVendor: CFString!
@available(OSX 10.5, *)
let kICANotificationClassProprietary: CFString!
@available(OSX 10.5, *)
let kICADevicePropUndefined: CFString!
@available(OSX 10.5, *)
let kICADevicePropBatteryLevel: CFString!
@available(OSX 10.5, *)
let kICADevicePropFunctionalMode: CFString!
@available(OSX 10.5, *)
let kICADevicePropImageSize: CFString!
@available(OSX 10.5, *)
let kICADevicePropCompressionSetting: CFString!
@available(OSX 10.5, *)
let kICADevicePropWhiteBalance: CFString!
@available(OSX 10.5, *)
let kICADevicePropRGBGain: CFString!
@available(OSX 10.5, *)
let kICADevicePropFNumber: CFString!
@available(OSX 10.5, *)
let kICADevicePropFocalLength: CFString!
@available(OSX 10.5, *)
let kICADevicePropFocusDistance: CFString!
@available(OSX 10.5, *)
let kICADevicePropFocusMode: CFString!
@available(OSX 10.5, *)
let kICADevicePropExposureMeteringMode: CFString!
@available(OSX 10.5, *)
let kICADevicePropFlashMode: CFString!
@available(OSX 10.5, *)
let kICADevicePropExposureTime: CFString!
@available(OSX 10.5, *)
let kICADevicePropExposureProgramMode: CFString!
@available(OSX 10.5, *)
let kICADevicePropExposureIndex: CFString!
@available(OSX 10.5, *)
let kICADevicePropExposureBiasCompensation: CFString!
@available(OSX 10.5, *)
let kICADevicePropDateTime: CFString!
@available(OSX 10.5, *)
let kICADevicePropCaptureDelay: CFString!
@available(OSX 10.5, *)
let kICADevicePropStillCaptureMode: CFString!
@available(OSX 10.5, *)
let kICADevicePropContrast: CFString!
@available(OSX 10.5, *)
let kICADevicePropSharpness: CFString!
@available(OSX 10.5, *)
let kICADevicePropDigitalZoom: CFString!
@available(OSX 10.5, *)
let kICADevicePropEffectMode: CFString!
@available(OSX 10.5, *)
let kICADevicePropBurstNumber: CFString!
@available(OSX 10.5, *)
let kICADevicePropBurstInterval: CFString!
@available(OSX 10.5, *)
let kICADevicePropTimelapseNumber: CFString!
@available(OSX 10.5, *)
let kICADevicePropTimelapseInterval: CFString!
@available(OSX 10.5, *)
let kICADevicePropFocusMeteringMode: CFString!
@available(OSX 10.5, *)
let kICADevicePropUploadURL: CFString!
@available(OSX 10.5, *)
let kICADevicePropArtist: CFString!
@available(OSX 10.5, *)
let kICADevicePropCopyrightInfo: CFString!

/*!
    @struct ICARegisterForEventNotificationPB
    @discussion
        Use this parameter structure to specify a set of events associated with an object
        about which notifications should be sent to the specified notification function.
    @field header
        See description for ICAHeader. <->
    @field objectOfInterest
        An object about which notifications are requested. <--
    @field eventsOfInterest
        An array of notification types of interest. <--
    @field notificationProc
        A callback function to receive the notifications. <--
    @field options
        Set options to NULL. This parameter is intended for future use. <--
*/
struct ICARegisterForEventNotificationPB {
  var header: ICAHeader
  var objectOfInterest: ICAObject
  var eventsOfInterest: Unmanaged<CFArray>!
  var notificationProc: ICANotification!
  var options: Unmanaged<CFDictionary>!
  init()
  init(header: ICAHeader, objectOfInterest: ICAObject, eventsOfInterest: Unmanaged<CFArray>!, notificationProc: ICANotification!, options: Unmanaged<CFDictionary>!)
}
struct ICASendNotificationPB {
  var header: ICAHeader
  var notificationDictionary: Unmanaged<CFMutableDictionary>!
  var replyCode: UInt32
  init()
  init(header: ICAHeader, notificationDictionary: Unmanaged<CFMutableDictionary>!, replyCode: UInt32)
}

/*!
    @struct ICAGetDeviceListPB
    @field header
        See description for ICAHeader. <-->
    @field object
        The device list object, if ICAGetDeviceList returns successfully. -->
*/
struct ICAGetDeviceListPB {
  var header: ICAHeader
  var object: ICAObject
  init()
  init(header: ICAHeader, object: ICAObject)
}

/*!
    @struct ICACopyObjectPropertyDictionaryPB
    @field header
        See description for ICAHeader. <->
    @field object
        An object whose properties are being requested. <--
    @field theDict
        A dictionary to hold the properties. This must be released by the caller. -->
*/
struct ICACopyObjectPropertyDictionaryPB {
  var header: ICAHeader
  var object: ICAObject
  var theDict: UnsafeMutablePointer<Unmanaged<CFDictionary>?>
  init()
  init(header: ICAHeader, object: ICAObject, theDict: UnsafeMutablePointer<Unmanaged<CFDictionary>?>)
}
var kICAThumbnailFormatJPEG: Int { get }
var kICAThumbnailFormatTIFF: Int { get }
var kICAThumbnailFormatPNG: Int { get }

/*!
    @struct ICACopyObjectThumbnailPB
    @field header
        See description for ICAHeader. <->
    @field object
        An object whose thumbail is being requested. <--
    @field thumbnailFormat
        One of the format values defined above. <--
    @field thumbnailData
        A pointer to a CFDataRef holding the thumbnail data. The returned CFDataRef must be released by the caller. -->
*/
struct ICACopyObjectThumbnailPB {
  var header: ICAHeader
  var object: ICAObject
  var thumbnailFormat: OSType
  var thumbnailData: UnsafeMutablePointer<Unmanaged<CFData>?>
  init()
  init(header: ICAHeader, object: ICAObject, thumbnailFormat: OSType, thumbnailData: UnsafeMutablePointer<Unmanaged<CFData>?>)
}

/*!
    @struct ICACopyObjectDataPB
    @field header
        See description for ICAHeader.  <->
    @field object
        A file object.  <--
    @field startByte
        Starting byte offset of the data in the file object.  <--
    @field requestedSize
        Requested data size in bytes. <--
    @field data
        A pointer to CFDataRef in which the data will be returned. -->
        It is the responsibility fo the caller to release this object. 
*/
struct ICACopyObjectDataPB {
  var header: ICAHeader
  var object: ICAObject
  var startByte: Int
  var requestedSize: Int
  var data: UnsafeMutablePointer<Unmanaged<CFData>?>
  init()
  init(header: ICAHeader, object: ICAObject, startByte: Int, requestedSize: Int, data: UnsafeMutablePointer<Unmanaged<CFData>?>)
}

/*!
    @struct ICAMessage
    @field messageType
        A message type. e.g., kICAMessageCameraCaptureNewImage. <--
    @field startByte
        Offset in dataPtr from where data access for read/write should occur. <--
    @field dataPtr
        A pointer to a data buffer. <--
    @field dataSize
        Size of data. <--
    @field dataType
        Type of data. <--
*/
struct ICAMessage {
  var messageType: OSType
  var startByte: UInt32
  var dataPtr: UnsafeMutablePointer<Void>
  var dataSize: UInt32
  var dataType: OSType
  init()
  init(messageType: OSType, startByte: UInt32, dataPtr: UnsafeMutablePointer<Void>, dataSize: UInt32, dataType: OSType)
}
var kICAMessageConnect: Int { get }
var kICAMessageDisconnect: Int { get }
var kICAMessageReset: Int { get }
var kICAMessageCheckDevice: Int { get }
var kICAMessageCameraReadClock: Int { get }
var kICAMessageGetLastButtonPressed: Int { get }
var kICAMessageGetEventData: Int { get }
var kICAMessageDeviceYield: Int { get }
var kICAMessageCameraPassThrough: Int { get }
var kICAMessageScannerOverviewSelectionChanged: Int { get }

/*!
    @struct ICAObjectSendMessagePB
    @field header
        See description for ICAHeader. <-->
    @field object
        A target object for the message sent by ICAObjectSendMessage. <--
    @field message
        One of the messages define above. <--
    @field result
        A message specific result is returned here. -->
*/
struct ICAObjectSendMessagePB {
  var header: ICAHeader
  var object: ICAObject
  var message: ICAMessage
  var result: UInt32
  init()
  init(header: ICAHeader, object: ICAObject, message: ICAMessage, result: UInt32)
}
var kDeleteAfterDownload: Int { get }
var kCreateCustomIcon: Int { get }
var kAddMetaDataToFinderComment: Int { get }
var kAdjustCreationDate: Int { get }
var kSetFileTypeAndCreator: Int { get }
var kRotateImage: Int { get }
var kDontEmbedColorSyncProfile: Int { get }

/*!
    @struct ICADownloadFilePB
    @field header
        See description for ICAHeader. <->
    @field object
        The file object. <--
    @field dirFSRef
        FSRef of destination directiory. <--
    @field flags 
        Any combination of flag values defined above. <--
    @field fileType
        Four-char code indicating the type of file. <--
    @field fileCreator
        Four-char code indicating with the creator of the file. <--
    @field rotationAngle
        Rotation angle in steps of 90 degress. <--
    @field fileFSRef
        A pointer to FSRef struct to hold the FSRef of downloaded file. Set this to NULL if the FSRef of downloaded file is not of interest. --> 
*/
struct ICADownloadFilePB {
  var header: ICAHeader
  var object: ICAObject
  var dirFSRef: UnsafeMutablePointer<FSRef>
  var flags: UInt32
  var fileType: OSType
  var fileCreator: OSType
  var rotationAngle: Fixed
  var fileFSRef: UnsafeMutablePointer<FSRef>
  init()
  init(header: ICAHeader, object: ICAObject, dirFSRef: UnsafeMutablePointer<FSRef>, flags: UInt32, fileType: OSType, fileCreator: OSType, rotationAngle: Fixed, fileFSRef: UnsafeMutablePointer<FSRef>)
}
var kICAUploadFileAsIs: Int { get }
var kICAUploadFileScaleToFit: Int { get }

/*!
    @struct ICAUploadFilePB
    @field header
        See description for ICAHeader. <->
    @field parentObject <->
        An ICAObject corresponding to a folder on the device. The device will store the uploaded file inside this folder if possible.
    @field fileFSRef <--
        An FSRef for the file to be uploaded to the device.
    @field flags <--
        One of the flags defined above.
*/
struct ICAUploadFilePB {
  var header: ICAHeader
  var parentObject: ICAObject
  var fileFSRef: UnsafeMutablePointer<FSRef>
  var flags: UInt32
  init()
  init(header: ICAHeader, parentObject: ICAObject, fileFSRef: UnsafeMutablePointer<FSRef>, flags: UInt32)
}

/*!
    @struct ICALoadDeviceModulePB
    @field header
        See description for ICAHeader. <->
    @field paramDictionary <--
        A parameter dictionary with sufficient key-value pairs to load a device module. This dictionary itself or the information provided in this dictionary will be sent to the device module.
*/
struct ICALoadDeviceModulePB {
  var header: ICAHeader
  var paramDictionary: Unmanaged<CFDictionary>!
  init()
  init(header: ICAHeader, paramDictionary: Unmanaged<CFDictionary>!)
}

/*!
    @struct ICAUnloadDeviceModulePB
    @field header
        See description for ICAHeader. <->
    @field deviceObject <--
        A device ICAObject.
*/
struct ICAUnloadDeviceModulePB {
  var header: ICAHeader
  var deviceObject: ICAObject
  init()
  init(header: ICAHeader, deviceObject: ICAObject)
}

/*!
    @struct ICAOpenSessionPB
    @field header
        See description for ICAHeader. <->
    @field deviceObject
        A camera object. <--
    @field sessionID
        A session ID of the opened session. -->
*/
struct ICAOpenSessionPB {
  var header: ICAHeader
  var deviceObject: ICAObject
  var sessionID: ICASessionID
  init()
  init(header: ICAHeader, deviceObject: ICAObject, sessionID: ICASessionID)
}

/*!
    @struct ICACloseSessionPB
    @field header
        See description for ICAHeader. <->
    @field sessionID
        A session ID of the session to be closed. <--
*/
struct ICACloseSessionPB {
  var header: ICAHeader
  var sessionID: ICASessionID
  init()
  init(header: ICAHeader, sessionID: ICASessionID)
}

/*!
    @struct ICAScannerOpenSessionPB
    @field header
        See description for ICAHeader. <->
    @field object
        A scanner object. <--
    @field sessionID
        A session ID of the opened session. -->
*/
struct ICAScannerOpenSessionPB {
  var header: ICAHeader
  var object: ICAObject
  var sessionID: ICAScannerSessionID
  init()
  init(header: ICAHeader, object: ICAObject, sessionID: ICAScannerSessionID)
}

/*!
    @struct ICAScannerCloseSessionPB
    @field header
        See description for ICAHeader. <->
    @field sessionID
        A session ID of the session to be closed. <--
*/
struct ICAScannerCloseSessionPB {
  var header: ICAHeader
  var sessionID: ICAScannerSessionID
  init()
  init(header: ICAHeader, sessionID: ICAScannerSessionID)
}

/*!
    @struct ICAScannerInitializePB
    @field header
        See description for ICAHeader. <->
    @field sessionID
        A session ID of the scanner to be initialized. <--
*/
struct ICAScannerInitializePB {
  var header: ICAHeader
  var sessionID: ICAScannerSessionID
  init()
  init(header: ICAHeader, sessionID: ICAScannerSessionID)
}

/*!
    @struct ICAScannerGetParametersPB
    @field header
        See description for ICAHeader. <->
    @field sessionID
        A session ID of the scanner whose parameters are being fetched. <--
    @field theDict
        A dictionary containing the parameters. -->
*/
struct ICAScannerGetParametersPB {
  var header: ICAHeader
  var sessionID: ICAScannerSessionID
  var theDict: Unmanaged<CFMutableDictionary>!
  init()
  init(header: ICAHeader, sessionID: ICAScannerSessionID, theDict: Unmanaged<CFMutableDictionary>!)
}

/*!
    @struct ICAScannerSetParametersPB
    @field header
        See description for ICAHeader. <->
    @field sessionID
        A session ID of the scanner whose parameters are being set. <--
    @field theDict
        A dictionary containing the parameters. <--
*/
struct ICAScannerSetParametersPB {
  var header: ICAHeader
  var sessionID: ICAScannerSessionID
  var theDict: Unmanaged<CFMutableDictionary>!
  init()
  init(header: ICAHeader, sessionID: ICAScannerSessionID, theDict: Unmanaged<CFMutableDictionary>!)
}

/*!
    @struct ICAScannerStatusPB
    @field header
        See description for ICAHeader. <->
    @field sessionID
        A session ID of the scanner whose status is being fetched. <--
    @field status
        A status value. -->
*/
struct ICAScannerStatusPB {
  var header: ICAHeader
  var sessionID: ICAScannerSessionID
  var status: UInt32
  init()
  init(header: ICAHeader, sessionID: ICAScannerSessionID, status: UInt32)
}

/*!
    @struct ICAScannerStartPB
    @field header
        See description for ICAHeader. <->
    @field sessionID
        A session ID of the scanner that should start scanning. <--
*/
struct ICAScannerStartPB {
  var header: ICAHeader
  var sessionID: ICAScannerSessionID
  init()
  init(header: ICAHeader, sessionID: ICAScannerSessionID)
}

/*!
    @struct ICDHeader
    @discussion
        This is the first field in all parameter blocks used by APIs defined in ICADevices.h.
        Type of parameter passed to a callback function used by APIs defined in ICADevices.h.
        The parameter for the completion proc should to be casted to an appropriate type such as ICD_NewObjectPB* for it to be useful.
    @field err
        Error returned by an API. -->
    @field refcon
        An arbitrary refcon value passed to the callback. <--
*/
struct ICDHeader {
  var err: ICAError
  var refcon: UInt
  init()
  init(err: ICAError, refcon: UInt)
}

/*!
    @typedef ICDCompletion
    @discussion
        Type of callback function used by APIs defined in ICADevices.h.
    @param pb
        The parameter pb is a pointer to the parameter block passed to the API.
*/
typealias ICDCompletion = @convention(c) (UnsafeMutablePointer<ICDHeader>) -> Void

/*!
    @struct ICD_NewObjectPB
    @discussion
        Parameter block passed to function <code>ICDNewObject</code>.
    @field header
        The function returns error code in the <code>err</code> field of this structure. 
        The <code>refcon</code> field of this structure is used to pass a pointer to the callback function if <code>ICDNewObject</code> is called asynchronously.
    @field  parentObject
        Parent object of the new object.
    @field  objectInfo
        <code>ICAObjectInfo</code> struct filled with information about the new object.
    @field  object
        New object.
*/
struct ICD_NewObjectPB {
  var header: ICDHeader
  var parentObject: ICAObject
  var objectInfo: ICAObjectInfo
  var object: ICAObject
  init()
  init(header: ICDHeader, parentObject: ICAObject, objectInfo: ICAObjectInfo, object: ICAObject)
}

/*!
    @struct ICD_DisposeObjectPB
    @discussion
        Parameter block passed to function <code>ICDDisposeObject</code>.
    @field header
        The function returns error code in the <code>err</code> field of this structure. 
        The <code>refcon</code> field of this structure is used to pass a pointer to the callback function if <code>ICDDisposeObject</code> is called asynchronously.
    @field object
        Object to be disposed.
*/
struct ICD_DisposeObjectPB {
  var header: ICDHeader
  var object: ICAObject
  init()
  init(header: ICDHeader, object: ICAObject)
}
var kICD_FileData: Int { get }
var kICD_MetaData: Int { get }
var kICD_ThumbnailData: Int { get }
var kICD_ThumbnailDataFormatJPEG: Int { get }
var kICD_ThumbnailDataFormatTIFF: Int { get }
var kICD_ThumbnailDataFormatPNG: Int { get }
var hasChildrenMask: Int { get }
var hasThumbnailMask: Int { get }
var fileLockedMask: Int { get }
var rawImageFormatMask: Int { get }
var fileInTempCacheMask: Int { get }
var largeFileSizeMask: Int { get }
var addedAfterCCCMask: Int { get }
struct ObjectInfo {
  var icaObject: ICAObject
  var reserved: UInt
  var icaObjectInfo: ICAObjectInfo
  var uniqueID: UInt32
  var thumbnailSize: UInt32
  var dataSize: UInt32
  var dataWidth: UInt32
  var dataHeight: UInt32
  var name: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  var creationDate: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  var flags: UInt32
  var privateData: Ptr
  var uniqueIDFireWire: UInt64
  var tag: UInt32
  var dataSize64: UInt64
  init()
  init(icaObject: ICAObject, reserved: UInt, icaObjectInfo: ICAObjectInfo, uniqueID: UInt32, thumbnailSize: UInt32, dataSize: UInt32, dataWidth: UInt32, dataHeight: UInt32, name: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), creationDate: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), flags: UInt32, privateData: Ptr, uniqueIDFireWire: UInt64, tag: UInt32, dataSize64: UInt64)
}
struct ICD_ObjectSendMessagePB {
  var header: ICDHeader
  var object: ICAObject
  var objectInfo: ICAObjectInfo
  var connectionID: ICAConnectionID
  var message: ICAMessage
  var totalDataSize: UInt32
  var result: UInt32
  init()
  init(header: ICDHeader, object: ICAObject, objectInfo: ICAObjectInfo, connectionID: ICAConnectionID, message: ICAMessage, totalDataSize: UInt32, result: UInt32)
}
typealias __ICD_OpenUSBDevice = @convention(c) (UInt32, UnsafeMutablePointer<ObjectInfo>) -> ICAError
typealias __ICD_OpenUSBDeviceWithIORegPath = @convention(c) (UInt32, UnsafeMutablePointer<Int8>, UnsafeMutablePointer<ObjectInfo>) -> ICAError
typealias __ICD_OpenFireWireDevice = @convention(c) (UInt64, UnsafeMutablePointer<ObjectInfo>) -> ICAError
typealias __ICD_OpenFireWireDeviceWithIORegPath = @convention(c) (UInt64, UnsafeMutablePointer<Int8>, UnsafeMutablePointer<ObjectInfo>) -> ICAError
typealias __ICD_OpenBluetoothDevice = @convention(c) (CFDictionary!, UnsafeMutablePointer<ObjectInfo>) -> ICAError
typealias __ICD_OpenTCPIPDevice = @convention(c) (CFDictionary!, UnsafeMutablePointer<ObjectInfo>) -> ICAError
typealias __ICD_OpenMassStorageDevice = @convention(c) (CFString!, DASession!, UnsafeMutablePointer<ObjectInfo>) -> ICAError
typealias __ICD_CloseDevice = @convention(c) (UnsafeMutablePointer<ObjectInfo>) -> ICAError
typealias __ICD_PeriodicTask = @convention(c) (UnsafeMutablePointer<ObjectInfo>) -> ICAError
typealias __ICD_GetObjectInfo = @convention(c) (UnsafePointer<ObjectInfo>, UInt32, UnsafeMutablePointer<ObjectInfo>) -> ICAError
typealias __ICD_Cleanup = @convention(c) (UnsafeMutablePointer<ObjectInfo>) -> ICAError
typealias __ICD_GetPropertyData = @convention(c) (UnsafePointer<ObjectInfo>, UnsafeMutablePointer<Void>) -> ICAError
typealias __ICD_SetPropertyData = @convention(c) (UnsafePointer<ObjectInfo>, UnsafePointer<Void>) -> ICAError
typealias __ICD_ReadFileData = @convention(c) (UnsafePointer<ObjectInfo>, UInt32, Ptr, UInt32, UnsafeMutablePointer<UInt32>) -> ICAError
typealias __ICD_WriteFileData = @convention(c) (UnsafePointer<ObjectInfo>, UnsafePointer<Int8>, UInt32, Ptr, UInt32, UnsafeMutablePointer<UInt32>) -> ICAError
typealias __ICD_SendMessage = @convention(c) (UnsafePointer<ObjectInfo>, UnsafeMutablePointer<ICD_ObjectSendMessagePB>, ICDCompletion!) -> ICAError
typealias __ICD_AddPropertiesToCFDictionary = @convention(c) (UnsafeMutablePointer<ObjectInfo>, CFMutableDictionary!) -> ICAError
typealias __ICD_WriteDataToFile = @convention(c) (UnsafePointer<ObjectInfo>, UnsafeMutablePointer<FILE>, UInt32, UnsafeMutablePointer<Int>) -> ICAError
typealias __ICD_WriteDataToFileDescriptor = @convention(c) (UnsafePointer<ObjectInfo>, Int32, UInt32, UnsafeMutablePointer<Int>) -> ICAError
typealias __ICD_WriteDataToFileDescriptor64 = @convention(c) (UnsafePointer<ObjectInfo>, Int32) -> ICAError
func ICD_main(argc: Int32, _ argv: UnsafeMutablePointer<UnsafePointer<Int8>>) -> Int32
func ICDGetStandardPropertyData(objectInfo: UnsafePointer<ObjectInfo>, _ pb: UnsafeMutablePointer<Void>) -> ICAError
func ICDNewObjectInfoCreated(parentInfo: UnsafePointer<ObjectInfo>, _ index: UInt32, _ newICAObject: UnsafeMutablePointer<ICAObject>) -> ICAError
typealias ICDNewObjectCreatedCompletion = @convention(c) (UnsafePointer<ObjectInfo>) -> Void
func ICDNewObjectCreated(parentInfo: UnsafePointer<ObjectInfo>, _ objectInfo: UnsafePointer<ObjectInfo>, _ completion: ICDNewObjectCreatedCompletion!) -> ICAError
func ICDCopyDeviceInfoDictionary(deviceName: UnsafePointer<Int8>, _ theDict: UnsafeMutablePointer<Unmanaged<CFDictionary>?>) -> ICAError
func ICDCreateEventDataCookie(object: ICAObject, _ cookie: UnsafeMutablePointer<ICAEventDataCookie>) -> ICAError
func ICDConnectUSBDevice(locationID: UInt32) -> ICAError
func ICDConnectUSBDeviceWithIORegPath(locationID: UInt32, _ ioregPath: UnsafeMutablePointer<Int8>) -> ICAError
func ICDDisconnectUSBDevice(locationID: UInt32) -> ICAError
func ICDDisconnectUSBDeviceWithIORegPath(locationID: UInt32, _ ioregPath: UnsafeMutablePointer<Int8>) -> ICAError
func ICDConnectFWDevice(guid: UInt64) -> ICAError
func ICDConnectFWDeviceWithIORegPath(guid: UInt64, _ ioregPath: UnsafeMutablePointer<Int8>) -> ICAError
func ICDDisconnectFWDevice(guid: UInt64) -> ICAError
func ICDDisconnectFWDeviceWithIORegPath(guid: UInt64, _ ioregPath: UnsafeMutablePointer<Int8>) -> ICAError
func ICDConnectBluetoothDevice(params: CFDictionary!) -> ICAError
func ICDDisconnectBluetoothDevice(params: CFDictionary!) -> ICAError
func ICDConnectTCPIPDevice(params: CFDictionary!) -> ICAError
func ICDDisconnectTCPIPDevice(params: CFDictionary!) -> ICAError
struct ICD_callback_functions {
  var f_ICD_OpenUSBDevice: __ICD_OpenUSBDevice!
  var f_ICD_CloseDevice: __ICD_CloseDevice!
  var f_ICD_PeriodicTask: __ICD_PeriodicTask!
  var f_ICD_GetObjectInfo: __ICD_GetObjectInfo!
  var f_ICD_Cleanup: __ICD_Cleanup!
  var f_ICD_GetPropertyData: __ICD_GetPropertyData!
  var f_ICD_SetPropertyData: __ICD_SetPropertyData!
  var f_ICD_ReadFileData: __ICD_ReadFileData!
  var f_ICD_WriteFileData: __ICD_WriteFileData!
  var f_ICD_SendMessage: __ICD_SendMessage!
  var f_ICD_AddPropertiesToCFDictionary: __ICD_AddPropertiesToCFDictionary!
  var f_ICD_OpenFireWireDevice: __ICD_OpenFireWireDevice!
  var f_ICD_OpenUSBDeviceWithIORegPath: __ICD_OpenUSBDeviceWithIORegPath!
  var f_ICD_OpenFireWireDeviceWithIORegPath: __ICD_OpenFireWireDeviceWithIORegPath!
  var f_ICD_OpenBluetoothDevice: __ICD_OpenBluetoothDevice!
  var f_ICD_OpenTCPIPDevice: __ICD_OpenTCPIPDevice!
  var f_ICD_WriteDataToFile: __ICD_WriteDataToFile!
  var f_ICD_OpenMassStorageDevice: __ICD_OpenMassStorageDevice!
  var f_ICD_WriteDataToFileDescriptor: __ICD_WriteDataToFileDescriptor!
  var f_ICD_WriteDataToFileDescriptor64: __ICD_WriteDataToFileDescriptor64!
  init()
  init(f_ICD_OpenUSBDevice: __ICD_OpenUSBDevice!, f_ICD_CloseDevice: __ICD_CloseDevice!, f_ICD_PeriodicTask: __ICD_PeriodicTask!, f_ICD_GetObjectInfo: __ICD_GetObjectInfo!, f_ICD_Cleanup: __ICD_Cleanup!, f_ICD_GetPropertyData: __ICD_GetPropertyData!, f_ICD_SetPropertyData: __ICD_SetPropertyData!, f_ICD_ReadFileData: __ICD_ReadFileData!, f_ICD_WriteFileData: __ICD_WriteFileData!, f_ICD_SendMessage: __ICD_SendMessage!, f_ICD_AddPropertiesToCFDictionary: __ICD_AddPropertiesToCFDictionary!, f_ICD_OpenFireWireDevice: __ICD_OpenFireWireDevice!, f_ICD_OpenUSBDeviceWithIORegPath: __ICD_OpenUSBDeviceWithIORegPath!, f_ICD_OpenFireWireDeviceWithIORegPath: __ICD_OpenFireWireDeviceWithIORegPath!, f_ICD_OpenBluetoothDevice: __ICD_OpenBluetoothDevice!, f_ICD_OpenTCPIPDevice: __ICD_OpenTCPIPDevice!, f_ICD_WriteDataToFile: __ICD_WriteDataToFile!, f_ICD_OpenMassStorageDevice: __ICD_OpenMassStorageDevice!, f_ICD_WriteDataToFileDescriptor: __ICD_WriteDataToFileDescriptor!, f_ICD_WriteDataToFileDescriptor64: __ICD_WriteDataToFileDescriptor64!)
}
var gICDCallbackFunctions: ICD_callback_functions
var kICS_FileData: Int { get }
var kICS_MetaData: Int { get }
var kICS_ThumbnailData: Int { get }
var kICS_ThumbnailDataFormatJPEG: Int { get }
var kICS_ThumbnailDataFormatTIFF: Int { get }
var kICS_ThumbnailDataFormatPNG: Int { get }
struct ScannerObjectInfo {
  var icaObject: ICAObject
  var reserved: UInt
  var icaObjectInfo: ICAObjectInfo
  var uniqueID: UInt32
  var uniqueIDFireWire: UInt64
  var thumbnailSize: UInt32
  var dataSize: UInt32
  var dataWidth: UInt32
  var dataHeight: UInt32
  var name: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  var creationDate: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  var flags: UInt32
  var privateData: Ptr
  var tag: UInt32
  init()
  init(icaObject: ICAObject, reserved: UInt, icaObjectInfo: ICAObjectInfo, uniqueID: UInt32, uniqueIDFireWire: UInt64, thumbnailSize: UInt32, dataSize: UInt32, dataWidth: UInt32, dataHeight: UInt32, name: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), creationDate: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), flags: UInt32, privateData: Ptr, tag: UInt32)
}
struct ICD_ScannerObjectSendMessagePB {
  var header: ICDHeader
  var object: ICAObject
  var objectInfo: ICAObjectInfo
  var connectionID: ICAConnectionID
  var message: ICAMessage
  var totalDataSize: UInt32
  var result: UInt32
  init()
  init(header: ICDHeader, object: ICAObject, objectInfo: ICAObjectInfo, connectionID: ICAConnectionID, message: ICAMessage, totalDataSize: UInt32, result: UInt32)
}
struct ICD_ScannerOpenSessionPB {
  var header: ICDHeader
  var object: ICAObject
  var objectInfo: ICAObjectInfo
  var connectionID: ICAConnectionID
  var sessionID: ICAScannerSessionID
  init()
  init(header: ICDHeader, object: ICAObject, objectInfo: ICAObjectInfo, connectionID: ICAConnectionID, sessionID: ICAScannerSessionID)
}
struct ICD_ScannerCloseSessionPB {
  var header: ICDHeader
  var object: ICAObject
  var objectInfo: ICAObjectInfo
  var connectionID: ICAConnectionID
  var sessionID: ICAScannerSessionID
  init()
  init(header: ICDHeader, object: ICAObject, objectInfo: ICAObjectInfo, connectionID: ICAConnectionID, sessionID: ICAScannerSessionID)
}
struct ICD_ScannerInitializePB {
  var header: ICDHeader
  var object: ICAObject
  var objectInfo: ICAObjectInfo
  var connectionID: ICAConnectionID
  var sessionID: ICAScannerSessionID
  init()
  init(header: ICDHeader, object: ICAObject, objectInfo: ICAObjectInfo, connectionID: ICAConnectionID, sessionID: ICAScannerSessionID)
}
struct ICD_ScannerGetParametersPB {
  var header: ICDHeader
  var object: ICAObject
  var objectInfo: ICAObjectInfo
  var connectionID: ICAConnectionID
  var sessionID: ICAScannerSessionID
  var theDict: Unmanaged<CFMutableDictionary>!
  init()
  init(header: ICDHeader, object: ICAObject, objectInfo: ICAObjectInfo, connectionID: ICAConnectionID, sessionID: ICAScannerSessionID, theDict: Unmanaged<CFMutableDictionary>!)
}
struct ICD_ScannerSetParametersPB {
  var header: ICDHeader
  var object: ICAObject
  var objectInfo: ICAObjectInfo
  var connectionID: ICAConnectionID
  var sessionID: ICAScannerSessionID
  var theDict: Unmanaged<CFMutableDictionary>!
  init()
  init(header: ICDHeader, object: ICAObject, objectInfo: ICAObjectInfo, connectionID: ICAConnectionID, sessionID: ICAScannerSessionID, theDict: Unmanaged<CFMutableDictionary>!)
}
struct ICD_ScannerStatusPB {
  var header: ICDHeader
  var object: ICAObject
  var objectInfo: ICAObjectInfo
  var connectionID: ICAConnectionID
  var sessionID: ICAScannerSessionID
  var status: UInt32
  init()
  init(header: ICDHeader, object: ICAObject, objectInfo: ICAObjectInfo, connectionID: ICAConnectionID, sessionID: ICAScannerSessionID, status: UInt32)
}
struct ICD_ScannerStartPB {
  var header: ICDHeader
  var object: ICAObject
  var objectInfo: ICAObjectInfo
  var connectionID: ICAConnectionID
  var sessionID: ICAScannerSessionID
  init()
  init(header: ICDHeader, object: ICAObject, objectInfo: ICAObjectInfo, connectionID: ICAConnectionID, sessionID: ICAScannerSessionID)
}
typealias __ICD_ScannerOpenUSBDevice = @convention(c) (UInt32, UnsafeMutablePointer<ScannerObjectInfo>) -> ICAError
typealias __ICD_ScannerOpenUSBDeviceWithIORegPath = @convention(c) (UInt32, UnsafeMutablePointer<Int8>, UnsafeMutablePointer<ScannerObjectInfo>) -> ICAError
typealias __ICD_ScannerOpenFireWireDevice = @convention(c) (UInt64, UnsafeMutablePointer<ScannerObjectInfo>) -> ICAError
typealias __ICD_ScannerOpenFireWireDeviceWithIORegPath = @convention(c) (UInt64, UnsafeMutablePointer<Int8>, UnsafeMutablePointer<ScannerObjectInfo>) -> ICAError
typealias __ICD_ScannerOpenBluetoothDevice = @convention(c) (CFDictionary!, UnsafeMutablePointer<ScannerObjectInfo>) -> ICAError
typealias __ICD_ScannerOpenTCPIPDevice = @convention(c) (CFDictionary!, UnsafeMutablePointer<ScannerObjectInfo>) -> ICAError
typealias __ICD_ScannerOpenMassStorageDevice = @convention(c) (CFString!, DASession!, UnsafeMutablePointer<ScannerObjectInfo>) -> ICAError
typealias __ICD_ScannerCloseDevice = @convention(c) (UnsafeMutablePointer<ScannerObjectInfo>) -> ICAError
typealias __ICD_ScannerPeriodicTask = @convention(c) (UnsafeMutablePointer<ScannerObjectInfo>) -> ICAError
typealias __ICD_ScannerGetObjectInfo = @convention(c) (UnsafePointer<ScannerObjectInfo>, UInt32, UnsafeMutablePointer<ScannerObjectInfo>) -> ICAError
typealias __ICD_ScannerCleanup = @convention(c) (UnsafeMutablePointer<ScannerObjectInfo>) -> ICAError
typealias __ICD_ScannerGetPropertyData = @convention(c) (UnsafePointer<ScannerObjectInfo>, UnsafeMutablePointer<Void>) -> ICAError
typealias __ICD_ScannerSetPropertyData = @convention(c) (UnsafePointer<ScannerObjectInfo>, UnsafePointer<Void>) -> ICAError
typealias __ICD_ScannerReadFileData = @convention(c) (UnsafePointer<ScannerObjectInfo>, UInt32, Ptr, UInt32, UnsafeMutablePointer<UInt32>) -> ICAError
typealias __ICD_ScannerWriteFileData = @convention(c) (UnsafePointer<ScannerObjectInfo>, UnsafePointer<Int8>, UInt32, Ptr, UInt32, UnsafeMutablePointer<UInt32>) -> ICAError
typealias __ICD_ScannerSendMessage = @convention(c) (UnsafePointer<ScannerObjectInfo>, UnsafeMutablePointer<ICD_ScannerObjectSendMessagePB>, ICDCompletion!) -> ICAError
typealias __ICD_ScannerAddPropertiesToCFDictionary = @convention(c) (UnsafeMutablePointer<ScannerObjectInfo>, CFMutableDictionary!) -> ICAError
typealias __ICD_ScannerOpenSession = @convention(c) (UnsafePointer<ScannerObjectInfo>, UnsafeMutablePointer<ICD_ScannerOpenSessionPB>) -> ICAError
typealias __ICD_ScannerCloseSession = @convention(c) (UnsafePointer<ScannerObjectInfo>, UnsafeMutablePointer<ICD_ScannerCloseSessionPB>) -> ICAError
typealias __ICD_ScannerInitialize = @convention(c) (UnsafePointer<ScannerObjectInfo>, UnsafeMutablePointer<ICD_ScannerInitializePB>) -> ICAError
typealias __ICD_ScannerGetParameters = @convention(c) (UnsafePointer<ScannerObjectInfo>, UnsafeMutablePointer<ICD_ScannerGetParametersPB>) -> ICAError
typealias __ICD_ScannerSetParameters = @convention(c) (UnsafePointer<ScannerObjectInfo>, UnsafeMutablePointer<ICD_ScannerSetParametersPB>) -> ICAError
typealias __ICD_ScannerStatus = @convention(c) (UnsafePointer<ScannerObjectInfo>, UnsafeMutablePointer<ICD_ScannerStatusPB>) -> ICAError
typealias __ICD_ScannerStart = @convention(c) (UnsafePointer<ScannerObjectInfo>, UnsafeMutablePointer<ICD_ScannerStartPB>) -> ICAError
typealias __ICD_ScannerWriteDataToFile = @convention(c) (UnsafePointer<ScannerObjectInfo>, UnsafeMutablePointer<FILE>, UInt32, UnsafeMutablePointer<Int>) -> ICAError
typealias __ICD_ScannerWriteDataToFileDescriptor = @convention(c) (UnsafePointer<ScannerObjectInfo>, Int32, UInt32, UnsafeMutablePointer<Int>) -> ICAError
typealias __ICD_ScannerWriteDataToFileDescriptor64 = @convention(c) (UnsafePointer<ScannerObjectInfo>, Int32) -> ICAError
struct ICD_Scannerscanner_callback_functions {
  var f_ICD_ScannerOpenUSBDevice: __ICD_ScannerOpenUSBDevice!
  var f_ICD_ScannerOpenUSBDeviceWithIORegPath: __ICD_ScannerOpenUSBDeviceWithIORegPath!
  var f_ICD_ScannerCloseDevice: __ICD_ScannerCloseDevice!
  var f_ICD_ScannerPeriodicTask: __ICD_ScannerPeriodicTask!
  var f_ICD_ScannerGetObjectInfo: __ICD_ScannerGetObjectInfo!
  var f_ICD_ScannerCleanup: __ICD_ScannerCleanup!
  var f_ICD_ScannerGetPropertyData: __ICD_ScannerGetPropertyData!
  var f_ICD_ScannerSetPropertyData: __ICD_ScannerSetPropertyData!
  var f_ICD_ScannerReadFileData: __ICD_ScannerReadFileData!
  var f_ICD_ScannerWriteFileData: __ICD_ScannerWriteFileData!
  var f_ICD_ScannerSendMessage: __ICD_ScannerSendMessage!
  var f_ICD_ScannerAddPropertiesToCFDictionary: __ICD_ScannerAddPropertiesToCFDictionary!
  var f_ICD_ScannerOpenFireWireDevice: __ICD_ScannerOpenFireWireDevice!
  var f_ICD_ScannerOpenFireWireDeviceWithIORegPath: __ICD_ScannerOpenFireWireDeviceWithIORegPath!
  var f_ICD_ScannerOpenSession: __ICD_ScannerOpenSession!
  var f_ICD_ScannerCloseSession: __ICD_ScannerCloseSession!
  var f_ICD_ScannerInitialize: __ICD_ScannerInitialize!
  var f_ICD_ScannerGetParameters: __ICD_ScannerGetParameters!
  var f_ICD_ScannerSetParameters: __ICD_ScannerSetParameters!
  var f_ICD_ScannerStatus: __ICD_ScannerStatus!
  var f_ICD_ScannerStart: __ICD_ScannerStart!
  var f_ICD_ScannerOpenBluetoothDevice: __ICD_ScannerOpenBluetoothDevice!
  var f_ICD_ScannerOpenTCPIPDevice: __ICD_ScannerOpenTCPIPDevice!
  var f_ICD_ScannerWriteDataToFile: __ICD_ScannerWriteDataToFile!
  var f_ICD_ScannerOpenMassStorageDevice: __ICD_ScannerOpenMassStorageDevice!
  var f_ICD_ScannerWriteDataToFileDescriptor: __ICD_ScannerWriteDataToFileDescriptor!
  var f_ICD_ScannerWriteDataToFileDescriptor64: __ICD_ScannerWriteDataToFileDescriptor64!
  init()
  init(f_ICD_ScannerOpenUSBDevice: __ICD_ScannerOpenUSBDevice!, f_ICD_ScannerOpenUSBDeviceWithIORegPath: __ICD_ScannerOpenUSBDeviceWithIORegPath!, f_ICD_ScannerCloseDevice: __ICD_ScannerCloseDevice!, f_ICD_ScannerPeriodicTask: __ICD_ScannerPeriodicTask!, f_ICD_ScannerGetObjectInfo: __ICD_ScannerGetObjectInfo!, f_ICD_ScannerCleanup: __ICD_ScannerCleanup!, f_ICD_ScannerGetPropertyData: __ICD_ScannerGetPropertyData!, f_ICD_ScannerSetPropertyData: __ICD_ScannerSetPropertyData!, f_ICD_ScannerReadFileData: __ICD_ScannerReadFileData!, f_ICD_ScannerWriteFileData: __ICD_ScannerWriteFileData!, f_ICD_ScannerSendMessage: __ICD_ScannerSendMessage!, f_ICD_ScannerAddPropertiesToCFDictionary: __ICD_ScannerAddPropertiesToCFDictionary!, f_ICD_ScannerOpenFireWireDevice: __ICD_ScannerOpenFireWireDevice!, f_ICD_ScannerOpenFireWireDeviceWithIORegPath: __ICD_ScannerOpenFireWireDeviceWithIORegPath!, f_ICD_ScannerOpenSession: __ICD_ScannerOpenSession!, f_ICD_ScannerCloseSession: __ICD_ScannerCloseSession!, f_ICD_ScannerInitialize: __ICD_ScannerInitialize!, f_ICD_ScannerGetParameters: __ICD_ScannerGetParameters!, f_ICD_ScannerSetParameters: __ICD_ScannerSetParameters!, f_ICD_ScannerStatus: __ICD_ScannerStatus!, f_ICD_ScannerStart: __ICD_ScannerStart!, f_ICD_ScannerOpenBluetoothDevice: __ICD_ScannerOpenBluetoothDevice!, f_ICD_ScannerOpenTCPIPDevice: __ICD_ScannerOpenTCPIPDevice!, f_ICD_ScannerWriteDataToFile: __ICD_ScannerWriteDataToFile!, f_ICD_ScannerOpenMassStorageDevice: __ICD_ScannerOpenMassStorageDevice!, f_ICD_ScannerWriteDataToFileDescriptor: __ICD_ScannerWriteDataToFileDescriptor!, f_ICD_ScannerWriteDataToFileDescriptor64: __ICD_ScannerWriteDataToFileDescriptor64!)
}
typealias ICD_scanner_callback_functions = ICD_Scannerscanner_callback_functions
var gICDScannerCallbackFunctions: ICD_scanner_callback_functions
func ICD_ScannerMain(argc: Int32, _ argv: UnsafeMutablePointer<UnsafePointer<Int8>>) -> Int32
func ICDScannerGetStandardPropertyData(objectInfo: UnsafePointer<ScannerObjectInfo>, _ pb: UnsafeMutablePointer<Void>) -> ICAError
func ICDScannerNewObjectInfoCreated(parentInfo: UnsafePointer<ScannerObjectInfo>, _ index: UInt32, _ newICAObject: UnsafeMutablePointer<ICAObject>) -> ICAError
func ICDScannerCopyDeviceInfoDictionary(deviceName: UnsafePointer<Int8>, _ theDict: UnsafeMutablePointer<Unmanaged<CFDictionary>?>) -> ICAError
func ICDScannerCreateEventDataCookie(object: ICAObject, _ cookie: UnsafeMutablePointer<ICAEventDataCookie>) -> ICAError
func ICDScannerConnectUSBDevice(locationID: UInt32) -> ICAError
func ICDScannerConnectUSBDeviceWithIORegPath(locationID: UInt32, _ ioregPath: UnsafeMutablePointer<Int8>) -> ICAError
func ICDScannerDisconnectUSBDevice(locationID: UInt32) -> ICAError
func ICDScannerDisconnectUSBDeviceWithIORegPath(locationID: UInt32, _ ioregPath: UnsafeMutablePointer<Int8>) -> ICAError
func ICDScannerConnectFWDevice(guid: UInt64) -> ICAError
func ICDScannerConnectFWDeviceWithIORegPath(guid: UInt64, _ ioregPath: UnsafeMutablePointer<Int8>) -> ICAError
func ICDScannerDisconnectFWDevice(guid: UInt64) -> ICAError
func ICDScannerDisconnectFWDeviceWithIORegPath(guid: UInt64, _ ioregPath: UnsafeMutablePointer<Int8>) -> ICAError
func ICDScannerConnectBluetoothDevice(params: CFDictionary!) -> ICAError
func ICDScannerDisconnectBluetoothDevice(params: CFDictionary!) -> ICAError
func ICDScannerConnectTCPIPDevice(params: CFDictionary!) -> ICAError
func ICDScannerDisconnectTCPIPDevice(params: CFDictionary!) -> ICAError
