
let ICCameraDeviceCanTakePicture: String
let ICCameraDeviceCanTakePictureUsingShutterReleaseOnCamera: String
let ICCameraDeviceCanDeleteOneFile: String
let ICCameraDeviceCanDeleteAllFiles: String
let ICCameraDeviceCanSyncClock: String
let ICCameraDeviceCanReceiveFile: String
let ICCameraDeviceCanAcceptPTPCommands: String
let ICCameraDeviceSupportsFastPTP: String
let ICDownloadsDirectoryURL: String
let ICSaveAsFilename: String
let ICSavedFilename: String
let ICSavedAncillaryFiles: String
let ICOverwrite: String
let ICDeleteAfterSuccessfulDownload: String
let ICDownloadSidecarFiles: String
protocol ICCameraDeviceDelegate : ICDeviceDelegate {
  optional func cameraDevice(camera: ICCameraDevice, didAdd item: ICCameraItem)
  optional func cameraDevice(camera: ICCameraDevice, didAdd items: [ICCameraItem])
  optional func cameraDevice(camera: ICCameraDevice, didRemove item: ICCameraItem)
  optional func cameraDevice(camera: ICCameraDevice, didRemove items: [ICCameraItem])
  optional func cameraDevice(camera: ICCameraDevice, didRenameItems items: [ICCameraItem])
  optional func cameraDevice(scanner: ICCameraDevice, didCompleteDeleteFilesWithError error: NSError?)
  optional func cameraDeviceDidChangeCapability(camera: ICCameraDevice)
  optional func cameraDevice(camera: ICCameraDevice, didReceiveThumbnailFor item: ICCameraItem)
  optional func cameraDevice(camera: ICCameraDevice, didReceiveMetadataFor item: ICCameraItem)
  optional func cameraDevice(camera: ICCameraDevice, didReceivePTPEvent eventData: NSData)
  optional func deviceDidBecomeReady(withCompleteContentCatalog device: ICDevice)
  optional func cameraDevice(cameraDevice: ICCameraDevice, shouldGetThumbnailOf item: ICCameraItem) -> Bool
  optional func cameraDevice(cameraDevice: ICCameraDevice, shouldGetMetadataOf item: ICCameraItem) -> Bool
}
protocol ICCameraDeviceDownloadDelegate : NSObjectProtocol {
  optional func didDownloadFile(file: ICCameraFile, error: NSError?, options: [String : AnyObject]? = [:], contextInfo: UnsafeMutablePointer<Void>)
  optional func didReceiveDownloadProgress(for file: ICCameraFile, downloadedBytes: off_t, maxBytes: off_t)
}
class ICCameraDevice : ICDevice {
  var batteryLevelAvailable: Bool { get }
  var batteryLevel: Int { get }
  var contentCatalogPercentCompleted: Int { get }
  var contents: [ICCameraItem]? { get }
  var mediaFiles: [ICCameraItem]? { get }
  var timeOffset: NSTimeInterval { get }
  var isAccessRestrictedAppleDevice: Bool { get }
  var mountPoint: String? { get }
  var tetheredCaptureEnabled: Bool
  func files(ofType fileUTType: String) -> [String]
  func requestSyncClock()
  func requestEnableTethering()
  func requestDisableTethering()
  func requestTakePicture()
  func requestDeleteFiles(files: [ICCameraItem])
  func cancelDelete()
  func requestDownloadFile(file: ICCameraFile, options: [String : AnyObject]? = [:], downloadDelegate: ICCameraDeviceDownloadDelegate, didDownloadSelector selector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func cancelDownload()
  func requestUploadFile(fileURL: NSURL, options: [String : AnyObject]? = [:], uploadDelegate: AnyObject, didUploadSelector selector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func requestReadData(from file: ICCameraFile, atOffset offset: off_t, length: off_t, readDelegate: AnyObject, didReadDataSelector selector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func requestSendPTPCommand(command: NSData, outData data: NSData, sendCommandDelegate: AnyObject, didSendCommand selector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  init()
}
