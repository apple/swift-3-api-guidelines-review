
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
  optional func cameraDevice(_ camera: ICCameraDevice, didAddItem item: ICCameraItem)
  optional func cameraDevice(_ camera: ICCameraDevice, didAddItems items: [ICCameraItem])
  optional func cameraDevice(_ camera: ICCameraDevice, didRemoveItem item: ICCameraItem)
  optional func cameraDevice(_ camera: ICCameraDevice, didRemoveItems items: [ICCameraItem])
  optional func cameraDevice(_ camera: ICCameraDevice, didRenameItems items: [ICCameraItem])
  optional func cameraDevice(_ scanner: ICCameraDevice, didCompleteDeleteFilesWithError error: NSError?)
  optional func cameraDeviceDidChangeCapability(_ camera: ICCameraDevice)
  optional func cameraDevice(_ camera: ICCameraDevice, didReceiveThumbnailForItem item: ICCameraItem)
  optional func cameraDevice(_ camera: ICCameraDevice, didReceiveMetadataForItem item: ICCameraItem)
  optional func cameraDevice(_ camera: ICCameraDevice, didReceivePTPEvent eventData: NSData)
  optional func deviceDidBecomeReadyWithCompleteContentCatalog(_ device: ICDevice)
  optional func cameraDevice(_ cameraDevice: ICCameraDevice, shouldGetThumbnailOfItem item: ICCameraItem) -> Bool
  optional func cameraDevice(_ cameraDevice: ICCameraDevice, shouldGetMetadataOfItem item: ICCameraItem) -> Bool
}
protocol ICCameraDeviceDownloadDelegate : NSObjectProtocol {
  optional func didDownloadFile(_ file: ICCameraFile, error error: NSError?, options options: [String : AnyObject]?, contextInfo contextInfo: UnsafeMutablePointer<Void>)
  optional func didReceiveDownloadProgressForFile(_ file: ICCameraFile, downloadedBytes downloadedBytes: off_t, maxBytes maxBytes: off_t)
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
  func filesOfType(_ fileUTType: String) -> [String]
  func requestSyncClock()
  func requestEnableTethering()
  func requestDisableTethering()
  func requestTakePicture()
  func requestDeleteFiles(_ files: [ICCameraItem])
  func cancelDelete()
  func requestDownloadFile(_ file: ICCameraFile, options options: [String : AnyObject]?, downloadDelegate downloadDelegate: ICCameraDeviceDownloadDelegate, didDownloadSelector selector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>)
  func cancelDownload()
  func requestUploadFile(_ fileURL: NSURL, options options: [String : AnyObject]?, uploadDelegate uploadDelegate: AnyObject, didUploadSelector selector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>)
  func requestReadDataFromFile(_ file: ICCameraFile, atOffset offset: off_t, length length: off_t, readDelegate readDelegate: AnyObject, didReadDataSelector selector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>)
  func requestSendPTPCommand(_ command: NSData, outData data: NSData, sendCommandDelegate sendCommandDelegate: AnyObject, didSendCommandSelector selector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>)
}
