

/*!
    @const      ICCameraDeviceCanTakePicture
    @abstract   ICCameraDeviceCanTakePicture
    @discussion Indicates that the camera can capture a picture while it is connected, if the client sends a 'requestTakePicture' message to it.
*/
let ICCameraDeviceCanTakePicture: String

/*!
    @const      ICCameraDeviceCanTakePictureUsingShutterReleaseOnCamera
    @abstract   ICCameraDeviceCanTakePictureUsingShutterReleaseOnCamera
    @discussion Indicates that the camera can capture a picture while it is connected, if the user presses the shutter release on the camera.
*/
let ICCameraDeviceCanTakePictureUsingShutterReleaseOnCamera: String

/*!
    @const      ICCameraDeviceCanDeleteOneFile
    @abstract   ICCameraDeviceCanDeleteOneFile
    @discussion Indicates that the camera can delete a file at a time while it is connected.
*/
let ICCameraDeviceCanDeleteOneFile: String

/*!
    @const      ICCameraDeviceCanDeleteAllFiles
    @abstract   ICCameraDeviceCanDeleteAllFiles
    @discussion Indicates that the camera can delete all files in a single operation while it is connected. 
*/
let ICCameraDeviceCanDeleteAllFiles: String

/*!
    @const      ICCameraDeviceCanSyncClock
    @abstract   ICCameraDeviceCanSyncClock
    @discussion Indicates that the camera can synchronize its date and time with that of the host computer.
*/
let ICCameraDeviceCanSyncClock: String

/*!
    @const      ICCameraDeviceCanReceiveFile
    @abstract   ICCameraDeviceCanReceiveFile
    @discussion Indicates that the host can upload files to the camera.
*/
let ICCameraDeviceCanReceiveFile: String

/*!
    @const      ICCameraDeviceCanAcceptPTPCommands
    @abstract   ICCameraDeviceCanAcceptPTPCommands
    @discussion Indicates that the camera can accept PTP commands.
*/
let ICCameraDeviceCanAcceptPTPCommands: String

/*!
 @const      ICCameraDeviceSupportsFastPTP
 @abstract   ICCameraDeviceSupportsFastPTP
 @discussion Indicates that the camera supports fast PTP commands.
 */
let ICCameraDeviceSupportsFastPTP: String

/*!
    @const      ICDownloadsDirectoryURL
    @abstract   ICDownloadsDirectoryURL
    @discussion The value for this key should be an NSURL object referencing a writable directory. The downloaded files will be saved in that directory.
*/
let ICDownloadsDirectoryURL: String

/*!
    @const      ICSaveAsFilename
    @abstract   ICSaveAsFilename
    @discussion The value for this key should be an NSString object containing the name to be used for the downloaded file.
*/
let ICSaveAsFilename: String

/*!
    @const      ICSavedFilename
    @abstract   ICSavedFilename
    @discussion The value for this key will be an NSString object containing the actual name of the saved file. The options dictionary returned in didDownloadFile:error:options:contextInfo: will have this key. 
*/
let ICSavedFilename: String

/*!
    @const      ICSavedAncillaryFiles
    @abstract   ICSavedAncillaryFiles
    @discussion The value for this key will be an NSArray object containing names of files associated with the primary file that is downloaded. The options dictionary returned in didDownloadFile:error:options:contextInfo: may have this key.
*/
let ICSavedAncillaryFiles: String

/*!
    @const      ICOverwrite
    @abstract   ICOverwrite
    @discussion The value for this key should be an NSNumber object representing a boolean value. If this value is YES, the downloaded file will overwrite an existing file with the same name and extension.
*/
let ICOverwrite: String

/*!
    @const      ICDeleteAfterSuccessfulDownload
    @abstract   ICDeleteAfterSuccessfulDownload
    @discussion The value for this key should be an NSNumber object representing a boolean value. If this value is YES, the file will be deleted from the device after it is succcessfully downloaded.
*/
let ICDeleteAfterSuccessfulDownload: String

/*!
    @const      ICDownloadSidecarFiles
    @abstract   ICDownloadSidecarFiles
    @discussion The value for this key should be an NSNumber object representing a boolean value. If this value is YES, all sidecar files will be downloaded along with the media file.
*/
let ICDownloadSidecarFiles: String

/*! 
  @protocol ICCameraDeviceDelegate  <ICDeviceDelegate>
  @abstract A delegate of ICCameraDevice must conform to ICCameraDeviceDelegate protocol.
  @discussion The ICCameraDeviceDelegate protocol inherits from the ICDeviceDelegate protocol.
*/
protocol ICCameraDeviceDelegate : ICDeviceDelegate {

  /*! 
    @method cameraDevice:didAddItem:
    @abstract This message is sent when an object is added to the device.
    @discussion The object may be an instance of ICCameraFolder or ICCameraFile class.
  */
  optional func cameraDevice(camera: ICCameraDevice, didAdd item: ICCameraItem)

  /*! 
   @method cameraDevice:didAddItems:
   @abstract This message is sent when an object or objects are added to the device.  Instead of
   receive one message per object, an NSArray of objects is sent.
   @discussion The objects may be instances of ICCameraFolder or ICCameraFile class.
   */
  optional func cameraDevice(camera: ICCameraDevice, didAdd items: [ICCameraItem])

  /*! 
    @method cameraDevice:didRemoveItem:
    @abstract This message is sent when an object is removed from the device.
    @discussion The object may be an instance of ICCameraFolder or ICCameraFile class.
  */
  optional func cameraDevice(camera: ICCameraDevice, didRemove item: ICCameraItem)

  /*! 
    @method cameraDevice:didRemoveItems:
    @abstract This message is sent when an object or objects are removed from the device.
    @discussion The objects may be instances of ICCameraFolder or ICCameraFile class. This method supercedes 'cameraDevice:didRemoveItem:' method described above.
  */
  optional func cameraDevice(camera: ICCameraDevice, didRemove items: [ICCameraItem])

  /*! 
   @method cameraDevice:didRenameItems:
   @abstract This message is sent when an object or objects are renamed on the device.
   @discussion The objects may be instances of ICCameraFolder or ICCameraFile class. 
   */
  optional func cameraDevice(camera: ICCameraDevice, didRenameItems items: [ICCameraItem])

  /*! 
    @method cameraDevice:didCompleteDeleteFilesWithError:
    @abstract This message is sent after the camera device completes a delete operation initiated by sending a 'requestDeleteFiles:' message to that device.
    @discusson This message is sent after the camera device completes a delete operation initiated by sending a 'requestDeleteFiles:' message to that device.
  */
  optional func cameraDevice(scanner: ICCameraDevice, didCompleteDeleteFilesWithError error: NSError?)

  /*! 
    @method cameraDeviceDidChangeCapability:
    @abstract This message is sent when the capability of a device changes.
    @discussion This usually happens when the device module takes control or yields control of the device.
  */
  optional func cameraDeviceDidChangeCapability(camera: ICCameraDevice)

  /*! 
    @method cameraDevice:didReceiveThumbnailForItem:
    @abstract This message is sent when the thumbnail requested for an item on a device is available.
  */
  optional func cameraDevice(camera: ICCameraDevice, didReceiveThumbnailFor item: ICCameraItem)

  /*! 
    @method cameraDevice:didReceiveMetadataForItem:
    @abstract This message is sent when the metadata requested for an item on a device is available.
  */
  optional func cameraDevice(camera: ICCameraDevice, didReceiveMetadataFor item: ICCameraItem)

  /*! 
    @method cameraDevice:didReceivePTPEvent:
    @abstract This message is sent to the delegate to convey a PTP event.
  */
  optional func cameraDevice(camera: ICCameraDevice, didReceivePTPEvent eventData: NSData)

  /*! 
    @method deviceDidBecomeReadyWithCompleteContentCatalog:
    @abstract This message is sent when the camera device is done enumerating its content and is ready to receive requests.
    @discussion A session must be opened on the device in order to enumerate its content and make it ready to receive requests.
  */
  optional func deviceDidBecomeReadyWithCompleteContentCatalog(device: ICDevice)

  /*!
   @method cameraDevice:shouldGetThumbnailOfItem:
   @abstract This message is sent when the camera device is about to execute queued requests for the thumbnail of a specific item.
   If the request is no longer wanted, eg: the item is no longer displayed on the screen, the client can return NO and abort sending
   a request down to the camera device, speeding up the exection queue.
   */
  optional func cameraDevice(cameraDevice: ICCameraDevice, shouldGetThumbnailOf item: ICCameraItem) -> Bool

  /*!
   @abstract This message is sent when the camera device is about to execute queued requests for the metadata of a specific item.
   If the request is no longer wanted, eg: the item is no longer displayed on the screen, the client can return NO and abort sending
   a request down to the camera device, speeding up the execution queue.
   */
  optional func cameraDevice(cameraDevice: ICCameraDevice, shouldGetMetadataOf item: ICCameraItem) -> Bool
}

/*! 
  @protocol ICCameraDeviceDownloadDelegate <NSObject>
  @abstract The object passed in as 'downloadDelegate' in the 'requestDownloadFile:options:downloadDelegate:didDownloadSelector:contextInfo:' message must conform to ICCameraDeviceDownloadDelegate protocol.
*/
protocol ICCameraDeviceDownloadDelegate : NSObjectProtocol {

  /*! 
    @method didDownloadFile:error:options:contextInfo:
    @abstract This message is sent to the delegate when the requested download operation is complete.
  */
  optional func didDownloadFile(file: ICCameraFile, error: NSError?, options: [String : AnyObject]? = [:], contextInfo: UnsafeMutablePointer<Void>)

  /*! 
    @method didReceiveDownloadProgressForFile:downloadedBytes:maxBytes:
    @abstract This message is sent to the delegate to provide status of the download operation.
  */
  optional func didReceiveDownloadProgressFor(file: ICCameraFile, downloadedBytes: off_t, maxBytes: off_t)
}

/*!
    @class ICCameraDevice
    @abstract ICCameraDevice is a concrete subclass of ICDevice class. ICDeviceBrowser creates instances of this class.
*/
class ICCameraDevice : ICDevice {

  /*!
      @property batteryLevelAvailable
      @abstract Indicates if the device has reported battery charge level￼.
  
  */
  var batteryLevelAvailable: Bool { get }

  /*!
      @property batteryLevel
      @abstract ￼Indicates the battery charge level. Its value ranges from 0 to 100.
  
  */
  var batteryLevel: Int { get }

  /*!
      @property contentCatalogPercentCompleted
      @abstract ￼Indicates the percentage of content cataloging completed on the device. Its value ranges from 0 to 100.
  
  */
  var contentCatalogPercentCompleted: Int { get }

  /*!
      @property contents
      @abstract ￼Contents of the camera. The structure of the elements in this array will reflect the folder structure of the storage reported by the camera. Each item in this array will correspond to a storage on the camera.
  
  */
  var contents: [ICCameraItem]? { get }

  /*!
      @property mediaFiles
      @abstract ￼The property mediaFiles represents all image, movie and audio files on the camera. These files are returned as a single array without regard to the folder hierarchy used to store these files on the camera.
  
  */
  var mediaFiles: [ICCameraItem]? { get }

