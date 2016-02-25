
let NSSoundPboardType: String
class NSSound : NSObject, NSCopying, NSCoding, NSPasteboardReading, NSPasteboardWriting {
  /*not inherited*/ init?(named name: String)
  init?(contentsOfURL url: NSURL, byReference byRef: Bool)
  init?(contentsOfFile path: String, byReference byRef: Bool)
  init?(data data: NSData)
  func setName(_ string: String?) -> Bool
  var name: String? { get }
  class func canInitWithPasteboard(_ pasteboard: NSPasteboard) -> Bool
  @available(OSX 10.5, *)
  class func soundUnfilteredTypes() -> [String]
  init?(pasteboard pasteboard: NSPasteboard)
  func writeToPasteboard(_ pasteboard: NSPasteboard)
  func play() -> Bool
  func pause() -> Bool
  func resume() -> Bool
  func stop() -> Bool
  var playing: Bool { get }
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
  func copyWithZone(_ zone: NSZone) -> AnyObject
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  class func readableTypesForPasteboard(_ pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  class func readingOptionsForType(_ type: String, pasteboard pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
  func writableTypesForPasteboard(_ pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  func writingOptionsForType(_ type: String, pasteboard pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyListForType(_ type: String) -> AnyObject?
}
extension NSSound {
}
protocol NSSoundDelegate : NSObjectProtocol {
  optional func sound(_ sound: NSSound, didFinishPlaying aBool: Bool)
}
extension NSBundle {
  func pathForSoundResource(_ name: String) -> String?
}
