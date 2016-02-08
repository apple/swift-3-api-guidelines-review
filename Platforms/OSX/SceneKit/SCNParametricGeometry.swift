
@available(OSX 10.8, *)
class SCNPlane : SCNGeometry {
  convenience init(width: CGFloat, height: CGFloat)
  var width: CGFloat
  var height: CGFloat
  var widthSegmentCount: Int
  var heightSegmentCount: Int
  @available(OSX 10.9, *)
  var cornerRadius: CGFloat
  @available(OSX 10.9, *)
  var cornerSegmentCount: Int
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: Coder)
  @available(OSX 10.11, *)
  convenience init(mdlMesh: MDLMesh)
}
@available(OSX 10.8, *)
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
  @available(OSX 10.11, *)
  convenience init(mdlMesh: MDLMesh)
}
@available(OSX 10.8, *)
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
  @available(OSX 10.11, *)
  convenience init(mdlMesh: MDLMesh)
}
@available(OSX 10.8, *)
class SCNSphere : SCNGeometry {
  convenience init(radius: CGFloat)
  var radius: CGFloat
  var isGeodesic: Bool
  var segmentCount: Int
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: Coder)
  @available(OSX 10.11, *)
  convenience init(mdlMesh: MDLMesh)
}
@available(OSX 10.8, *)
class SCNCylinder : SCNGeometry {
  convenience init(radius: CGFloat, height: CGFloat)
  var radius: CGFloat
  var height: CGFloat
  var radialSegmentCount: Int
  var heightSegmentCount: Int
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: Coder)
  @available(OSX 10.11, *)
  convenience init(mdlMesh: MDLMesh)
}
@available(OSX 10.8, *)
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
  @available(OSX 10.11, *)
  convenience init(mdlMesh: MDLMesh)
}
@available(OSX 10.8, *)
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
  @available(OSX 10.11, *)
  convenience init(mdlMesh: MDLMesh)
}
@available(OSX 10.8, *)
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
  @available(OSX 10.11, *)
  convenience init(mdlMesh: MDLMesh)
}
@available(OSX 10.8, *)
class SCNTorus : SCNGeometry {
  convenience init(ringRadius: CGFloat, pipeRadius: CGFloat)
  var ringRadius: CGFloat
  var pipeRadius: CGFloat
  var ringSegmentCount: Int
  var pipeSegmentCount: Int
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: Coder)
  @available(OSX 10.11, *)
  convenience init(mdlMesh: MDLMesh)
}
@available(OSX 10.8, *)
class SCNFloor : SCNGeometry {
  var reflectivity: CGFloat
  var reflectionFalloffStart: CGFloat
  var reflectionFalloffEnd: CGFloat
  @available(OSX 10.10, *)
  var reflectionResolutionScaleFactor: CGFloat
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: Coder)
  @available(OSX 10.11, *)
  convenience init(mdlMesh: MDLMesh)
}
@available(OSX 10.8, *)
class SCNText : SCNGeometry {
  convenience init(string: AnyObject?, extrusionDepth: CGFloat)
  var extrusionDepth: CGFloat
  @NSCopying var string: AnyObject?
  var font: NSFont!
  var isWrapped: Bool
  var containerFrame: CGRect
  var textSize: CGSize { get }
  var truncationMode: String
  var alignmentMode: String
  var chamferRadius: CGFloat
  @available(OSX 10.9, *)
  @NSCopying var chamferProfile: NSBezierPath?
  @available(OSX 10.9, *)
  var flatness: CGFloat
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: Coder)
  @available(OSX 10.11, *)
  convenience init(mdlMesh: MDLMesh)
}
@available(OSX 10.9, *)
enum SCNChamferMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case both
  case front
  case back
}
@available(OSX 10.9, *)
class SCNShape : SCNGeometry {
  convenience init(path: NSBezierPath?, extrusionDepth: CGFloat)
  @NSCopying var path: NSBezierPath?
  var extrusionDepth: CGFloat
  var chamferMode: SCNChamferMode
  var chamferRadius: CGFloat
  @NSCopying var chamferProfile: NSBezierPath?
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: Coder)
  @available(OSX 10.11, *)
  convenience init(mdlMesh: MDLMesh)
}