  /*!
      @property timeOffset
      @abstract Indicates the time offset, in seconds, between the camera's clock and the computer's clock￼. This value is positive if the camera's clock is ahead of the computer's clock. This property should be ignored if the camera's capabilities property does not contain ICCameraDeviceCanSyncClock.
  
  */
  var timeOffset: NSTimeInterval { get }

  /*!
      @property isAccessRestrictedAppleDevice
      @abstract Set to YES if the device is made by Apple and is pass-coded locked and connected to an untrusted host.
  
  */
  var isAccessRestrictedAppleDevice: Bool { get }

  /*!
      @property mountPoint
      @abstract Filesystem mount point for a device with transportType of ICTransportTypeMassStorage. This will be NULL for all other devices.
  
  */
  var mountPoint: String? { get }

  /*!
      @property tetheredCaptureEnabled
      @abstract This property is set to YES when tethered capture is enabled on the device. 
      @discussion Use 'requestEnableTethering' and 'requestDisableTethering' to enable or disable tethered capture on the device.
  
  */
  var tetheredCaptureEnabled: Bool

  /*! 
    @method filesOfType:
    @abstract This method returns an array of files on the camera of type fileType. 
    @discussion The fileType string is one of the following Uniform Type Identifier strings: kUTTypeImage, kUTTypeMovie, kUTTypeAudio, or kUTTypeData.
  */
  func filesOfType(fileUTType: String) -> [String]

  /*! 
    @method requestSyncClock
    @abstract Synchronize camera's clock with the computer's clock. You should send this request only if the camera has the 'ICCameraDeviceCanSyncClock' capability.
  */
  func requestSyncClock()

  /*! 
    @method requestEnableTethering
    @abstract Send this message to enable tethered capture on the camera device if the camera has the 'ICCameraDeviceCanTakePicture' capability.
  */
  func requestEnableTethering()

  /*! 
    @method requestDisableTethering
    @abstract Send this message to disable tethered capture on the camera device if the camera has the 'ICCameraDeviceCanTakePicture' capability and if your process has already sent a 'requestEnableTethering' to it.
  */
  func requestDisableTethering()

  /*! 
    @method requestTakePicture
    @abstract Capture a new image using the camera, the camera capabilities include 'ICCameraDeviceCanTakePicture'.
    @discussion You MUST send 'requestEnableTethering' message to the camera before sending 'requestTakePicture' message.
  */
  func requestTakePicture()

  /*! 
    @method requestDeleteFiles
    @abstract Deletes files.
  */
  func requestDeleteFiles(files: [ICCameraItem])

  /*! 
    @method cancelDelete
    @abstract Cancels the current delete operation started by sending a 'requestDeleteFiles:'.
  */
  func cancelDelete()

  /*! 
    @method requestDownloadFile:options:downloadDelegate:didDownloadSelector:contextInfo:
    @abstract Download a file from the camera. Please refer to the top of this header for information about the options.
    @discussion The downloadDelegate passed must not be nil. When this request is completed, the didDownloadSelector of the downloadDelegate object is called.The didDownloadSelector should have the same signature as: - (void)didDownloadFile:(ICCameraFile*)file error:(NSError*)error options:(NSDictionary*)options contextInfo:(void*)contextInfo. The content of error returned should be examined to determine if the request completed successfully. Please see discussion above for 'ICCameraDeviceDownloadDelegate' protocol for more information.
  */
  func requestDownloadFile(file: ICCameraFile, options: [String : AnyObject]? = [:], downloadDelegate: ICCameraDeviceDownloadDelegate, didDownloadSelector selector: Selector, contextInfo: UnsafeMutablePointer<Void>)

  /*! 
    @method cancelDownload
    @abstract Cancels the current download operation.
  */
  func cancelDownload()

  /*! 
    @method requestUploadFile:options:uploadDelegate:didUploadSelector:contextInfo:
    @abstract Upload a file at fileURL to the camera. The options dictionary is not used in this version.
    @discussion The uploadDelegate passed must not be nil. When this request is completed, the didUploadSelector of the uploadDelegate object is called. The didUploadSelector should have the same signature as: - (void)didUploadFile:(NSURL*)fileURL error:(NSError*)error contextInfo:(void*)contextInfo. The content of error returned should be examined to determine if the request completed successfully.
  */
  func requestUploadFile(fileURL: NSURL, options: [String : AnyObject]? = [:], uploadDelegate: AnyObject, didUploadSelector selector: Selector, contextInfo: UnsafeMutablePointer<Void>)

  /*! 
    @method requestReadDataFromFile:atOffset:length:readDelegate:didReadDataSelector:contextInfo:
    @abstract This method asynchronously reads data of a specified length from a specified offset.
    @discussion The readDelegate passed must not be nil. When this request is completed, the didReadDataSelector of the readDelegate object is called. The didReadDataSelector should have the same signature as: - (void)didReadData:(NSData*)data fromFile:(ICCameraFile*)file error:(NSError*)error contextInfo:(void*)contextInfo. The content of error returned should be examined to determine if the request completed successfully.
  */
  func requestReadDataFrom(file: ICCameraFile, atOffset offset: off_t, length: off_t, readDelegate: AnyObject, didReadDataSelector selector: Selector, contextInfo: UnsafeMutablePointer<Void>)

  /*! 
    @method requestSendPTPCommand:outData:sendCommandDelegate:sendCommandDelegate:contextInfo:
    @abstract This method asynchronously sends a PTP command to a camera.
    @discussion This should be sent only if the 'capabilities' property contains 'ICCameraDeviceCanAcceptPTPCommands'. All PTP cameras have this capability. The response to this command will be delivered using didSendCommandSelector of sendCommandDelegate. The didSendCommandSelector should have the same signature as: - (void)didSendPTPCommand:(NSData*)command inData:(NSData*)data response:(NSData*)response error:(NSError*)error contextInfo:(void*)contextInfo. The content of error returned should be examined to determine if the request completed successfully.
  */
  func requestSendPTPCommand(command: NSData, outData data: NSData, sendCommandDelegate: AnyObject, didSendCommand selector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  init()
}

/*! 
  @class ICCameraItem
  @abstract ICCameraItem is an abstract class that represents an item in an ICCameraDevice object. ICCameraDevice object creates instances of two concrete subclasses of ICCameraItem: ICCameraFolder and ICCameraFile.
*/
class ICCameraItem : NSObject {

  /*!
      @property device
      @abstract ￼Parent device of this folder.
  
  */
  var device: ICCameraDevice { get }

  /*!
      @property parentFolder
      @abstract ￼Parent folder of this folder. The root folder's parentFolder is nil.
  
  */
  var parentFolder: ICCameraFolder { get }

  /*!
      @property name
      @abstract ￼Name of this folder.
  
  */
  var name: String { get }

  /*!
      @property UTI
      @abstract ￼Item UTI. This is an Uniform Type Identifier string. It is one of: kUTTypeFolder, kUTTypeImage, kUTTypeMovie, kUTTypeAudio, or kUTTypeData.
  
  */
  var uti: String { get }

  /*!
      @property fileSystemPath
      @abstract ￼The file system path of the item for items on a device with transportType of ICTransportTypeMassStorage.
  
  */
  var fileSystemPath: String { get }

  /*!
      @property locked
      @abstract ￼Indicates the protection state of this folder. It is locked if the storage card in the camera is locked.
  
  */
  var isLocked: Bool { get }

  /*!
      @property raw
      @abstract ￼Indicates if the file is a raw image file.
  
  */
  var isRaw: Bool { get }

  /*!
      @property inTemporaryStore
      @abstract ￼Indicates if this folder is in a temporary store. A temporary store may be used by the device when images are captures on the device when it is tethered to the computer.
  
  */
  var isInTemporaryStore: Bool { get }

  /*!
      @property creationDate
      @abstract ￼Creation date of this file. This information is usually the same as the EXIF creation date.
  
  */
  var creationDate: NSDate { get }

  /*!
      @property modificationDate
      @abstract ￼Modification date of this file. This information is usually the same as the EXIF modification date.
  
  */
  var modificationDate: NSDate { get }

  /*!
      @property thumbnailIfAvailable
      @abstract ￼Thumbnail for the item if one is readily available. If one is not readily available, accessing this property will send a message to the device requesting a thumbnail for the file. The delegate of the device will be notified via method "cameraDevice:didReceiveThumbnailForItem:", if this method is implemented on by the delegate.
  
  */
  var thumbnailIfAvailable: CGImage? { get }

  /*!
   @property largeThumbnailIfAvailable
   @abstract Large thumbnail for the item if one is readily available. If one is not readily available, accessing this property will send a message to the device requesting a thumbnail for the file. The delegate of the device will be notified via method "cameraDevice:didReceiveThumbnailForItem:", if this method is implemented on by the delegate.
   
   */
  var largeThumbnailIfAvailable: CGImage? { get }

  /*!
      @property metadataIfAvailable
      @abstract ￼Metadata for the file if one is readily available. If one is not readily available, accessing this property will send a message to the device requesting a thumbnail for the file. The delegate of the device will be notified via method "cameraDevice:didReceiveMetadataForItem:", if this method is implemented on by the delegate.
  
  */
  var metadataIfAvailable: [String : AnyObject]? { get }

  /*!
      @property userData
      @abstract ￼A mutable dictionary to store arbitrary key-value pairs associated with a camera item object. This can be used by view objects that bind to this object to store "house-keeping" information.
  
  */
  var userData: NSMutableDictionary? { get }

  /*!
      @property ptpObjectHandle
      @abstract PTP object handle value if the item is on a camera that uses PTP protocol. The value of this property is set to 0 if the camera does not use PTP protocol.
  
  */
  var ptpObjectHandle: UInt32 { get }

  /*!
   @property addedAfterContentCatalogCompleted
   @abstract This property is set if the file is captured on the device after the device's content is fully enumerated. This does not apply to files added as a result of adding a new store to the device. 
   
   */
  var wasAddedAfterContentCatalogCompleted: Bool { get }
  init()
}

/*! 
  @class ICCameraFolder
  @abstract This class represents a folder on an ICCameraDevice object.
*/
class ICCameraFolder : ICCameraItem {

  /*!
      @property contents
      @abstract ￼A list of items contained by this folder.
  
  */
  var contents: [ICCameraItem] { get }
  init()
}

/*! 
  @class ICCameraFile
  @abstract This class represents a file on an ICCameraDevice object.
*/
class ICCameraFile : ICCameraItem {

  /*!
      @property fileSize
      @abstract ￼Size of file in bytes.
  
  */
  var fileSize: off_t { get }

  /*!
      @property orientation
      @abstract ￼Desired orientation of image to use when it is downloaded.
      @discussion This property is set to ICEXIFOrientation1 initially. If the format of this file supports EXIF orientation tag, then this property will be updated to match the value of that tag, when the thumbnail or metadata for this file is received. 
  
  */
  var orientation: ICEXIFOrientationType

  /*!
      @property duration
      @abstract ￼Duration of audio/video file in seconds.
  
  */
  var duration: Double { get }

