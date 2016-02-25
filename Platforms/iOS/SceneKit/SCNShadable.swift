
@available(iOS 9.0, *)
enum SCNBufferFrequency : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case PerFrame
  case PerNode
  case PerShadable
}
protocol SCNBufferStream : NSObjectProtocol {
  func writeBytes(_ bytes: UnsafeMutablePointer<Void>, length length: Int)
}
typealias SCNBufferBindingBlock = (SCNBufferStream, SCNNode, SCNShadable, SCNRenderer) -> Void
typealias SCNBindingBlock = (UInt32, UInt32, SCNNode, SCNRenderer) -> Void
protocol SCNShadable : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional var program: SCNProgram? { get set }
  @available(iOS 8.0, *)
  optional func handleBindingOfSymbol(_ symbol: String, usingBlock block: SCNBindingBlock?)
  @available(iOS 8.0, *)
  optional func handleUnbindingOfSymbol(_ symbol: String, usingBlock block: SCNBindingBlock?)
  @available(iOS 8.0, *)
  optional var shaderModifiers: [String : String]? { get set }
}
let SCNProgramMappingChannelKey: String
@available(iOS 8.0, *)
class SCNProgram : NSObject, NSCopying, NSSecureCoding {
  var vertexShader: String?
  var fragmentShader: String?
  @available(iOS 9.0, *)
  var vertexFunctionName: String?
  @available(iOS 9.0, *)
  var fragmentFunctionName: String?
  @available(iOS 9.0, *)
  func handleBindingOfBufferNamed(_ name: String, frequency frequency: SCNBufferFrequency, usingBlock block: SCNBufferBindingBlock)
  @available(iOS 8.0, *)
  var opaque: Bool
  func setSemantic(_ semantic: String?, forSymbol symbol: String, options options: [String : AnyObject]?)
  func semanticForSymbol(_ symbol: String) -> String?
  unowned(unsafe) var delegate: @sil_unmanaged SCNProgramDelegate?
  @available(iOS 9.0, *)
  var library: MTLLibrary?
  @available(iOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
protocol SCNProgramDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func program(_ program: SCNProgram, handleError error: NSError)
}
@available(iOS 8.0, *)
let SCNShaderModifierEntryPointGeometry: String
@available(iOS 8.0, *)
let SCNShaderModifierEntryPointSurface: String
@available(iOS 8.0, *)
let SCNShaderModifierEntryPointLightingModel: String
@available(iOS 8.0, *)
let SCNShaderModifierEntryPointFragment: String
