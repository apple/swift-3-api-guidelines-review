
@available(tvOS 8.0, *)
class SCNPlane : SCNGeometry {
  convenience init(width: CGFloat, height: CGFloat)
  var width: CGFloat
  var height: CGFloat
  var widthSegmentCount: Int
  var heightSegmentCount: Int
  @available(tvOS 8.0, *)
  var cornerRadius: CGFloat
  @available(tvOS 8.0, *)
  var cornerSegmentCount: Int
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: Coder)
  @available(tvOS 9.0, *)
  convenience init(mdlMesh: MDLMesh)
}
@available(tvOS 8.0, *)
class SCNBox : SCNGeometry {
  convenience init(width: CGFloat, height: CGFloat, length: CGFloat, chamferRadius: CGFloat)
  var width: CGFloat
  var height: CGFloat
  var length: CGFloat
  var chamferRadius: CGFloat
  var widthSegmentCount: Int
  var heightSegmentCount: Int
  var lengthSegmentCount: Int
  var chamferSegmentCount: Int
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: Coder)
  @available(tvOS 9.0, *)
  convenience init(mdlMesh: MDLMesh)
}
@available(tvOS 8.0, *)
class SCNPyramid : SCNGeometry {
  convenience init(width: CGFloat, height: CGFloat, length: CGFloat)
  var width: CGFloat
  var height: CGFloat
  var length: CGFloat
  var widthSegmentCount: Int
  var heightSegmentCount: Int
  var lengthSegmentCount: Int
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: Coder)
  @available(tvOS 9.0, *)
  convenience init(mdlMesh: MDLMesh)
}
@available(tvOS 8.0, *)
class SCNSphere : SCNGeometry {
  convenience init(radius: CGFloat)
  var radius: CGFloat
  var isGeodesic: Bool
  var segmentCount: Int
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: Coder)
  @available(tvOS 9.0, *)
  convenience init(mdlMesh: MDLMesh)
}
@available(tvOS 8.0, *)
class SCNCylinder : SCNGeometry {
  convenience init(radius: CGFloat, height: CGFloat)
  var radius: CGFloat
  var height: CGFloat
  var radialSegmentCount: Int
  var heightSegmentCount: Int
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: Coder)
  @available(tvOS 9.0, *)
  convenience init(mdlMesh: MDLMesh)
}
@available(tvOS 8.0, *)
class SCNCone : SCNGeometry {
  convenience init(topRadius: CGFloat, bottomRadius: CGFloat, height: CGFloat)
  var topRadius: CGFloat
  var bottomRadius: CGFloat
  var height: CGFloat
  var radialSegmentCount: Int
  var heightSegmentCount: Int
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: Coder)
  @available(tvOS 9.0, *)
  convenience init(mdlMesh: MDLMesh)
}
@available(tvOS 8.0, *)
class SCNTube : SCNGeometry {
  convenience init(innerRadius: CGFloat, outerRadius: CGFloat, height: CGFloat)
  var innerRadius: CGFloat
  var outerRadius: CGFloat
  var height: CGFloat
  var radialSegmentCount: Int
  var heightSegmentCount: Int
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: Coder)
  @available(tvOS 9.0, *)
  convenience init(mdlMesh: MDLMesh)
}
@available(tvOS 8.0, *)
class SCNCapsule : SCNGeometry {
  convenience init(capRadius: CGFloat, height: CGFloat)
  var capRadius: CGFloat
  var height: CGFloat
  var radialSegmentCount: Int
  var heightSegmentCount: Int
  var capSegmentCount: Int
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: Coder)
  @available(tvOS 9.0, *)
  convenience init(mdlMesh: MDLMesh)
}
@available(tvOS 8.0, *)
class SCNTorus : SCNGeometry {
  convenience init(ringRadius: CGFloat, pipeRadius: CGFloat)
  var ringRadius: CGFloat
  var pipeRadius: CGFloat
  var ringSegmentCount: Int
  var pipeSegmentCount: Int
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: Coder)
  @available(tvOS 9.0, *)
  convenience init(mdlMesh: MDLMesh)
}
@available(tvOS 8.0, *)
class SCNFloor : SCNGeometry {
  var reflectivity: CGFloat
  var reflectionFalloffStart: CGFloat
  var reflectionFalloffEnd: CGFloat
  @available(tvOS 8.0, *)
  var reflectionResolutionScaleFactor: CGFloat
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: Coder)
  @available(tvOS 9.0, *)
  convenience init(mdlMesh: MDLMesh)
}
@available(tvOS 8.0, *)
class SCNText : SCNGeometry {
  convenience init(string: AnyObject?, extrusionDepth: CGFloat)
  var extrusionDepth: CGFloat
  @NSCopying var string: AnyObject?
  var font: UIFont!
  var isWrapped: Bool
  var containerFrame: CGRect
  var truncationMode: String
  var alignmentMode: String
  var chamferRadius: CGFloat
  @NSCopying var chamferProfile: UIBezierPath?
  @available(tvOS 8.0, *)
  var flatness: CGFloat
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: Coder)
  @available(tvOS 9.0, *)
  convenience init(mdlMesh: MDLMesh)
}
@available(tvOS 8.0, *)
enum SCNChamferMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Both
  case Front
  case Back
}
@available(tvOS 8.0, *)
class SCNShape : SCNGeometry {
  convenience init(path: UIBezierPath?, extrusionDepth: CGFloat)
  @NSCopying var path: UIBezierPath?
  var extrusionDepth: CGFloat
  var chamferMode: SCNChamferMode
  var chamferRadius: CGFloat
  @NSCopying var chamferProfile: UIBezierPath?
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: Coder)
  @available(tvOS 9.0, *)
  convenience init(mdlMesh: MDLMesh)
}
