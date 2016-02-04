
@available(iOS 9.0, *)
class MDLSubmeshTopology : NSObject {
  var faceTopology: MDLMeshBuffer?
  var faceCount: Int
  var vertexCreaseIndices: MDLMeshBuffer?
  var vertexCreases: MDLMeshBuffer?
  var vertexCreaseCount: Int
  var edgeCreaseIndices: MDLMeshBuffer?
  var edgeCreases: MDLMeshBuffer?
  var edgeCreaseCount: Int
  var holes: MDLMeshBuffer?
  var holeCount: Int
  init()
}
@available(iOS 9.0, *)
class MDLSubmesh : NSObject, MDLNamed {
  init(name: String, indexBuffer: MDLMeshBuffer, indexCount: Int, indexType: MDLIndexBitDepth, geometryType: MDLGeometryType, material: MDLMaterial?)
  init(indexBuffer: MDLMeshBuffer, indexCount: Int, indexType: MDLIndexBitDepth, geometryType: MDLGeometryType, material: MDLMaterial?)
  init(name: String, indexBuffer: MDLMeshBuffer, indexCount: Int, indexType: MDLIndexBitDepth, geometryType: MDLGeometryType, material: MDLMaterial?, topology: MDLSubmeshTopology?)
  init?(MDLSubmesh submesh: MDLSubmesh, indexType: MDLIndexBitDepth, geometryType: MDLGeometryType)
  var indexBuffer: MDLMeshBuffer { get }
  var indexCount: Int { get }
  var indexType: MDLIndexBitDepth { get }
  var geometryType: MDLGeometryType { get }
  var material: MDLMaterial?
  var topology: MDLSubmeshTopology? { get }
  var name: String
  init()
}
