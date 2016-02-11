
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
typealias IOBluetoothL2CAPChannelIncomingDataListener = @convention(c) (IOBluetoothL2CAPChannelRef!, UnsafeMutablePointer<Void>, UInt16, UnsafeMutablePointer<Void>) -> Void
typealias IOBluetoothL2CAPChannelIncomingEventListener = @convention(c) (IOBluetoothL2CAPChannelRef!, UnsafeMutablePointer<Void>, UnsafeMutablePointer<IOBluetoothL2CAPChannelEvent>) -> Void
class IOBluetoothL2CAPChannel : IOBluetoothObject, PortDelegate {
  class func register(forChannelOpenNotifications object: AnyObject!, selector: Selector) -> IOBluetoothUserNotification!
  class func register(forChannelOpenNotifications object: AnyObject!, selector: Selector, withPSM psm: BluetoothL2CAPPSM, direction inDirection: IOBluetoothUserNotificationChannelDirection) -> IOBluetoothUserNotification!
  class func withObjectID(objectID: IOBluetoothObjectID) -> Self!
  func close() -> IOReturn
  var outgoingMTU: BluetoothL2CAPMTU { get }
  var incomingMTU: BluetoothL2CAPMTU { get }
  func requestRemoteMTU(remoteMTU: BluetoothL2CAPMTU) -> IOReturn
  func writeAsync(data: UnsafeMutablePointer<Void>, length: UInt16, refcon: UnsafeMutablePointer<Void>) -> IOReturn
  func writeSync(data: UnsafeMutablePointer<Void>, length: UInt16) -> IOReturn
  func setDelegate(channelDelegate: AnyObject!) -> IOReturn
  func setDelegate(channelDelegate: AnyObject!, withConfiguration channelConfiguration: [Object : AnyObject]!) -> IOReturn
  func delegate() -> AnyObject!
  var device: IOBluetoothDevice! { get }
  var objectID: IOBluetoothObjectID { get }
  var psm: BluetoothL2CAPPSM { get }
  var localChannelID: BluetoothL2CAPChannelID { get }
  var remoteChannelID: BluetoothL2CAPChannelID { get }
  func isIncoming() -> Bool
  func register(forChannelCloseNotification observer: AnyObject!, selector inSelector: Selector) -> IOBluetoothUserNotification!
  init()
  func handle(message: PortMessage)
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
extension Object {
}