  /*!
      @property sidecarFiles
      @abstract This property is NULL if there are no sidecar files associated with this file. Otherwise it is an array of ICCameraFile instances of sidecar files associated with this file. An example of a sidecar file is a file with the same base name as this file and having an extension XMP.
  
  */
  var sidecarFiles: [ICCameraItem] { get }
  init()
}

/*!
  @ICEXIFOrientationType
  @abstract Type representing EXIF Orientation tag value
  @discussion The meaning of this value is defined by the EXIF specification. Here is what the letter F would look like if it were tagged correctly and displayed by a program that ignores the orientation tag (thus showing the stored image):

               1             2             3             4

            8888888       8888888            88       88
            88                 88            88       88
            8888             8888          8888       8888
            88                 88            88       88
            88                 88       8888888       8888888

               5             6             7             8

            8888888888    88                    88    8888888888
            88  88        88  88            88  88        88  88
            88            8888888888    8888888888            88

*/
enum ICEXIFOrientationType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Orientation1
  case Orientation2
  case Orientation3
  case Orientation4
  case Orientation5
  case Orientation6
  case Orientation7
  case Orientation8
}

/*!
    @ICReturnCode
    @discussion
        Definition of codes returned by APIs in ImageCaptureCore framework
    @constant ICReturnSuccess
        Operation successful.
    @constant ICReturnInvalidParam
        An invalid parameter was found.
    @constant ICReturnCommunicationTimedOut
        Communication between different components of Image Capture timed out.
    @constant ICReturnScanOperationCanceled
        The scan operation is canceled.
    @constant ICReturnScannerInUseByLocalUser
        Scanner is being used by a local user.
    @constant ICReturnScannerInUseByRemoteUser
        Scanner is being used by a remote user.
    @constant ICReturnDeviceFailedToOpenSession
        Failed to open a session on a specified device.
    @constant ICReturnDeviceFailedToCloseSession
        Failed to close a session on a specified device.
    @constant ICReturnScannerFailedToSelectFunctionalUnit
        Failed to select a functional unit on the specified scanner.
    @constant ICReturnScannerFailedToCompleteOverviewScan
        Overview scan operation failed to complete on the specified scanner.
    @constant ICReturnScannerFailedToCompleteScan
        Scan operation failed to complete on the specified scanner.
    @constant ICReturnReceivedUnsolicitedScannerStatusInfo
        An unsolicited status information was received from a scanner.
    @constant ICReturnReceivedUnsolicitedScannerErrorInfo
        An unsolicited error information was received from a scanner.
    @constant ICReturnDownloadFailed
        A non-specific error occurred while downloading a file.
    @constant ICReturnUploadFailed
        A non-specific error occurred while updownloading a file.
    @constant ICReturnFailedToCompletePassThroughCommand
        Failed to complete a pass-through (e.g., PTP pass-through) command.
    @constant ICReturnDownloadCanceled
        A download operation was canceled.
    @constant ICReturnFailedToEnabeTethering
        Failed to enable tethered-capture on a camera device.
    @constant ICReturnFailedToDisabeTethering
        Failed to disable tethered-capture on a camera device.
    @constant ICReturnFailedToCompleteSendMessageRequest
        A request to send a message to a device failed.
    @constant ICReturnDeleteFilesFailed
        A request to delete files failed.
    @constant ICReturnDeleteFilesCanceled
        A request to delete files was canceled.
    @constant ICReturnDeviceIsPasscodeLocked
        The device is locked with a passcode. Its contents cannot be seen unless it is unlocked.
    @constant ICReturnDeviceFailedToTakePicture
        Failed to take a tethered-capture picture on a camera device.
    @constant ICReturnDeviceSoftwareNotInstalled
        Failed to open session because software to communicate with the device is not installed.
    @constant ICReturnDeviceSoftwareIsBeingInstalled
        Failed to open session because software to communicate with the device is being installed.
    @constant ICReturnDeviceSoftwareInstallationCompleted
        Software installation for the device has completed successfully.
    @constant ICReturnDeviceSoftwareInstallationCanceled
        Software installation for the device has been canceled.
    @constant ICReturnDeviceSoftwareInstallationFailed
        Software installation for the device failed.
    @constant ICReturnDeviceSoftwareNotAvailable
        Software for the device is not available from Apple.
*/
enum ICReturnCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Success
  case InvalidParam
  case CommunicationTimedOut
  case ScanOperationCanceled
  case ScannerInUseByLocalUser
  case ScannerInUseByRemoteUser
  case DeviceFailedToOpenSession
  case DeviceFailedToCloseSession
  case ScannerFailedToSelectFunctionalUnit
  case ScannerFailedToCompleteOverviewScan
  case ScannerFailedToCompleteScan
  case ReceivedUnsolicitedScannerStatusInfo
  case ReceivedUnsolicitedScannerErrorInfo
  case DownloadFailed
  case UploadFailed
  case FailedToCompletePassThroughCommand
  case DownloadCanceled
  case FailedToEnabeTethering
  case FailedToDisabeTethering
  case FailedToCompleteSendMessageRequest
  case DeleteFilesFailed
  case DeleteFilesCanceled
  case DeviceIsPasscodeLocked
  case DeviceFailedToTakePicture
  case DeviceSoftwareNotInstalled
  case DeviceSoftwareIsBeingInstalled
  case DeviceSoftwareInstallationCompleted
  case DeviceSoftwareInstallationCanceled
  case DeviceSoftwareInstallationFailed
  case DeviceSoftwareNotAvailable
  case DeviceCouldNotPair
  case DeviceCouldNotUnpair
  case DeviceNeedsCredentials
}

/*!
  @ICDeviceType
  @abstract Image Capture Device Types
  @constant ICDeviceTypeCamera Camera device.
  @constant ICDeviceTypeScanner Scanner device.
*/
enum ICDeviceType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Camera
  case Scanner
}

/*!
  @ICDeviceLocationType
  @abstract Image Capture Device Location Types
  @constant ICDeviceLocationTypeLocal Device found directly attached to the Macintosh via its USB or FireWire port.
  @constant ICDeviceLocationTypeShared Device found over the network by searching for devices shared by other Macintosh hosts.
  @constant ICDeviceLocationTypeBonjour Device found over the network by searching for Bonjour services supported by Image Capture.
  @constant ICDeviceLocationTypeBluetooth Device found as a paired Bluetooth device.
*/
enum ICDeviceLocationType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Local
  case Shared
  case Bonjour
  case Bluetooth
}

/*!
  @ICDeviceTypeMask
  @abstract Image Capture Device Type Mask
  @constant ICDeviceTypeMaskCamera Mask to detect a camera device.
  @constant ICDeviceTypeMaskScanner Mask to detect a scanner device.
*/
enum ICDeviceTypeMask : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Camera
  case Scanner
}

/*!
  @ICDeviceLocationTypeMask
  @abstract Image Capture Device Location Type Mask
  @constant ICDeviceLocationTypeMaskLocal Mask to detect a local (e.g., USB or FireWire) device.
  @constant ICDeviceLocationTypeMaskShared Mask to detect a device by another Macintosh host.
  @constant ICDeviceLocationTypeMaskBonjour Mask to detect a network device that publishes a Bonjour service.
  @constant ICDeviceLocationTypeMaskBluetooth Mask to detect paired Bluetooth device.
  @constant ICDeviceLocationTypeMaskRemote Mask to detect a remote (shared, Bonjour, Bluetooth) device.
*/
enum ICDeviceLocationTypeMask : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Local
  case Shared
  case Bonjour
  case Bluetooth
  case Remote
}

/*!
    @const      ICTransportTypeUSB
    @abstract   ICTransportTypeUSB
    @discussion Indicates that the device uses USB transport.
*/
let ICTransportTypeUSB: String

/*!
    @const      ICTransportTypeFireWire
    @abstract   ICTransportTypeFireWire
    @discussion Indicates that the device uses FireWire transport.
*/
let ICTransportTypeFireWire: String

/*!
    @const      ICTransportTypeBluetooth
    @abstract   ICTransportTypeBluetooth
    @discussion Indicates that the device uses Bluetooth transport.
*/
let ICTransportTypeBluetooth: String

/*!
    @const      ICTransportTypeTCPIP
    @abstract   ICTransportTypeTCPIP
    @discussion Indicates that the device uses TCP/IP transport. These devices are discovered using Bonjour.
*/
let ICTransportTypeTCPIP: String

/*!
    @const      ICTransportTypeMassStorage
    @abstract   ICTransportTypeMassStorage
    @discussion Indicates that the device use mounts as a mass-storage volume.
*/
let ICTransportTypeMassStorage: String

/*!
    @const      ICDeviceLocationDescriptionUSB
    @abstract   ICDeviceLocationDescriptionUSB
    @discussion This description is returned for locationDescription property of a device connected to a USB port.
*/
let ICDeviceLocationDescriptionUSB: String

/*!
    @const      ICDeviceLocationDescriptionFireWire
    @abstract   ICDeviceLocationDescriptionFireWire
    @discussion This description is returned for locationDescription property of a device connected to a FireWire port.
*/
let ICDeviceLocationDescriptionFireWire: String

/*!
    @const      ICDeviceLocationDescriptionBluetooth
    @abstract   ICDeviceLocationDescriptionBluetooth
    @discussion This description is returned for locationDescription property of a device connected via Bluetooth.
*/
let ICDeviceLocationDescriptionBluetooth: String

/*!
    @const      ICDeviceLocationDescriptionMassStorage
    @abstract   ICDeviceLocationDescriptionMassStorage
    @discussion This description is returned for locationDescription property of a device that is mounted as a mass-storage volume.
*/
let ICDeviceLocationDescriptionMassStorage: String

/*!
    @const      ICButtonTypeScan
    @abstract   ICButtonTypeScan
    @discussion Indicates that the "Scan" button on the device was pressed.
*/
let ICButtonTypeScan: String

/*!
    @const      ICButtonTypeMail
    @abstract   ICButtonTypeMail
    @discussion Indicates that the "Mail" button on the device was pressed.
*/
let ICButtonTypeMail: String

/*!
    @const      ICButtonTypeCopy
    @abstract   ICButtonTypeCopy
    @discussion Indicates that the "Copy" button on the device was pressed.
*/
let ICButtonTypeCopy: String

/*!
    @const      ICButtonTypeWeb
    @abstract   ICButtonTypeWeb
    @discussion Indicates that the "Web" button on the device was pressed.
*/
let ICButtonTypeWeb: String

/*!
    @const      ICButtonTypePrint
    @abstract   ICButtonTypePrint
    @discussion Indicates that the "Print" button on the device was pressed.
*/
let ICButtonTypePrint: String

/*!
    @const      ICButtonTypeTransfer
    @abstract   ICButtonTypeTransfer
    @discussion Indicates that the "Transfer" button on the device was pressed.
*/
let ICButtonTypeTransfer: String

/*!
    @const      ICStatusNotificationKey
    @abstract   ICStatusNotificationKey
    @discussion Key for a non-localized notification string.
*/
let ICStatusNotificationKey: String

/*!
    @const      ICStatusCodeKey
    @abstract   ICStatusCodeKey
    @discussion One of values defined in ICReturnCode.
*/
let ICStatusCodeKey: String

