
let NSSoundPboardType: String
class NSSound : NSObject, NSCopying, NSCoding, NSPasteboardReading, NSPasteboardWriting {
  /*not inherited*/ init?(named name: String)
  init?(contentsOf url: NSURL, byReference byRef: Bool)
  init?(contentsOfFile path: String, byReference byRef: Bool)
  init?(data data: NSData)
  func setName(_ string: String?) -> Bool
  var name: String? { get }
  class func canInit(with pasteboard: NSPasteboard) -> Bool
  @available(OSX 10.5, *)
  class func soundUnfilteredTypes() -> [String]
  init?(pasteboard pasteboard: NSPasteboard)
  func write(to pasteboard: NSPasteboard)
  func play() -> Bool
  func pause() -> Bool
  func resume() -> Bool
  func stop() -> Bool
  var isPlaying: Bool { get }
  unowned(unsafe) var delegate: @sil_unmanaged NSSoundDelegate?
  @available(OSX 10.5, *)
  var duration: NSTimeInterval { get }
  @available(OSX 10.5, *)
  var volume: Float
  @available(OSX 10.5, *)
  var currentTime: NSTimeInterval
  @available(OSX 10.5, *)
  var loops: Bool
  @available(OSX 10.5, *)
  var playbackDeviceIdentifier: String?
  func copy(with zone: NSZone = nil) -> AnyObject
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  class func readableTypes(for pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  class func readingOptions(forType type: String, pasteboard pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
  func writableTypes(for pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  func writingOptions(forType type: String, pasteboard pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyList(forType type: String) -> AnyObject?
}
extension NSSound {
}
protocol NSSoundDelegate : NSObjectProtocol {
  optional func sound(_ sound: NSSound, didFinishPlaying aBool: Bool)
}
extension NSBundle {
  func path(forSoundResource name: String) -> String?
}
