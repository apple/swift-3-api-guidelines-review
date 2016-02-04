
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
  optional func cameraDevice(camera: ICCameraDevice, didAddItem item: ICCameraItem)
  optional func cameraDevice(camera: ICCameraDevice, didAddItems items: [ICCameraItem])
  optional func cameraDevice(camera: ICCameraDevice, didRemoveItem item: ICCameraItem)
  optional func cameraDevice(camera: ICCameraDevice, didRemoveItems items: [ICCameraItem])
  optional func cameraDevice(camera: ICCameraDevice, didRenameItems items: [ICCameraItem])
  optional func cameraDevice(scanner: ICCameraDevice, didCompleteDeleteFilesWithError error: NSError?)
  optional func cameraDeviceDidChangeCapability(camera: ICCameraDevice)
  optional func cameraDevice(camera: ICCameraDevice, didReceiveThumbnailForItem item: ICCameraItem)
  optional func cameraDevice(camera: ICCameraDevice, didReceiveMetadataForItem item: ICCameraItem)
  optional func cameraDevice(camera: ICCameraDevice, didReceivePTPEvent eventData: NSData)
  optional func deviceDidBecomeReadyWithCompleteContentCatalog(device: ICDevice)
  optional func cameraDevice(cameraDevice: ICCameraDevice, shouldGetThumbnailOfItem item: ICCameraItem) -> Bool
  optional func cameraDevice(cameraDevice: ICCameraDevice, shouldGetMetadataOfItem item: ICCameraItem) -> Bool
}
protocol ICCameraDeviceDownloadDelegate : NSObjectProtocol {
  optional func didDownloadFile(file: ICCameraFile, error: NSError?, options: [String : AnyObject]?, contextInfo: UnsafeMutablePointer<Void>)
  optional func didReceiveDownloadProgressForFile(file: ICCameraFile, downloadedBytes: off_t, maxBytes: off_t)
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
  func filesOfType(fileUTType: String) -> [String]
  func requestSyncClock()
  func requestEnableTethering()
  func requestDisableTethering()
  func requestTakePicture()
  func requestDeleteFiles(files: [ICCameraItem])
  func cancelDelete()
  func requestDownloadFile(file: ICCameraFile, options: [String : AnyObject]?, downloadDelegate: ICCameraDeviceDownloadDelegate, didDownloadSelector selector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func cancelDownload()
  func requestUploadFile(fileURL: NSURL, options: [String : AnyObject]?, uploadDelegate: AnyObject, didUploadSelector selector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func requestReadDataFromFile(file: ICCameraFile, atOffset offset: off_t, length: off_t, readDelegate: AnyObject, didReadDataSelector selector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func requestSendPTPCommand(command: NSData, outData data: NSData, sendCommandDelegate: AnyObject, didSendCommandSelector selector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  init()
}