/*!
    @const      ICLocalizedStatusNotificationKey
    @abstract   ICLocalizedStatusNotificationKey
    @discussion Key for a localized notification string.
*/
let ICLocalizedStatusNotificationKey: String

/*!
    @const      ICDeviceCanEjectOrDisconnect
    @abstract   ICDeviceCanEjectOrDisconnect
    @discussion Indicates either the device is mounted as a mass-storage volume and can be ejected or the it is a remote device with an active connection that can be disconnected.
*/
let ICDeviceCanEjectOrDisconnect: String

/*! 
  @protocol ICDeviceDelegate <NSObject>
  @abstract A delegate of ICDevice must conform to ICDeviceDelegate protocol.
*/
protocol ICDeviceDelegate : NSObjectProtocol {

  /*! 
    @method didRemoveDevice:
    @abstract This message is sent to the delegate to inform that a device has been removed.
  */
  func didRemove(device: ICDevice)

  /*! 
    @method device:didOpenSessionWithError:
    @abstract This message is sent when a session is opened on a device.
    @discussion This message completes the process initiated by the message "requestOpenSession" sent to the device object.
  */
  optional func device(device: ICDevice, didOpenSessionWithError error: NSError?)

  /*! 
    @method deviceDidBecomeReady:
    @abstract This message is sent when the device is ready to receive requests.
    @discusson A camera device is ready, when it is ready to receive requests. A scanner device is ready when its functional units are found and the default functional unit is selected for use and is ready to receive requests. The device will become ready to receive requests only after a session is opened.
  */
  optional func deviceDidBecomeReady(device: ICDevice)

  /*! 
    @method device:didCloseSessionWithError:
    @abstract This message is sent when a session is closed on a device.
    @discussion This message completes the process initiated by the message "requestCloseSession" sent to the device object. This message is also sent if the device module in control of the device ceases to control the device.
  */
  optional func device(device: ICDevice, didCloseSessionWithError error: NSError?)

  /*! 
    @method deviceDidChangeName:
    @abstract This message is sent if the name of a device changes.
    @discussion This happens if the device module overrides the default name of the device reported by the device's transport layer, or if the name of the filesystem volume mounted by the device is changed by the user.
  */
  optional func deviceDidChangeName(device: ICDevice)

  /*! 
    @method deviceDidChangeSharingState:
    @abstract This message is sent when the sharing state of a device has changes.
    @discusson Any Image Capture client application can choose to share the device over the network using the sharing or webSharing facility in Image Capture.
  */
  optional func deviceDidChangeSharingState(device: ICDevice)

  /*! 
    @method device:didReceiveStatusInformation:
    @abstract This message is sent to the device delegate when status information is received from a camera or a scanner. In Mac OS X 10.6 this delegate is not called for camera devices. This may change in the future releases of Mac OS X.
    @discussion The 'status' dictionary contains two keys, ICStatusNotificationKey and ICLocalizedStatusNotificationKey, which are defined above. If type of 'device' is ICDeviceTypeScanner, the value of ICStatusNotificationKey will be one of the values defined in ICScannerDevice.h (e.g., ICScannerStatusWarmingUp, ICScannerStatusWarmUpDone, or ICScannerStatusRequestsOverviewScan); the value of ICLocalizedStatusNotificationKey will be a localized status information string suitable for displaying to the user. */
  optional func device(device: ICDevice, didReceiveStatusInformation status: [String : AnyObject])

  /*! 
    @method device:didEncounterError:
    @abstract This message is sent to the device delegate when a camera or scanner device encounters an error.
  */
  optional func device(device: ICDevice, didEncounterError error: NSError?)

  /*! 
    @method device:didReceiveButtonPress:
    @abstract This message is sent to the device delegate if a button is pressed on the device.
    @discussion This message is sent only if a session is open on the device. The value of 'buttonType' argument is one of the ICButtonType* values defined above.
  */
  optional func device(device: ICDevice, didReceiveButtonPress buttonType: String)

  /*! 
    @method device:didReceiveCustomNotification:data:
    @abstract This message is sent to the device delegate the device sends a custom notification 'notification' with an arbitrary byte buffer 'data'.
    @discussion This message is sent only if a session is open on the device.
  */
  optional func device(device: ICDevice, didReceiveCustomNotification notification: [String : AnyObject], data: NSData)
}

/*! 
  @class ICDevice
  @abstract ICDevice is an abstract class that represents a device supported by Image Capture facility. ImageCaptureCore defines two concrete subclasses of ICDevice, ICCameraDevice and ICScannerDevice. ICDeviceBrowser creates instances of these two subclasses to represent cameras and scanners it finds.
*/
class ICDevice : NSObject {

  /*! 
    @property delegate
    @abstract The delegate to receive messages once a session is opened on the device.
    @discussion The delegate must conform to ICDeviceDelegate protocol. In addition it should respond to selectors defined in ICCameraDeviceDelegate or ICScannerDeviceDelegate protocols in order to effectively interact with the device object. The messages this delegate can expect to receive are described by these protocols. NOTES: (1) The delegate is not retain by the ICDevice instance. Therefore the delegate property of the ICDevice instance must be set to NULL before the delegate is released. (2) Since communication with the device object is done asynchronously, changing the delegate after opening a session may result in unexpected behavior; e.g., expected delegate method(s) may not be invoked.
  */
  unowned(unsafe) var delegate: @sil_unmanaged ICDeviceDelegate?

  /*!
      @property type
      @abstract ￼The type of the device as defined by ICDeviceType OR'd with its ICDeviceLocationType. The type of this device can be obtained by AND'ing the value retuned by this property with an appropriate ICDeviceTypeMask. The location type of this device can be obtained by AND'ing the value retuned by this property with an appropriate ICDeviceLocationTypeMask.
  
  */
  var type: ICDeviceType { get }

  /*!
      @property name
      @abstract ￼Name of the device as reported by the device module or by the device transport when a device module is not in control of this device. This name may change if the device module overrides the default name of the device reported by the device's transport, or if the name of the filesystem volume mounted by the device is changed by the user.
  
  */
  var name: String? { get }

  /*!
      @property icon
      @abstract ￼Icon image for the device.
  
  */
  var icon: CGImage? { get }

  /*!
      @property capabilities
      @abstract ￼The capabilities of the device as reported by the device module.
  
  */
  var capabilities: [String] { get }

  /*!
      @property modulePath
      @abstract ￼Filesystem path of the device module that is associated with this device. Camera-specific capabilities are defined in ICCameraDevice.h and scanner-specific capabilities are defined in ICScannerDevice.h.
  
  */
  var modulePath: String { get }

  /*!
      @property moduleVersion
      @abstract ￼The bundle version of the device module associated with this device. This may change if an existing device module associated with this device is updated or a new device module for this device is installed.
  
  */
  var moduleVersion: String { get }

  /*!
      @property moduleExecutableArchitecture
      @abstract ￼Executable Architecture of the device module in control of this device. This is equal to a value as defined in NSBundle.h or CFBundle.h.
  
  */
  var moduleExecutableArchitecture: Int32 { get }

  /*!
      @property remote
      @abstract ￼Indicates whether the device is a remote device published by Image Capture device sharing facility.
  
  */
  var isRemote: Bool { get }

  /*!
      @property shared
      @abstract ￼Indicates whether the device is shared using the Image Capture device sharing facility. This value will change when sharing of this device is enabled or disabled.
  
  */
  var isShared: Bool { get }

  /*!
      @property hasConfigurableWiFiInterface
      @abstract ￼Indicates whether the device can be configured for use on a WiFi network.
  
  */
  var hasConfigurableWiFiInterface: Bool { get }

  /*!
      @property transportType
      @abstract ￼The transport type used by the device. The possible values are: ICTransportTypeUSB, ICTransportTypeFireWire, ICTransportTypeBluetooth, ICTransportTypeTCPIP, or ICTransportTypeMassStorage.
  
  */
  var transportType: String { get }

  /*!
      @property usbLocationID
      @abstract ￼The USB location ID of a USB device in the IOKit registry. This will be 0 for non-USB devices.
  
  */
  var usbLocationID: Int32 { get }

  /*!
      @property usbProductID
      @abstract ￼The USB product ID of a USB device in the IOKit registry. This will be 0 for non-USB devices.
  
  */
  var usbProductID: Int32 { get }

  /*!
      @property usbVendorID
      @abstract ￼The USB vendor ID of a USB device in the IOKit registry. This will be 0 for non-USB devices.
  
  */
  var usbVendorID: Int32 { get }

  /*!
      @property fwGUID
      @abstract ￼The FireWire GUID of a FireWire device in the IOKit registry. This will be 0 for non-FireWire devices.
  
  */
  var fwGUID: Int64 { get }

  /*!
      @property serialNumberString
      @abstract ￼The serial number of the device. This will be NULL if the device does not provide a serial number.
  
  */
  var serialNumberString: String? { get }

  /*!
      @property locationDescription
      @abstract ￼A non-localized location description string for the device.
      @discussion The value returned in one of the location description strings defined above, or location obtained from the Bonjour TXT record of a network device.
  
  */
  var locationDescription: String? { get }

  /*!
      @property hasOpenSession
      @abstract ￼Indicates whether the device has an open session.
  
  */
  var hasOpenSession: Bool { get }

  /*!
      @property UUIDString
      @abstract ￼A string representation of the Universally Unique ID of the device.
  
  */
  var uuidString: String? { get }

  /*!
      @property persistentIDString
      @abstract ￼A string representation of the persistent ID of the device.
  
  */
  var persistentIDString: String? { get }

  /*!
      @property buttonPressed
      @abstract ￼A string object with one of the ICButtonType* values defined above.
  
  */
  var buttonPressed: String { get }

  /*!
      @property autolaunchApplicationPath
      @abstract ￼Filesystem path of an application that is to be automatically launched when this device is added.
  
  */
  var autolaunchApplicationPath: String?

  /*!
      @property userData
      @abstract ￼A mutable dictionary to store arbitrary key-value pairs associated with a device object. This can be used by view objects that bind to this object to store "house-keeping" information.
  
  */
  var userData: NSMutableDictionary? { get }

  /*! 
    @method requestOpenSession:
    @abstract This message requests to open a session on the device. A client MUST open a session on a device in order to use the device.
    @discussion Make sure the receiver's delegate is set prior to sending this message; otherwise this message will be ignored. This request is completed when the delegate receives a "device:didOpenSessionWithError:" message. No more messages will be sent to the delegate if this request fails.
  */
  func requestOpenSession()

  /*! 
    @method requestCloseSession
    @abstract This message requests to close a previously opened session on this device.
    @discussion This request is completed when the delegate receives a "device:didCloseSessionWithError:" message. This will be the last message sent to the delegate.
  */
  func requestCloseSession()

  /*! 
    @method requestYield
    @abstract This message requests the device module in control of this device to yield control.
    @discussion This message should be used only if the client is planning on communiting with the device directly. The device module may not yield control of the device if it has an open session.
  */
  func requestYield()

