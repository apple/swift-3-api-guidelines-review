
class OBEXFileTransferServices : Object {
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject!
  class func withOBEXSession(inOBEXSession: IOBluetoothOBEXSession!) -> Self!
  init!(obexSession inOBEXSession: IOBluetoothOBEXSession!)
  func currentPath() -> String!
  func isBusy() -> Bool
  func isConnected() -> Bool
  func connectToFTPService() -> OBEXError
  func connectToObjectPushService() -> OBEXError
  func disconnect() -> OBEXError
  func changeCurrentFolderToRoot() -> OBEXError
  func changeCurrentFolderBackward() -> OBEXError
  func changeCurrentFolderForward(toPath inDirName: String!) -> OBEXError
  func createFolder(inDirName: String!) -> OBEXError
  func removeItem(inItemName: String!) -> OBEXError
  func retrieveFolderListing() -> OBEXError
  func sendFile(inLocalPathAndName: String!) -> OBEXError
  func copyRemoteFile(inRemoteFileName: String!, toLocalPath inLocalPathAndName: String!) -> OBEXError
  func send(inData: Data!, type inType: String!, name inName: String!) -> OBEXError
  func getDefaultVCard(inLocalPathAndName: String!) -> OBEXError
  func abort() -> OBEXError
  init()
}
extension Object {
  class func fileTransferServicesConnectionComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)
  func fileTransferServicesConnectionComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)
  class func fileTransferServicesDisconnectionComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)
  func fileTransferServicesDisconnectionComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)
  class func fileTransferServicesAbortComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)
  func fileTransferServicesAbortComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)
  class func fileTransferServicesRemoveItemComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError, removedItem inItemName: String!)
  func fileTransferServicesRemoveItemComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError, removedItem inItemName: String!)
  class func fileTransferServicesCreateFolderComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError, folder inFolderName: String!)
  func fileTransferServicesCreateFolderComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError, folder inFolderName: String!)
  class func fileTransferServicesPathChangeComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError, finalPath inPath: String!)
  func fileTransferServicesPathChangeComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError, finalPath inPath: String!)
  class func fileTransferServicesRetrieveFolderListingComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError, listing inListing: [AnyObject]!)
  func fileTransferServicesRetrieveFolderListingComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError, listing inListing: [AnyObject]!)
  class func fileTransferServicesFilePreparationComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)
  func fileTransferServicesFilePreparationComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)
  class func fileTransferServicesSendFileProgress(inServices: OBEXFileTransferServices!, transferProgress inProgressDescription: [Object : AnyObject]!)
  func fileTransferServicesSendFileProgress(inServices: OBEXFileTransferServices!, transferProgress inProgressDescription: [Object : AnyObject]!)
  class func fileTransferServicesSendFileComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)
  func fileTransferServicesSendFileComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)
  class func fileTransferServicesCopyRemoteFileProgress(inServices: OBEXFileTransferServices!, transferProgress inProgressDescription: [Object : AnyObject]!)
  func fileTransferServicesCopyRemoteFileProgress(inServices: OBEXFileTransferServices!, transferProgress inProgressDescription: [Object : AnyObject]!)
  class func fileTransferServicesCopyRemoteFileComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)
  func fileTransferServicesCopyRemoteFileComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)
}
var kFTSProgressBytesTransferredKey: Unmanaged<CFString>!
var kFTSProgressBytesTotalKey: Unmanaged<CFString>!
var kFTSProgressPercentageKey: Unmanaged<CFString>!
var kFTSProgressPrecentageKey: Unmanaged<CFString>!
var kFTSProgressEstimatedTimeKey: Unmanaged<CFString>!
var kFTSProgressTimeElapsedKey: Unmanaged<CFString>!
var kFTSProgressTransferRateKey: Unmanaged<CFString>!
var kFTSListingNameKey: Unmanaged<CFString>!
var kFTSListingTypeKey: Unmanaged<CFString>!
var kFTSListingSizeKey: Unmanaged<CFString>!
struct FTSFileType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kFTSFileTypeFolder: FTSFileType { get }
var kFTSFileTypeFile: FTSFileType { get }
