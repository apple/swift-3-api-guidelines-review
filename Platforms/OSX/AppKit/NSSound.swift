
let NSSoundPboardType: String
class NSSound : Object, Copying, Coding, NSPasteboardReading, NSPasteboardWriting {
  /*not inherited*/ init?(named name: String)
  init?(contentsOf url: URL, byReference byRef: Bool)
  init?(contentsOfFile path: String, byReference byRef: Bool)
  init?(data: Data)
  func setName(string: String?) -> Bool
  var name: String? { get }
  class func canInit(withPasteboard pasteboard: NSPasteboard) -> Bool
  @available(OSX 10.5, *)
  class func soundUnfilteredTypes() -> [String]
  init?(pasteboard: NSPasteboard)
  func write(to pasteboard: NSPasteboard)
  func play() -> Bool
  func pause() -> Bool
  func resume() -> Bool
  func stop() -> Bool
  var isPlaying: Bool { get }
  unowned(unsafe) var delegate: @sil_unmanaged NSSoundDelegate?
  @available(OSX 10.5, *)
  var duration: TimeInterval { get }
  @available(OSX 10.5, *)
  var volume: Float
  @available(OSX 10.5, *)
  var currentTime: TimeInterval
  @available(OSX 10.5, *)
  var loops: Bool
  @available(OSX 10.5, *)
  var playbackDeviceIdentifier: String?
  init()
  func copyWith(zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  class func readableTypes(forPasteboard pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  class func readingOptions(forType type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
  func writableTypes(forPasteboard pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  func writingOptions(forType type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyList(forType type: String) -> AnyObject?
}
extension NSSound {
}
protocol NSSoundDelegate : ObjectProtocol {
  optional func sound(sound: NSSound, didFinishPlaying aBool: Bool)
}
extension Bundle {
  func pathForSoundResource(name: String) -> String?
}