  /*! 
    @method requestSendMessage:outData:maxReturnDataSize:sendMessageDelegate:didSendMessageSelector:contextInfo:
    @abstract This method asynchronously sends an arbitrary message with optional data to a device.
    @discussion This method allows developers to send a private message from a client application to a device module. This method is the functional equivalent of calling ICAObjectSendMessage() found in ImageCapture.framework, which has been deprecated in Mac OS X 10.6. The response to this command will be delivered using didSendMessageSelector of sendMessageDelegate. The didSendMessageSelector should have the same signature as: - (void)didSendMessage:(UInt32)messageCode inData:(NSData*)data error:(NSError*)error contextInfo:(void*)contextInfo. The content of error returned should be examined to determine if the request completed successfully. NOTE: This method SHOULD NOT BE USED to send PTP pass-through commands to a PTP camera. Please refer to 'requestSendPTPCommand:outData:sendCommandDelegate:sendCommandDelegate:contextInfo:' defined in ICCameraDevice.h for sending PTP pass-through commands.
  */
  func requestSendMessage(messageCode: UInt32, outData data: NSData, maxReturnedDataSize: UInt32, sendMessageDelegate: AnyObject, didSendMessageSelector selector: Selector, contextInfo: UnsafeMutablePointer<Void>)

  /*! 
    @method requestEjectOrDisconnect
    @abstract Eject the media if permitted by the device, or disconnect from a remote device.
  */
  func requestEjectOrDisconnect()
  init()
}

/*! 
  @protocol ICDeviceBrowserDelegate <NSObject>
  @abstract A delegate of ICDeviceBrowser must conform to ICDeviceBrowserDelegate protocol. 
*/
protocol ICDeviceBrowserDelegate : NSObjectProtocol {

  /*! 
    @method deviceBrowser:didAddDevice:moreComing:
    @abstract This message is sent to the delegate to inform that a device has been added.
    @discussion If several devices are found during the initial search, then this message is sent once for each device with the value of 'moreComing' set to YES in each message except the last one. 
  */
  func deviceBrowser(browser: ICDeviceBrowser, didAdd device: ICDevice, moreComing: Bool)

  /*! 
    @method deviceBrowser:didRemoveDevice:moreGoing:
    @abstract This message is sent to the delegate to inform that a device has been removed.
    @discussion If several devices are removed at the same time, then this message is sent once for each device with the value of 'moreGoing' set to YES in each message except the last one. 
  */
  func deviceBrowser(browser: ICDeviceBrowser, didRemove device: ICDevice, moreGoing: Bool)

  /*! 
    @method deviceBrowser:deviceDidChangeName:
    @abstract This message is sent if the name of a device changes.
    @discussion This happens if the device module overrides the default name of the device reported by the device's transport layer, or if the name of the filesystem volume mounted by the device is changed by the user.
  */
  optional func deviceBrowser(browser: ICDeviceBrowser, deviceDidChangeName device: ICDevice)

  /*! 
    @method deviceBrowser:deviceDidChangeSharingState:
    @abstract This message is sent when the sharing state of a device has changes.
    @discusson Any Image Capture client application can choose to share the device over the network using the sharing or webSharing facility in Image Capture.
  */
  optional func deviceBrowser(browser: ICDeviceBrowser, deviceDidChangeSharingState device: ICDevice)

  /*! 
    @method deviceBrowser:requestsSelectDevice:
    @abstract This message is sent when an event that occurred on the device may be of interest to the client application.
    @discussion In Mac OS X 10.6, this message is sent when a button is pressed on a device and the current application is the target for that button press. In the case of the button-press event, if a session is open on the device, this message will not be sent to the browser delegate, instead the message 'device:didReceiveButtonPress:' is sent to the device delegate.
  */
  optional func deviceBrowser(browser: ICDeviceBrowser, requestsSelect device: ICDevice)

  /*! 
    @method deviceBrowserDidEnumerateLocalDevices:
    @abstract This message is sent after the device browser completes sending 'deviceBrowser:didAddDevice:moreComing:' message for all local devices.
    @discusson Detecting locally connected devices (USB and FireWire devices) is faster than detecting devices connected using a network protocol. An Image Capture client application may use this message to update its user interface to let the user know that it has completed looking for locally connected devices and then start looking for network devices.
  */
  optional func deviceBrowserDidEnumerateLocalDevices(browser: ICDeviceBrowser)
}

/*! 
  @class ICDeviceBrowser
  @abstract The ICDeviceBrowser object is used to find devices such as digital cameras and scanners that are supported by Image Capture. These device may be directly attached to the USB or FireWire bus on the host computer, shared by other computers, or available over a TCP/IP network. This object communicates with an Image Capture agent process asynchronously to accomplish this.
*/
class ICDeviceBrowser : NSObject {

  /*! 
    @property delegate
    @abstract The delegate. It must conform to ICDeviceBrowserDelegate protocol. The messages this delegate can expect to receive are described by ICDeviceBrowserDelegate protocol.
  */
  unowned(unsafe) var delegate: @sil_unmanaged ICDeviceBrowserDelegate?

  /*! 
    @property browsing
    @abstract Indicates whether the device browser is browsing for devices.
  */
  var isBrowsing: Bool { get }

  /*! 
    @property browsedDeviceTypeMask
    @abstract A mask whose set bits indicate the type of device(s) being browsed after the receiver receives the start message. This property can be changed while the browser is browsing for devices. This property can be constructed by OR'd values of ICDeviceTypeMask with values of ICDeviceLocationTypeMask.
  */
  var browsedDeviceTypeMask: ICDeviceTypeMask

  /*! 
    @property devices
    @abstract All devices found by the browser. This property will change as devices appear and disappear. This array is empty before the first invocation of the delegate method 'deviceBrowser:didAddDevice:moreComing:'.
  */
  var devices: [ICDevice]? { get }

  /*!
      @method preferredDevice
      @abstract This method returns a device object that should be selected by the client application when it is launched.
      @discussion If the client application that calls this method is the auto-launch application associated with a device and that device is the last device attached (through USB, FireWire or network), then that device will be the preferred device. The best place to call this method is in the implmentation of the ICDeviceBrowser delegate method "deviceBrowser:didAddDevice:moreComing:", if the "moreComing" parameter passed to the delegate is "NO"; or in the delegate method "deviceBrowserDidEnumerateLocalDevices:".
  */
  func preferredDevice() -> ICDevice

  /*! 
    @method init
    @abstract This is the designated initializer.
  */
  init()

  /*! 
    @method start:
    @abstract This message tells the receiver to start looking for devices.
    @discussion Make sure that the receiver's delegate is set prior to sending this message; otherwise this message will be ignored. The messages the delegate can expect to receive are described by ICDeviceBrowserDelegate protocol.
  */
  func start()

  /*! 
    @method stop:
    @abstract This method tells the receiver to stop looking for devices.
    @discussion This will free all device instances that are not in use.
  */
  func stop()
}
class ICScannerBandData : NSObject {

  /*!
   @property fullImageWidth
   @abstract Describes the full image width of the banded image.
   
   */
  var fullImageWidth: Int { get }

  /*!
   @property fullImageHeight
   @abstract Describes the full image height of the banded image.
   
   */
  var fullImageHeight: Int { get }

  /*!
   @property bitsPerPixel
   @abstract Describes the number of bits per pixel for banded the image.
   
   */
  var bitsPerPixel: Int { get }

  /*!
   @property bitsPerComponent
   @abstract Describes the number of bits per component for the banded image.
   
   */
  var bitsPerComponent: Int { get }

  /*!
   @property numComponents
   @abstract Describes how many components are contained within the banded image.
   
   */
  var numComponents: Int { get }

  /*!
   @property bigEndian
   @abstract Describes if the banded image data is reported in big endian.
   
   */
  var isBigEndian: Bool { get }

  /*!
   @property pixelDataType
   @abstract Type of pixel data that is contained in the band.
   
   */
  var pixelDataType: ICScannerPixelDataType { get }

  /*!
   @property colorSyncProfilePath
   @abstract Returns the path to the color profile matching the banded data.
   
   */
  var colorSyncProfilePath: String? { get }

  /*!
   @property bytesPerRow
   @abstract Descries how many bytes are in each image band row.
   
   */
  var bytesPerRow: Int { get }

  /*!
   @property dataStartRow
   @abstract Describes the start row of the image band.
   
   */
  var dataStartRow: Int { get }

  /*!
   @property dataNumRows
   @abstract Describes the number of rows contained in the image band.
   
   */
  var dataNumRows: Int { get }

  /*!
   @property dataSize
   @abstract Describes the actual data size of the image band buffer.
   
   */
  var dataSize: Int { get }

  /*!
   @property dataBuffer
   @abstract The pointer to the data buffer object.
   
   */
  var dataBuffer: NSData? { get }
  init()
}

/*!
    @const      ICScannerStatusWarmingUp
    @abstract   ICScannerStatusWarmingUp
    @discussion A non-localized notification string to indicate that the scanner is warming up.
*/
let ICScannerStatusWarmingUp: String

/*!
    @const      ICScannerStatusWarmUpDone
    @abstract   ICScannerStatusWarmUpDone
    @discussion A non-localized notification string to indicate that the scanner has warmed up.
*/
let ICScannerStatusWarmUpDone: String

/*!
    @const      ICScannerStatusRequestsOverviewScan
    @abstract   ICScannerStatusRequestsOverviewScan
    @discussion A non-localized notification string to indicate that the scanner is requesting an overview scan to be performed.
*/
let ICScannerStatusRequestsOverviewScan: String

/*!
  @ICScannerTransferMode
  @abstract Transfer mode to be used when transferring scan data from the scanner functional unit.
  @constant ICScannerTransferModeFileBased Save the scan as a file.
  @constant ICScannerTransferModeMemoryBased Transfer the scan as data.
*/
enum ICScannerTransferMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case FileBased
  case MemoryBased
}

/*! 
  @protocol ICScannerDeviceDelegate <ICDeviceDelegate>
  @abstract A delegate of ICScannerDevice must conform to ICScannerDeviceDelegate protocol.
  @discussion The ICScannerDeviceDelegate protocol inherits from the ICDeviceDelegate protocol.
*/
protocol ICScannerDeviceDelegate : ICDeviceDelegate {

  /*! 
    @method scannerDeviceDidBecomeAvailable:
    @abstract This message is sent when another client closes an open session on the scanner.
    @discusson Scanners require exclusive access, only one client can open a session on a scanner. The scanner is available if it does not have a session opened by another client. Attempting to open a session on a scanner that already has an open session for another client will result in an error. A client that wants to open a session on a scanner as soon as it is available should implement this method and send "requestOpenSession" message to scanner object from that method.
  */
  optional func scannerDeviceDidBecomeAvailable(scanner: ICScannerDevice)

  /*! 
    @method scannerDevice:didSelectFunctionalUnit:error:
    @abstract This message is sent when a functional unit is selected on the scanner device.
    @discusson A functional unit is selected immediately after the scanner device is instantiated and in response to "requestSelectFunctionalUnit:" message.
  */
  optional func scannerDevice(scanner: ICScannerDevice, didSelect functionalUnit: ICScannerFunctionalUnit, error: NSError?)

