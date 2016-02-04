
@available(OSX 10.2, *)
func DRFileGetTypeID() -> CFTypeID
typealias DRLinkType = UInt32
var kDRLinkTypeHardLink: Int { get }
var kDRLinkTypeSymbolicLink: Int { get }
var kDRLinkTypeFinderAlias: Int { get }
typealias DRFileMessage = UInt32
var kDRFileMessageForkSize: Int { get }
var kDRFileMessagePreBurn: Int { get }
var kDRFileMessageProduceData: Int { get }
var kDRFileMessageVerificationStarting: Int { get }
var kDRFileMessagePostBurn: Int { get }
var kDRFileMessageRelease: Int { get }
typealias DRFileForkIndex = UInt32
var kDRFileForkData: Int { get }
var kDRFileForkResource: Int { get }
typealias DRFileForkSizeQuery = UInt32
var kDRFileForkSizeActual: Int { get }
var kDRFileForkSizeEstimate: Int { get }
struct DRFileForkSizeInfo {
  var fork: DRFileForkIndex
  var query: DRFileForkSizeQuery
  var size: UInt64
  init()
  init(fork: DRFileForkIndex, query: DRFileForkSizeQuery, size: UInt64)
}
struct DRFileProductionInfo {
  var requestedAddress: UInt64
  var buffer: UnsafeMutablePointer<Void>
  var reqCount: UInt32
  var actCount: UInt32
  var blockSize: UInt32
  var fork: DRFileForkIndex
  init()
  init(requestedAddress: UInt64, buffer: UnsafeMutablePointer<Void>, reqCount: UInt32, actCount: UInt32, blockSize: UInt32, fork: DRFileForkIndex)
}
typealias DRFileProc = @convention(c) (UnsafeMutablePointer<Void>, DRFileRef!, DRFileMessage, UnsafeMutablePointer<Void>) -> OSStatus
@available(OSX 10.2, *)
func DRFileCreateReal(fsRef: UnsafePointer<FSRef>) -> Unmanaged<DRFileRef>!
@available(OSX 10.2, *)
func DRFileCreateRealWithURL(urlRef: CFURL!) -> Unmanaged<DRFileRef>!
@available(OSX 10.2, *)
func DRFileCreateVirtualWithData(baseName: CFString!, _ fileData: UnsafeMutablePointer<Void>, _ fileDataLength: UInt32) -> Unmanaged<DRFileRef>!
@available(OSX 10.2, *)
func DRFileCreateVirtualWithCallback(baseName: CFString!, _ fileProc: DRFileProc!, _ fileProcRefCon: UnsafeMutablePointer<Void>) -> Unmanaged<DRFileRef>!
@available(OSX 10.2, *)
func DRFileCreateVirtualLink(original: DRFSObjectRef!, _ linkType: DRLinkType, _ fsKey: CFString!) -> Unmanaged<DRFileRef>!
