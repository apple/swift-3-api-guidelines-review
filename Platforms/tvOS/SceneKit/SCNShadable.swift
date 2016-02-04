
@available(tvOS 9.0, *)
enum SCNBufferFrequency : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case PerFrame
  case PerNode
  case PerShadable
}
protocol SCNBufferStream : NSObjectProtocol {
  func writeBytes(bytes: UnsafeMutablePointer<Void>, length: Int)
}
typealias SCNBufferBindingBlock = (SCNBufferStream, SCNNode, SCNShadable, SCNRenderer) -> Void
typealias SCNBindingBlock = (UInt32, UInt32, SCNNode, SCNRenderer) -> Void
protocol SCNShadable : NSObjectProtocol {
  @available(tvOS 8.0, *)
  optional var program: SCNProgram? { get set }
  @available(tvOS 8.0, *)
  optional func handleBindingOfSymbol(symbol: String, usingBlock block: SCNBindingBlock?)
  @available(tvOS 8.0, *)
  optional func handleUnbindingOfSymbol(symbol: String, usingBlock block: SCNBindingBlock?)
  @available(tvOS 8.0, *)
  optional var shaderModifiers: [String : String]? { get set }
}
let SCNProgramMappingChannelKey: String
@available(tvOS 8.0, *)
class SCNProgram : NSObject, NSCopying, NSSecureCoding {
  var vertexShader: String?
  var fragmentShader: String?
  @available(tvOS 9.0, *)
  var vertexFunctionName: String?
  @available(tvOS 9.0, *)
  var fragmentFunctionName: String?
  @available(tvOS 9.0, *)
  func handleBindingOfBufferNamed(name: String, frequency: SCNBufferFrequency, usingBlock block: SCNBufferBindingBlock)
  @available(tvOS 8.0, *)
  var opaque: Bool
  func setSemantic(semantic: String?, forSymbol symbol: String, options: [String : AnyObject]?)
  func semanticForSymbol(symbol: String) -> String?
  unowned(unsafe) var delegate: @sil_unmanaged SCNProgramDelegate?
  @available(tvOS 9.0, *)
  var library: MTLLibrary?
  init()
  @available(tvOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
protocol SCNProgramDelegate : NSObjectProtocol {
  @available(tvOS 8.0, *)
  optional func program(program: SCNProgram, handleError error: NSError)
}
@available(tvOS 8.0, *)
let SCNShaderModifierEntryPointGeometry: String
@available(tvOS 8.0, *)
let SCNShaderModifierEntryPointSurface: String
@available(tvOS 8.0, *)
let SCNShaderModifierEntryPointLightingModel: String
@available(tvOS 8.0, *)
let SCNShaderModifierEntryPointFragment: String