  /*! 
   @method scannerDevice:didScanToURL:
   @abstract This message is sent when the scanner device receives the requested scan. If selectedFunctionalUnit is a document feeder, then this message will be sent once for each scanned page.
   @discusson This message is sent when the scanner device receives the requested scan. If selectedFunctionalUnit is a document feeder, then this message will be sent once for each scanned page.
   */
  optional func scannerDevice(scanner: ICScannerDevice, didScanTo url: NSURL)

  /*! 
   @method scannerDevice:didScanToBandData:
   @abstract This message is sent when the scanner device receives the requested scan progress notification and a band of data is sent for each notification received.
   @discusson In memory transfer mode, this will send a band of size that has been selected by the client via the maxMemoryBandSize property.
   */
  optional func scannerDevice(scanner: ICScannerDevice, didScanTo data: ICScannerBandData)

  /*! 
    @method scannerDevice:didCompleteOverviewScanWithError:
    @abstract This message is sent after the scanner device completes an overview scan.
    @discusson This message is sent after the scanner device completes an overview scan.
  */
  optional func scannerDevice(scanner: ICScannerDevice, didCompleteOverviewScanWithError error: NSError?)

  /*! 
    @method scannerDevice:didCompleteScanWithError:
    @abstract This message is sent after the scanner device completes a scan.
    @discusson This message is sent after the scanner device completes a scan.
  */
  optional func scannerDevice(scanner: ICScannerDevice, didCompleteScanWithError error: NSError?)
}

/*! 
  @class ICScannerDevice
  @abstract ICScannerDevice is a concrete subclass of ICDevice class. ICDeviceBrowser creates instances of this class.
  @discussion In this release, an instance of ICScannerDevice class is intended to be used by the ICScannerDeviceView object. The ICScannerDeviceView class encapsulates the complexities of setting scan parameters, performing scans and saving the result. The developer should consider using ICScannerDeviceView instead of building their own views using the ICScannerDevice object.
*/
class ICScannerDevice : ICDevice {

  /*!
      @property availableFunctionalUnitTypes
      @abstract ￼An array of functional unit types available on this scanner device. This is an array of NSNumber objects whose values are of type ICScannerFunctionalUnitType.
  
  */
  var availableFunctionalUnitTypes: [NSNumber] { get }

  /*!
      @property selectedFunctionalUnit
      @abstract ￼The currently selected functional unit on the scanner device.
  
  */
  var selectedFunctionalUnit: ICScannerFunctionalUnit { get }

  /*!
      @property transferMode
      @abstract ￼The transfer mode for scanned document.
  
  */
  var transferMode: ICScannerTransferMode

  /*!
   @property maxMemoryBandSize
   @abstract ￼The total maximum band size requested when performing a ICScannerTransferModeMemoryBased.
   
   */
  var maxMemoryBandSize: UInt32

  /*!
      @property downloadsDirectory
      @abstract ￼The downloads directory.
  
  */
  var downloadsDirectory: NSURL

  /*!
      @property documentName
      @abstract ￼The document name.
  
  */
  var documentName: String

  /*!
      @property documentUTI
      @abstract ￼The document UTI. Currently supported UTIs are: kUTTypeJPEG, kUTTypeJPEG2000, kUTTypeTIFF, kUTTypePNG etc.
  
  */
  var documentUTI: String

  /*! 
    @method requestSelectFunctionalUnit:delegate:selector:contextInfo:
    @abstract Requests the scanner device to select a functional unit.
    @discussion When this request is completed, the delegate will be notified using the 'scannerDevice:didSelectFunctionalUnit:error:' message.
  */
  func requestSelect(type: ICScannerFunctionalUnitType)

  /*! 
    @method requestOverviewScan
    @abstract Starts an overview scan on selectedFunctionalUnit.
    @discussion When this request is completed, the delegate will be notified using the 'scannerDevice:didCompleteOverviewScanWithError:' message. The content of error returned should be examined to determine if the request completed successfully.
  */
  func requestOverviewScan()

  /*! 
    @method requestScan
    @abstract Starts a scan on selectedFunctionalUnit.
    @discussion When this request is completed, the delegate will be notified using the 'scannerDevice:didCompleteScanWithError:' message. The content of error returned should be examined to determine if the request completed successfully.
  */
  func requestScan()

  /*! 
    @method cancelScan
    @abstract Cancels the current scan operation started by sending a 'requestOverviewScan' or 'requestScan'.
  */
  func cancelScan()
  init()
}

/*!
  @ICScannerFunctionalUnitType
  @abstract Scanner Functional Unit Types
  @constant ICScannerFunctionalUnitTypeFlatbed Flatbed functional unit.
  @constant ICScannerFunctionalUnitTypePositiveTransparency Transparency functional unit for scanning positives.
  @constant ICScannerFunctionalUnitTypeNegativeTransparency Transparency functional unit for scanning negatives.
  @constant ICScannerFunctionalUnitTypeDocumentFeeder Document feeder functional unit.
*/
enum ICScannerFunctionalUnitType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Flatbed
  case PositiveTransparency
  case NegativeTransparency
  case DocumentFeeder
}

/*!
  @ICScannerMeasurementUnit
  @abstract Unit of measurement used by the scanner. This corresponds to values used for ICAP_UNITS as defined in the TWAIN Specification.
  @constant ICScannerMeasurementUnitInches      1 inch  = 2.54         cm
  @constant ICScannerMeasurementUnitCentimeters 1 cm    = 1.00         cm or 1/2.54 inches
  @constant ICScannerMeasurementUnitPicas       1 pica  = .42333333    cm or 1/6    inches
  @constant ICScannerMeasurementUnitPoints      1 point = .0352777775  cm or 1/72   inches
  @constant ICScannerMeasurementUnitTwips       1 twip  = .0001763888  cm or 1/1440 inches
  @constant ICScannerMeasurementUnitPixels      
*/
enum ICScannerMeasurementUnit : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Inches
  case Centimeters
  case Picas
  case Points
  case Twips
  case Pixels
}

/*!
  @ICScannerBitDepth
  @abstract Bits per channel in the scanned image.
  @constant ICScannerBitDepth1Bit 1-bit image.
  @constant ICScannerBitDepth8Bits Image with 8 bits per channel.
  @constant ICScannerBitDepth16Bits Image with 16 bits per channel.
*/
enum ICScannerBitDepth : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Depth1Bit
  case Depth8Bits
  case Depth16Bits
}

/*!
  @ICScannerColorDataFormatType
  @abstract Identifies color data formats. Only relevant for multi-channel data. Corresponds to "ICAP_PLANARCHUNKY" of the TWAIN Specification.
  @constant ICScannerColorDataFormatTypeChunky For multi-channel data (e.g., RGB) data from all channels are interleaved.
  @constant ICScannerColorDataFormatTypePlanar For multi-channel data (e.g., RGB) each channel is transferred sequentially.
*/
enum ICScannerColorDataFormatType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Chunky
  case Planar
}

/*!
  @ICScannerPixelDataType
  @abstract Pixel data types. Corresponds to "ICAP_PIXELTYPE" of the TWAIN Specification.
  @constant ICScannerPixelDataTypeBW Monochrome 1 bit pixel image.
  @constant ICScannerPixelDataTypeGray 8 bit pixel Gray color space.
  @constant ICScannerPixelDataTypeRGB Color image RGB color space.
  @constant ICScannerPixelDataTypePalette Indexed Color image.
  @constant ICScannerPixelDataTypeCMY Color image in CMY color space.
  @constant ICScannerPixelDataTypeCMYK Color image in CMYK color space.
  @constant ICScannerPixelDataTypeYUV Color image in YUV color space.
  @constant ICScannerPixelDataTypeYUVK Color image in YUVK color space.
  @constant ICScannerPixelDataTypeCIEXYZ Color image in CIEXYZ color space.
*/
enum ICScannerPixelDataType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case BW
  case Gray
  case RGB
  case Palette
  case CMY
  case CMYK
  case YUV
  case YUVK
  case CIEXYZ
}

