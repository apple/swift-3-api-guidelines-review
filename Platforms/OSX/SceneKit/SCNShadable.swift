
@available(OSX 10.11, *)
enum SCNBufferFrequency : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case perFrame
  case perNode
  case perShadable
}
protocol SCNBufferStream : ObjectProtocol {
  func writeBytes(bytes: UnsafeMutablePointer<Void>, length: Int)
}
typealias SCNBufferBindingBlock = (SCNBufferStream, SCNNode, SCNShadable, SCNRenderer) -> Void
typealias SCNBindingBlock = (UInt32, UInt32, SCNNode, SCNRenderer) -> Void
protocol SCNShadable : ObjectProtocol {
  @available(OSX 10.8, *)
  optional var program: SCNProgram? { get set }
  @available(OSX 10.9, *)
  optional func handleBindingOf(symbol symbol: String, usingBlock block: SCNBindingBlock? = nil)
  @available(OSX 10.9, *)
  optional func handleUnbindingOf(symbol symbol: String, usingBlock block: SCNBindingBlock? = nil)
  @available(OSX 10.9, *)
  optional var shaderModifiers: [String : String]? { get set }
}
let SCNProgramMappingChannelKey: String
@available(OSX 10.8, *)
class SCNProgram : Object, Copying, SecureCoding {
  var vertexShader: String?
  var fragmentShader: String?
  @available(OSX 10.10, *)
  var tessellationControlShader: String?
  @available(OSX 10.10, *)
  var tessellationEvaluationShader: String?
  @available(OSX 10.10, *)
  var geometryShader: String?
  @available(OSX 10.11, *)
  var vertexFunctionName: String?
  @available(OSX 10.11, *)
  var fragmentFunctionName: String?
  @available(OSX 10.11, *)
  func handleBindingOf(bufferNamed name: String, frequency: SCNBufferFrequency, usingBlock block: SCNBufferBindingBlock)
  @available(OSX 10.10, *)
  var isOpaque: Bool
  func setSemantic(semantic: String?, forSymbol symbol: String, options: [String : AnyObject]? = [:])
  func semanticFor(symbol symbol: String) -> String?
  unowned(unsafe) var delegate: @sil_unmanaged SCNProgramDelegate?
  @available(OSX 10.11, *)
  var library: MTLLibrary?
  init()
  @available(OSX 10.8, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
protocol SCNProgramDelegate : ObjectProtocol {
  @available(OSX, introduced=10.8, deprecated=10.10)
  optional func program(program: SCNProgram, bindValueForSymbol symbol: String, atLocation location: UInt32, programID: UInt32, renderer: SCNRenderer) -> Bool
  @available(OSX, introduced=10.8, deprecated=10.10)
  optional func program(program: SCNProgram, unbindValueForSymbol symbol: String, atLocation location: UInt32, programID: UInt32, renderer: SCNRenderer)
  @available(OSX 10.8, *)
  optional func program(program: SCNProgram, handleError error: Error)
  @available(OSX, introduced=10.8, deprecated=10.10)
  optional func programIsOpaque(program: SCNProgram) -> Bool
}
@available(OSX 10.9, *)
let SCNShaderModifierEntryPointGeometry: String
@available(OSX 10.9, *)
let SCNShaderModifierEntryPointSurface: String
@available(OSX 10.9, *)
let SCNShaderModifierEntryPointLightingModel: String
@available(OSX 10.9, *)
let SCNShaderModifierEntryPointFragment: String
