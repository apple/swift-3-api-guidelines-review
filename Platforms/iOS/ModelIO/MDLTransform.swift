
@available(iOS 9.0, *)
protocol MDLTransformComponent : MDLComponent {
  var matrix: matrix_float4x4 { get set }
  var minimumTime: TimeInterval { get }
  var maximumTime: TimeInterval { get }
  optional func setLocalTransform(transform: matrix_float4x4, forTime time: TimeInterval)
  optional func setLocalTransform(transform: matrix_float4x4)
  optional func localTransform(atTime time: TimeInterval) -> matrix_float4x4
  optional static func globalTransform(object: MDLObject, atTime time: TimeInterval) -> matrix_float4x4
}
@available(iOS 9.0, *)
class MDLTransform : Object, MDLTransformComponent {
  init(identity: ())
  convenience init(transformComponent component: MDLTransformComponent)
  convenience init(matrix: matrix_float4x4)
  func setIdentity()
  func translation(atTime time: TimeInterval) -> vector_float3
  func rotation(atTime time: TimeInterval) -> vector_float3
  func shear(atTime time: TimeInterval) -> vector_float3
  func scale(atTime time: TimeInterval) -> vector_float3
  func setTranslation(translation: vector_float3, forTime time: TimeInterval)
  func setRotation(rotation: vector_float3, forTime time: TimeInterval)
  func setShear(shear: vector_float3, forTime time: TimeInterval)
  func setScale(scale: vector_float3, forTime time: TimeInterval)
  func rotationMatrix(atTime time: TimeInterval) -> matrix_float4x4
  var translation: vector_float3
  var rotation: vector_float3
  var shear: vector_float3
  var scale: vector_float3
  convenience init()
  @available(iOS 9.0, *)
  var matrix: matrix_float4x4
  @available(iOS 9.0, *)
  var minimumTime: TimeInterval { get }
  @available(iOS 9.0, *)
  var maximumTime: TimeInterval { get }
  @available(iOS 9.0, *)
  func setLocalTransform(transform: matrix_float4x4, forTime time: TimeInterval)
  @available(iOS 9.0, *)
  func setLocalTransform(transform: matrix_float4x4)
  @available(iOS 9.0, *)
  func localTransform(atTime time: TimeInterval) -> matrix_float4x4
  @available(iOS 9.0, *)
  class func globalTransform(object: MDLObject, atTime time: TimeInterval) -> matrix_float4x4
}