/*!
  @ICScannerDocumentType
  @abstract Document size types. Corresponds to "ICAP_SUPPORTEDSIZES" used by the Image Catpure scanner modules. Also refer to TWAIN 1.9 Specification, page 9-483.
  @constant ICScannerDocumentTypeDefault This is the platten size. Not valid for scanners without a platten.
  @constant ICScannerDocumentTypeA4             A4,                               210.00 mm x  297.00 mm
  @constant ICScannerDocumentTypeB5             B5/JIS B5,                        182.00 mm x  257.00 mm
  @constant ICScannerDocumentTypeUSLetter       US Letter,        8.5” x 11.0”,   215.90 mm x  279.40 mm
  @constant ICScannerDocumentTypeUSLegal        US Legal,         8.5” x 14.0”,   215.90 mm x  355.60 mm
  @constant ICScannerDocumentTypeA5             A5,                               148.00 mm x  210.00 mm
  @constant ICScannerDocumentTypeISOB4          B4/ISO B4,                        250.00 mm x  353.00 mm
  @constant ICScannerDocumentTypeISOB6          B6/ISO B6,                        125.00 mm x  176.00 mm
  @constant ICScannerDocumentTypeUSLedger       US Ledger,         11” x 17.0”,   279.40 mm x  431.80 mm
  @constant ICScannerDocumentTypeUSExecutive    US Executive,    7.25" x 10.5",   184.15 mm x  266.70 mm
  @constant ICScannerDocumentTypeA3             A3,                               297.00 mm x  420.00 mm
  @constant ICScannerDocumentTypeISOB3          B3/ISO B3,                        353.00 mm x  500.00 mm
  @constant ICScannerDocumentTypeA6             A6,                               105.00 mm x  148.00 mm
  @constant ICScannerDocumentTypeC4             C4,                               229.00 mm x  324.00 mm
  @constant ICScannerDocumentTypeC5             C5,                               162.00 mm x  229.00 mm
  @constant ICScannerDocumentTypeC6             C6,                               114.00 mm x  162.00 mm
  @constant ICScannerDocumentType4A0            4A0,                             1682.00 mm x 2378.00 mm
  @constant ICScannerDocumentType2A0            2A0,                             1189.00 mm x 1682.00 mm
  @constant ICScannerDocumentTypeA0             A0,                               841.00 mm x 1189.00 mm
  @constant ICScannerDocumentTypeA1             A1,                               594.00 mm x  841.00 mm
  @constant ICScannerDocumentTypeA2             A2,                               420.00 mm x  594.00 mm
  @constant ICScannerDocumentTypeA7             A7,                                74.00 mm x  105.00 mm
  @constant ICScannerDocumentTypeA8             A8,                                52.00 mm x   74.00 mm
  @constant ICScannerDocumentTypeA9             A9,                                37.00 mm x   52.00 mm
  @constant ICScannerDocumentType10             A10,                               26.00 mm x   37.00 mm
  @constant ICScannerDocumentTypeISOB0          ISO B0,                          1000.00 mm x 1414.00 mm
  @constant ICScannerDocumentTypeISOB1          ISO B1,                           707.00 mm x 1000.00 mm
  @constant ICScannerDocumentTypeISOB2          ISO B2,                           500.00 mm x  707.00 mm
  @constant ICScannerDocumentTypeISOB5          ISO B5,                           176.00 mm x  250.00 mm
  @constant ICScannerDocumentTypeISOB7          ISO B7,                            88.00 mm x  125.00 mm
  @constant ICScannerDocumentTypeISOB8          ISO B8,                            62.00 mm x   88.00 mm     
  @constant ICScannerDocumentTypeISOB9          ISO B9,                            44.00 mm x   62.00 mm
  @constant ICScannerDocumentTypeISOB10         ISO B10,                           31.00 mm x   44.00 mm
  @constant ICScannerDocumentTypeJISB0          JIS B0,                          1030.00 mm x 1456.00 mm
  @constant ICScannerDocumentTypeJISB1          JIS B1,                           728.00 mm x 1030.00 mm
  @constant ICScannerDocumentTypeJISB2          JIS B2,                           515.00 mm x  728.00 mm
  @constant ICScannerDocumentTypeJISB3          JIS B3,                           364.00 mm x  515.00 mm
  @constant ICScannerDocumentTypeJISB4          JIS B4,                           257.00 mm x  364.00 mm
  @constant ICScannerDocumentTypeJISB6          JIS B6,                           128.00 mm x  182.00 mm
  @constant ICScannerDocumentTypeJISB7          JIS B7,                            91.00 mm x  128.00 mm 
  @constant ICScannerDocumentTypeJISB8          JIS B8,                            64.00 mm x   91.00 mm
  @constant ICScannerDocumentTypeJISB9          JIS B9,                            45.00 mm x   64.00 mm
  @constant ICScannerDocumentTypeJISB10         JIS B10,                           32.00 mm x   45.00 mm
  @constant ICScannerDocumentTypeC0             C0,                               917.00 mm x 1297.00 mm
  @constant ICScannerDocumentTypeC1             C1,                               648.00 mm x  917.00 mm
  @constant ICScannerDocumentTypeC2             C2,                               458.00 mm x  648.00 mm 
  @constant ICScannerDocumentTypeC3             C3,                               324.00 mm x  458.00 mm 
  @constant ICScannerDocumentTypeC7             C7,                                81.00 mm x  114.00 mm
  @constant ICScannerDocumentTypeC8             C8,                                57.00 mm x   81.00 mm 
  @constant ICScannerDocumentTypeC9             C9,                                40.00 mm x   57.00 mm
  @constant ICScannerDocumentTypeC10            C10,                               28.00 mm x   40.00 mm
  @constant ICScannerDocumentTypeUSStatement    US Statement,     5.5” x  8.5”,   139.70 mm x  215.90 mm
  @constant ICScannerDocumentTypeBusinessCard   Business Card,                     90.00 mm x   55.00 mm 

  @constant ICScannerDocumentTypeE              Japanese E,      3.25" x 4.75"     82.55 mm x  120.65 mm      11:16
  @constant ICScannerDocumentType3R             3R,              3.5"  x 5"        88.90 mm x  127.00 mm       7:10
  @constant ICScannerDocumentType4R             4R,              4"    x 6"       101.60 mm x  152.40 mm       2:3
  @constant ICScannerDocumentType5R             5R,              5"    x 7"       127.00 mm x  177.80 mm       5:7
  @constant ICScannerDocumentType6R             6R,              6"    x 8"       152.40 mm x  203.20 mm       3:4
  @constant ICScannerDocumentType8R             8R,              8"    x 10"      203.20 mm x  254.00 mm       4:5
  @constant ICScannerDocumentTypeS8R            S8R              8"    x 12"      203.20 mm x  304.80 mm       2:3
  @constant ICScannerDocumentType10R            10R,             10"   x 12"      254.00 mm x  304.80 mm       5:6
  @constant ICScannerDocumentTypeS10R           S10R,            10"   x 15"      254.00 mm x  381.00 mm       2:3
  @constant ICScannerDocumentType11R            11R,             11"   x 14"      279.40 mm x  355.60 mm      11:14
  @constant ICScannerDocumentType12R            12R,             12"   x 15"      304.80 mm x  381.00 mm       4:5
  @constant ICScannerDocumentTypeS12R           S12R,            12"   x 18"      304.80 mm x  457.20 mm       2:3
  @constant ICScannerDocumentTypeS12R           S12R,            12"   x 18"      304.80 mm x  457.20 mm       2:3

  @constant ICScannerDocumentType110            Instamatic 110,                    13.00 mm x   17.00 mm
  @constant ICScannerDocumentTypeAPSH           APS High Definition,               30.20 mm x   16.70 mm
  @constant ICScannerDocumentTypeAPSC           APS Classic,                       25.10 mm x   16.70 mm
  @constant ICScannerDocumentTypeAPSP           APS Panoramic,                     30.20 mm x    9.50 mm
  @constant ICScannerDocumentType135            Standard 35 mm,                    36.00 mm x   24.00 mm
  @constant ICScannerDocumentTypeMF             Medium Format,                     60.00 mm x   60.00 mm
  @constant ICScannerDocumentTypeLF             Large Format,                     100.00 mm x  120.00 mm
*/
enum ICScannerDocumentType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case TypeDefault
  case TypeA4
  case TypeB5
  case TypeUSLetter
  case TypeUSLegal
  case TypeA5
  case TypeISOB4
  case TypeISOB6
  case TypeUSLedger
  case TypeUSExecutive
  case TypeA3
  case TypeISOB3
  case TypeA6
  case TypeC4
  case TypeC5
  case TypeC6
  case Type4A0
  case Type2A0
  case TypeA0
  case TypeA1
  case TypeA2
  case TypeA7
  case TypeA8
  case TypeA9
  case Type10
  case TypeISOB0
  case TypeISOB1
  case TypeISOB2
  case TypeISOB5
  case TypeISOB7
  case TypeISOB8
  case TypeISOB9
  case TypeISOB10
  case TypeJISB0
  case TypeJISB1
  case TypeJISB2
  case TypeJISB3
  case TypeJISB4
  case TypeJISB6
  case TypeJISB7
  case TypeJISB8
  case TypeJISB9
  case TypeJISB10
  case TypeC0
  case TypeC1
  case TypeC2
  case TypeC3
  case TypeC7
  case TypeC8
  case TypeC9
  case TypeC10
  case TypeUSStatement
  case TypeBusinessCard
  case TypeE
  case Type3R
  case Type4R
  case Type5R
  case Type6R
  case Type8R
  case TypeS8R
  case Type10R
  case TypeS10R
  case Type11R
  case Type12R
  case TypeS12R
  case Type110
  case TypeAPSH
  case TypeAPSC
  case TypeAPSP
  case Type135
  case TypeMF
  case TypeLF
}

/*!
  @ICScannerFunctionalUnitState
  @abstract A flag to indicate the scanner functional unit's state
  @constant ICScannerStateReady The scanner functional unit is ready for operation.
  @constant ICScannerStateScanInProgress The scanner functional unit is performing a scan.
  @constant ICScannerStateOverviewScanInProgress The scanner functional unit is performing an overview scan.
*/
enum ICScannerFunctionalUnitState : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Ready
  case ScanInProgress
  case OverviewScanInProgress
}

/*!
  @ICScannerFeatureType
  @abstract Scanner Feature Types
  @constant ICScannerFeatureTypeEnumeration This feature can have one of several discrete values, strings or numbers.
  @constant ICScannerFeatureTypeRange This value of this feature lies within a range.
  @constant ICScannerFeatureTypeBoolean The value of this feature can be YES or NO.
*/
enum ICScannerFeatureType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Enumeration
  case Range
  case Boolean
  case Template
}

/*!
    @class ICScannerFeature
    @abstract ICScannerFeature class is an abstract base class used to describe a scanner feature. ImageCaptureCore defines three concrete subclasses of ICScannerFeature: ICScannerFeatureEnumeration, ICScannerFeatureRange and ICScannerFeatureBoolean.
    @discussion The scanner functional units may have one or more instances of these classes to allow users to choose scanner-specific settings or operations before performing a scan.
*/
class ICScannerFeature : NSObject {

  /*!
      @property type
      @abstract ￼Scanner feature type.
  
  */
  var type: ICScannerFeatureType { get }

  /*!
      @property internalName
      @abstract ￼The internal name of this feature.
  
  */
  var internalName: String? { get }

  /*!
      @property humanReadableName
      @abstract The human readable name of this feature.
  
  */
  var humanReadableName: String? { get }

  /*!
      @property tooltip
      @abstract ￼Tooltip text describing the feature.
  
  */
  var tooltip: String? { get }
  init()
}

/*!
    @class ICScannerFeatureEnumeration
    @abstract ICScannerFeatureEnumeration object is used to represent a feature of a scanner functional unit that can have one of several discrete values.
    @discussion 
*/
class ICScannerFeatureEnumeration : ICScannerFeature {

  /*!
      @property currentValue
      @abstract The current value. The current value can be set to one of the possible values in the "values" property below￼.
  
  */
  unowned(unsafe) var currentValue: @sil_unmanaged AnyObject

  /*!
      @property defaultValue
      @abstract ￼The default value. The default value can be set to one of the possible values in the "values" property below.
  
  */
  var defaultValue: AnyObject { get }

  /*!
      @property values
      @abstract An array of possible values. All items in this array must be of same type￼.
  
  */
  var values: [NSNumber] { get }

  /*!
      @property menuItemLabels
      @abstract ￼The human readable menu item labels to be used in a menu to allow the user to select the current value from an array of possible values.
  
  */
  var menuItemLabels: [String] { get }

  /*!
      @property menuItemLabelsTooltips
      @abstract ￼Tooltip text associated with the menu items.
  
  */
  var menuItemLabelsTooltips: [String] { get }
  init()
}

/*!
    @class ICScannerFeatureRange
    @abstract ICScannerFeatureRange object is used to represent a property of a scanner functional unit whose value lies within a range.
    @discussion 
*/
class ICScannerFeatureRange : ICScannerFeature {

  /*!
      @property currentValue
      @abstract ￼The current value. Attempting to set the current value to a value that is not coincident with a step will result in a value corresponding to the nearest step being assigned to the current value.
  
  */
  var currentValue: CGFloat

  /*!
      @property defaultValue
      @abstract The default value￼. Attempting to set the default value to a value that is not coincident with a step will result in a value corresponding to the nearest step being assigned to the default value.
  
  */
  var defaultValue: CGFloat { get }

  /*!
      @property minValue
      @abstract The minimum value.
  
  */
  var minValue: CGFloat { get }

  /*!
      @property maxValue
      @abstract ￼The maximum value.
  
  */
  var maxValue: CGFloat { get }

  /*!
      @property stepSize
      @abstract ￼The step size.
  
  */
  var stepSize: CGFloat { get }
  init()
}

/*!
    @class ICScannerFeatureBoolean
    @abstract ICScannerFeatureBoolean object is used to represent a property of a scanner functional unit whose value can be YES or NO.
    @discussion 
*/
class ICScannerFeatureBoolean : ICScannerFeature {

  /*!
      @property value
      @abstract ￼The value of this feature.
  
  */
  var value: Bool
  init()
}

/*!
    @class ICScannerFeatureTemplate
    @abstract ICScannerFeatureTemplate object is used to define a group of one or more rectangular scan areas that can be used with a scanner functional unit.
    @discussion 
*/
class ICScannerFeatureTemplate : ICScannerFeature {
  var targets: [NSMutableArray] { get }
  init()
}

/*!
    @class ICScannerFunctionalUnit
    @abstract ICScannerFunctionalUnit is an abstract class that represents a scanner functiona unit. ImageCaptureCore defines three concrete subclasses of ICScannerFunctionalUnit: ICScannerFunctionalUnitFlatbed, ICScannerFunctionalUnitPositiveTransparency, ICScannerFunctionalUnitNegativeTransparency and ICScannerFunctionalUnitDocumentFeeder. ICScannerDevice creates instances of these concrete subclasses.
*/
class ICScannerFunctionalUnit : NSObject {

  /*!
      @property type
      @abstract ￼Functional unit type.
  
  */
  var type: ICScannerFunctionalUnitType { get }

  /*!
      @property pixelDataType
      @abstract ￼The pixel data type.
  
  */
  var pixelDataType: ICScannerPixelDataType

  /*!
      @property supportedBitDepths
      @abstract ￼Supported bit depths. The values in this set are valid values defined by ICScannerBitDepth.
  
  */
  var supportedBitDepths: NSIndexSet { get }

  /*!
      @property bitDepth
      @abstract ￼The bit depth to use when performing the final scan. This will always be one of the supported bit depths.
  
  */
  var bitDepth: ICScannerBitDepth

  /*!
      @property supportedMeasurementUnits
      @abstract ￼Supported measurement units. The values in this set are valid values defined by ICScannerMeasurementUnit.
  
  */
  var supportedMeasurementUnits: NSIndexSet { get }

  /*!
      @property measurementUnit
      @abstract ￼Current measurement unit. This will always be one of the supported measurement units.
  
  */
  var measurementUnit: ICScannerMeasurementUnit

  /*!
      @property supportedResolutions
      @abstract ￼Supported scan resolutions in DPI.
  
  */
  var supportedResolutions: NSIndexSet { get }

  /*!
      @property preferredResolutions
      @abstract ￼Preferred scan resolutions in DPI.
  
  */
  var preferredResolutions: NSIndexSet { get }

  /*!
      @property resolution
      @abstract ￼Current scan resolution. This will always be one of the supported resolution values.
  
  */
  var resolution: Int

  /*!
      @property nativeXResolution
      @abstract ￼Optical resolution along the X axis.
  
  */
  var nativeXResolution: Int { get }

  /*!
      @property nativeYResolution
      @abstract ￼Optical resolution along the Y axis.
  
  */
  var nativeYResolution: Int { get }

  /*!
      @property supportedScaleFactors
      @abstract ￼Supported scale factors in percentage.
  
  */
  var supportedScaleFactors: NSIndexSet { get }

  /*!
      @property preferredScaleFactors
      @abstract ￼Preferred scale factors in percentage.
  
  */
  var preferredScaleFactors: NSIndexSet { get }

  /*!
      @property scaleFactor
      @abstract ￼Current scale factor. This will always be one of the supported scale factor values.
  
  */
  var scaleFactor: Int

  /*!
      @property templates
      @abstract An array of objects of type ICScannerFeatureTemplate.
  
  */
  var templates: [ICScannerFeatureTemplate] { get }

  /*!
      @property vendorFeatures
      @abstract An array of objects of type ICScannerFeature.
  
  */
  var vendorFeatures: [ICScannerFeature]? { get }

  /*!
      @property physicalSize
      @abstract ￼Physical size of the scan area in current measurement unit.
  
  */
  var physicalSize: NSSize { get }

  /*!
      @property scanArea
      @abstract ￼This property along with scanAreaOrientation describes the area to be scanned.
  
  */
  var scanArea: NSRect

  /*!
      @property scanAreaOrientation
      @abstract ￼Desired orientation of the scan area. This property along with scanArea describes the area to be scanned.
      @discussion This property is set to ICEXIFOrientation1 initially. This property is not used by the ICScannerFunctionalUnitDocumentFeeder subclass.
  
  */
  var scanAreaOrientation: ICEXIFOrientationType

  /*!
      @property acceptsThresholdForBlackAndWhiteScanning
      @abstract ￼Indicates if this functional unit accepts threshold value to be used when performing a scan in black & white.
  
  */
  var acceptsThresholdForBlackAndWhiteScanning: Bool { get }

  /*!
      @property usesThresholdForBlackAndWhiteScanning
      @abstract ￼Indicates if this functional unit uses threshold value to be used when performing a scan in black & white.
  
  */
  var usesThresholdForBlackAndWhiteScanning: Bool

  /*!
      @property defaultThresholdForBlackAndWhiteScanning
      @abstract ￼Default threshold value used when performing a scan in black & white. This value is from 0 to 255.
  
  */
  var defaultThresholdForBlackAndWhiteScanning: UInt8 { get }

  /*!
      @property thresholdForBlackAndWhiteScanning
      @abstract ￼Threshold value to be used when performing a scan in black & white. This value should be from 0 to 255.
  
  */
  var thresholdForBlackAndWhiteScanning: UInt8

  /*!
      @property state
      @abstract ￼Indicates the current state of the functional unit.
  
  */
  var state: ICScannerFunctionalUnitState { get }

  /*!
      @property scanInProgress
      @abstract ￼Indicates if a scan is in progress.
  
  */
  var scanInProgress: Bool { get }

  /*!
      @property scanProgressPercentDone
      @abstract ￼Indicates percentage of scan completed.
  
  */
  var scanProgressPercentDone: CGFloat { get }

  /*!
      @property canPerformOverviewScan
      @abstract ￼Indicates if this functional unit can perfrom an overview scan. Not all functional units can perform an overview scan. For example, a document feeder or a sheet feeder unit cannot perform an overview scan.
  
  */
  var canPerformOverviewScan: Bool { get }

  /*!
      @property overviewScanInProgress
      @abstract ￼Indicates if an overview scan is in progress.
  
  */
  var overviewScanInProgress: Bool { get }

  /*!
      @property overviewImage
      @abstract ￼Overview scan image. This property will be NULL for functional units that do not support overview scans.
  
  */
  var overviewImage: CGImage? { get }

  /*!
      @property overviewResolution
      @abstract ￼Overview image resolution. Value assigned to this will be contrained by resolutions allowed by the device.
  
  */
  var overviewResolution: Int
  init()
}

/*!
    @class ICScannerFunctionalUnitFlatbed
    @abstract ICScannerFunctionalUnitFlatbed is a concrete subclass of ICScannerFunctionalUnit class. ICScannerDevice creates instances of this class.
    @discussion This represents the flatbed  unit on the scanner.
*/
class ICScannerFunctionalUnitFlatbed : ICScannerFunctionalUnit {

  /*!
      @property supportedDocumentTypes
      @abstract ￼Supported document types. The values in this set are valid values defined by ICScannerDocumentType.
  
  */
  var supportedDocumentTypes: NSIndexSet { get }

  /*!
      @property documentType
      @abstract ￼Current document type. This will always be one of the supported document types.
  
  */
  var documentType: ICScannerDocumentType

  /*!
      @property documentSize
      @abstract ￼Document size of the current document type expressed in current measurement unit.
  
  */
  var documentSize: NSSize { get }
  init()
}

/*!
    @class ICScannerFunctionalUnitPositiveTransparency
    @abstract ICScannerFunctionalUnitPositiveTransparency is a concrete subclass of ICScannerFunctionalUnit class. ICScannerDevice creates instances of this class.
    @discussion This represents the transparency unit on the scanner for scanning postives
*/
class ICScannerFunctionalUnitPositiveTransparency : ICScannerFunctionalUnit {

  /*!
      @property supportedDocumentTypes
      @abstract ￼Supported document types. The values in this set are valid values defined by ICScannerDocumentType.
  
  */
  var supportedDocumentTypes: NSIndexSet { get }

  /*!
      @property documentType
      @abstract ￼Current document type. This will always be one of the supported document types.
  
  */
  var documentType: ICScannerDocumentType

  /*!
      @property documentSize
      @abstract ￼Document size of the current document type expressed in current measurement unit.
  
  */
  var documentSize: NSSize { get }
  init()
}

/*!
    @class ICScannerFunctionalUnitNegativeTransparency
    @abstract ICScannerFunctionalUnitNegativeTransparency is a concrete subclass of ICScannerFunctionalUnit class. ICScannerDevice creates instances of this class.
    @discussion This represents the transparency unit on the scanner for scanning negatives.
*/
class ICScannerFunctionalUnitNegativeTransparency : ICScannerFunctionalUnit {

  /*!
      @property supportedDocumentTypes
      @abstract ￼Supported document types. The values in this set are valid values defined by ICScannerDocumentType.
  
  */
  var supportedDocumentTypes: NSIndexSet { get }

  /*!
      @property documentType
      @abstract ￼Current document type. This will always be one of the supported document types.
  
  */
  var documentType: ICScannerDocumentType

  /*!
      @property documentSize
      @abstract ￼Document size of the current document type expressed in current measurement unit.
  
  */
  var documentSize: NSSize { get }
  init()
}

/*!
    @class ICScannerFunctionalUnitDocumentFeeder
    @abstract ICScannerFunctionalUnitDocumentFeeder is a concrete subclass of ICScannerFunctionalUnit class. ICScannerDevice creates instances of this class.
    @discussion This represents the document feeder unit on the scanner.
*/
class ICScannerFunctionalUnitDocumentFeeder : ICScannerFunctionalUnit {

  /*!
      @property supportedDocumentTypes
      @abstract ￼Supported document types. The values in this set are valid values defined by ICScannerDocumentType.
  
  */
  var supportedDocumentTypes: NSIndexSet { get }

  /*!
      @property documentType
      @abstract ￼Current document type. This will always be one of the supported document types.
  
  */
  var documentType: ICScannerDocumentType

  /*!
      @property documentSize
      @abstract ￼Document size of the current document type expressed in current measurement unit.
  
  */
  var documentSize: NSSize { get }

  /*!
      @property supportsDuplexScanning
      @abstract ￼Indicates whether duplex scanning is supported.
  
  */
  var supportsDuplexScanning: Bool { get }

  /*!
      @property duplexScanningEnabled
      @abstract ￼Indicates whether duplex scanning is enabled.
  
  */
  var duplexScanningEnabled: Bool

  /*!
      @property documentLoaded
      @abstract ￼Indicates whether the feeder has documents to scan.
      @discussion This value will change when the document is loaded or removed from the feeder, if the scanner module has the capability to detect this state.
  
  */
  var documentLoaded: Bool { get }

  /*!
      @property oddPageOrientation
      @abstract ￼Desired orientation of the odd pages of the scanned document.
      @discussion This property is set to ICEXIFOrientation1 initially. 
  
  */
  var oddPageOrientation: ICEXIFOrientationType

  /*!
      @property evenPageOrientation
      @abstract ￼Desired orientation of the even pages of the scanned document.
      @discussion This property is set to ICEXIFOrientation1 initially. 
  
  */
  var evenPageOrientation: ICEXIFOrientationType

  /*!
   @property reverseFeederPageOrder
   @abstract ￼Indicates whether the document feeder reads pages from back to front.
   
   */
  var reverseFeederPageOrder: Bool { get }
  init()
}
