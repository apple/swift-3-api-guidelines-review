

/*!
 @class MDLAsset
 
 @abstract An MDLAsset represents the contents of a model file.
 
@discussion

 Each asset contains a collection of hierarchies of objects, where each object 
 in the asset is the top level of a hierarchy. Objects include transforms, 
 lights, cameras, and meshes.
 
 MDLAssets are typically instantiated from NSURLs that refer to a model resource.

 The model resource may represented timed information, for example, a series of 
 mesh morphs. If the asset is timed, then the framerate will be non-zero, and the 
 firstFrame and lastFrame properties will indicate the range for which sample 
 data exists. Samples before or after that range will be clamped. Some model 
 resource representations allow continuous sampling, others are discrete. In the 
 discrete case, if a requested sample time is not on a discrete boundary the 
 returned sample will be the sample exactly on the sample time, or if no such is 
 available, the immediately preceding sample. If no time is specified for a 
 sample, the first data will be returned.
 
 An asset's bounding box can be queried without traversing the hierarchy of 
 objects.
 
 Fast enumeration of an MDLAsset iterates the top level objects contained within.
 */
@available(OSX 10.11, *)
class MDLAsset : NSObject, NSCopying, NSFastEnumeration {

  /*!
   @method initWithURL:
   @abstract Initialize an MDLAsset using the contents of the resource located at 
             the indicated URL
   @discussion Vertex layout (i.e. vertexDescriptor) will be specified by ModelIO 
               depending on attributes of the resource.  Buffers will be allocated 
               using a default NSData based allocator
  
               Submeshes will be converted to triangle topology.
   */
  init(URL: NSURL)

  /*!
   @method initWithURL:vertexDescriptor:bufferAllocator:
   @abstract Initialize an MDLAsset using the contents of the resource located at 
             URL, ensuring that the asset conforms to the supplied vertexDescriptor, 
             and buffers are allocated in the supplied allocator
   
   @discussion The default behavior is to triangulate any discovered meshes and to
               conform the mesh to the supplied vertexDescriptor.
   
               If nil is passed as the vertexDescriptor, then a vertexDescriptor
               will be created according to the attributes of the resource.
   
               If nil is passed as the bufferAllocator, buffers will be allocated
               using a default NSData based allocator.
   
               Submeshes will be converted to triangle topology.
    */
  init(URL: NSURL, vertexDescriptor: MDLVertexDescriptor?, bufferAllocator: MDLMeshBufferAllocator?)

  /*! 
   @method initWithURL:vertexDescriptor:bufferAllocator:preserveTopology
   @abstract Same as initWithURL:vertexDescriptor:bufferAllocator: except that
             if preserveTopology is YES, a topology buffer might be created on the
             submeshes.
   
   @discussion If all faces in a submesh have the same vertex count, then the 
               submesh will a geometry type corresponding to that vertex count.
               For example, if all faces have four vertices, then the geometry
               type will be MDLGeometryTypeQuads. If faces have a varying number
               of vertices, then the the submesh type will be 
               MDLGeometryTypeVariableTopology, and a faceTopologyBuffer will be
               created.
   */
  init(URL: NSURL, vertexDescriptor: MDLVertexDescriptor?, bufferAllocator: MDLMeshBufferAllocator?, preserveTopology: Bool, error: NSErrorPointer)

  /*!
   @method exportAssetToURL:
   @abstract Export an asset to the specified URL.
   @return YES is returned if exporting proceeded successfully,
   */
  func exportAssetToURL(URL: NSURL) -> Bool
  func exportAssetToURL(URL: NSURL, error: ()) throws

  /*!
   @method canImportFileExtension:
   @abstract Indicates whether MDLAsset object can be initialized with resource
             with the given extension
   @return YES is returned if MDLAsset is able to load and represent assets with 
             the given extension
   */
  class func canImportFileExtension(extension: String) -> Bool

  /*!
   @method canImportFileExtension:
   @abstract Indicates whether MDLAsset object can export asset to resource with
             the given extension
   @return YES is returned if MDLAsset is able is able to export assets to 
           resources with the given extension
   */
  class func canExportFileExtension(extension: String) -> Bool

  /*!
   @method boundingBoxAtTime:
   @abstract The bounds of the MDLAsset at the specified time
   */
  func boundingBoxAtTime(time: NSTimeInterval) -> MDLAxisAlignedBoundingBox

  /*!
   @property bounds
   @abstract The bounds of the MDLAsset at the earliest time sample
   */
  var boundingBox: MDLAxisAlignedBoundingBox { get }

  /*!
   @property frameInterval
   @abstract Inherent frame rate of an asset
   @discussion If no framerate was specified by resource or resource uncapable of 
               specifying framerate, this value defaults to 0
   */
  var frameInterval: NSTimeInterval

  /*!
   @property startTime
   @abstract Start time bracket of animation data
   @discussion If no animation data was specified by resource or resource incapable 
               of specifying animation data, this value defaults to 0
   */
  var startTime: NSTimeInterval

  /*!
   @property endTime
   @abstract End time bracket of animation data
   @discussion If no animation data was specified by resource or resource incapable
               of specifying animation data, this value defaults to 0
   */
  var endTime: NSTimeInterval

  /*!
   @property URL
   @abstract  URL used to create the asset
   @discussion If no animation data was specified by resource or resource incapable 
               of specifying animation data, this value defaults to 0
   */
  var URL: NSURL? { get }

  /*!
   @property bufferAllocator
   @abstract  Allocator used to create vertex and index buffers
   */
  var bufferAllocator: MDLMeshBufferAllocator { get }

  /*!
   @property vertexDescriptor
   @abstract  Vertex descriptor set upon asset initialization
   @discussion Will be nil if there was no descriptor set
   */
  var vertexDescriptor: MDLVertexDescriptor? { get }

  /*!
   @method addObject:
   @abstract Add a top level object to an asset.
   @discussion If the object was already in the asset, this has no effect.
   */
  func addObject(object: MDLObject)

  /*!
   @method removeObject:
   @abstract Remove a top level object from an asset.
   @discussion If the object not in the asset, this has no effect.
   */
  func removeObject(object: MDLObject)

  /*!
   The number of top level objects
   */
  var count: Int { get }

  /*!
   @method objectAtIndexedSubscript:
   @abstract return the indexed top level object
   */
  subscript (index: Int) -> MDLObject? { get }

  /*!
   @method objectAtIndex:
   @abstract return the indexed top level object
   */
  func objectAtIndex(index: Int) -> MDLObject
  init()
  @available(OSX 10.11, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.11, *)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}

/**
 MDLCamera
 
 @summary MDLCamera models a physically plausible camera.
 
 @discussion

 Note that values are represented as float in MDLCamera as it offers sufficient 
 precision, and because calculations will be identical on any processor 
 architecture. This consistency is a requirement of the model.

 MDLCamera provides the a model of the parameters governing the physical process 
 of transforming a scene into an image.

 This process is modeled as a series of steps, each governed by physically 
 plausible properties.
 
 
 1. The position and orientation of the camera
    @see MDLObject transform property
 
    The MDLTransformComponent on an MDLCamera is an MDLTransform.
 
 2. Visible Objects and Lights
    @property nearVisibilityDistance The minimum distance from the camera of a 
              visible object
    @property farVisibilityDistance The maximum distance from the camera of a 
              visible object
 
    Those objects existing between nearVisibilityDistance and farVisibilityDistance 
    are considered to be visible. All lights are considered, irrespective of 
    nearVisibilityDistance and farVisibilityDistance, to compute scene luminance.
 
    @property worldToMetersConversionScale
 
    Some calculations, such as the calculation of stereo view matrices, require
    calculations to occur in world space. Significant quantities measured in mm
    therefore use this conversion scale to perform the calculation. The default
    value is 1.0.
 
 3. Scene Luminance through the lens
 
    @property barrelDistorion
    @property fisheyeDistortion
 
    Illuminated objects result in scene luminance, which passes through the lens.
    All lenses impose some amount of radial distortion which can be computed from 
    focal length. However, some lenses introduce error, and radial distortion can 
    be used as an aesthetic control as well. Therefore radial distortion is 
    provided as a property. If r is the radial distance of a pixel from the center 
    of the projection, then radial distortion is computed as
 
         r' = r * (1 + barrelDistorion * r^2 + fisheyeDistortion * r^4)

    radialDistortion sufficiently describes the distortion characteristic of most 
    lenses. In order to simulate certain other lenses, such as those found in 
    security cameras, fisheye lenses, plastic toy lenses, sport cameras, or some 
    VR headsets, radialDistortion2 is introduced.
 
    The default for the radial distortion parameters is zero, resulting in a 
    rectilinear projection.
 
    @property opticalVignetting
 
    Optical vignetting occurs to some degree in all lenses. It results from light 
    at the edge of an image being blocked as it travels past the lens hood and 
    the internal lens apertures. It is more prevalent with wide apertures. A 
    value of zero indicates no optical vignetting is occuring, and a value of one 
    indicates that vignetting affects all locations in the image according to 
    radial distance. Optical vignetting also occurs in head mounted displays, and 
    the value here can be used as an intended amount of vignetting to apply to an
    image.
 
    @property chromaticAberration
    
    Chromatic aberration occurs to some degree in all lenses. It results from a 
    lens bringing different wavelengths of light to focus at different places on 
    the image plane. A value of zero indicates no chromatic aberration is 
    occurring, and one indicates maximum. Chromatic aberration affects all 
    locations in the image according to radial distance. Chromatic aberration 
    also occurs in head mounted displays, and the value here can be used as an 
    intended amount of chromatic aberration to apply to an image.
 
 4. Geometry of the lens
 
    @property focalLength
 
    The default focal length is 50mm, corresponding to a field of view of 54 
    degrees, and vertical sensor aperture of 24mm. Changing focalLength will 
    update the field of view property.
 
    @property focusDistance
 
    The distance, in meters, at which the lens is focused. The default is 2.5m.
 
    @property fieldOfView
 
    The field of view is calcualted from the focal length and sensor aperture.
    Changing the field of view will update the focalLength property with respect 
    to the sensor aperture. The default is 54 degrees, corresponding to a focal 
    length of 50mm, and a vertical sensor aperture of 24mm.
 
    @property fStop
 
    The f-stop is the ratio of the lens' focal length to the diameter of the 
    entrance pupil. The default is 5.6. It controls the amount of light that 
    reaches the sensor, as well as the size of out of focus parts of the image.
    The diameter of the entrance pupil, is therefore obtained
    by dividing the fStop by the focalLength.
 
 5. Lens exit aperture
 
    @property apertureBladeCount
 
    The shape of out of focus highlights in a scene is commonly known as "bokeh". 
    The aesthetic quality of a lens' bokeh is one of the characteristics that 
    drives the choice of a lens for a particular scene. To a large degree, the 
    appearance of bokeh is governed by the shape of the lens aperture. Typical 
    lens apertures are controlled by a series of overlapping blades that can be 
    irised open and closed. A lens with a five blade aperture will yield a five
    sided bokeh. The default is zero, which is to be interpreted as a perfectly 
    round aperture.
 
    Note that the effect of a filter on the front of the lens can be modeled 
    equivalently at the exit aperture. The MIOCamera does not explicitly provide 
    specification of such effects, but a simulation could incorporate them at 
    this stage.
 
    @property maximumCircleOfConfusion

    Although the size of an out of focus bokeh highlight can be computed from
    other camera properties, it is often necessary to limit the size of the 
    circle of confusion for aesthetic reasons. The circle of confusion is 
    specified in mm, and the default is 0.05mm. The units are mm on the sensor 
    plane.
 
    @property shutterOpenInterval
 
    The length of time in seconds the shutter is open, impacting the amount of 
    light that reaches the sensor and also the length of motion blur trails. The 
    shutter time is not the same thing as scene frame rate. The rule of thumb for 
    movies is that the shutter time should be half the frame rate, so to achieve
    a "filmic" look, the shutter time choice might be 1/48 of a second, since 
    films are usually projected at 24 frames per second. Shutter time is 
    independent of simulation frame rate because motion blur trails and exposure 
    times should be held constant in order to avoid flicker artifacts.
 
 6. Sensor illuminance
 
    @property sensorVerticalAperture
 
    The default aperture is 24mm, corresponding to a 35mm stills camera.
    _____________________
    [][][][][][][][][][][              ^
     \     |         |  \      ^       |
      \    |         |   \    24mm   35mm
       \   |         |    \    v       |
       ][][][][][][][][][][]           v
       ---------------------
           <- 36mm -->
 
    Changing the aperture will update the field of view property with respect to 
    the focal length. The horizontal aperture can be calculated from the aspect 
    property.
 
    @property sensorAspect
    aspect ratio of width versus height of the sensor aperture. The default is 
    36mm/24mm, ie: 1.5.
 
    @property sensorEnlargement

    The sensor enlargment property scales the active region of the sensor. A 
    zoom factor of 2 will result in the central portion of the image being 
    cropped and expanded to fill the image plane. The default is 1.
 
    @property sensorShift
    
    The sensor shift property moves the center of the sensor relative to the 
    lens. This is useful in certain calculations, such as shadow or reflection
    projections, as well as to provide vergence in a parallel stereoscopic camera.

 5. Exposure
 
    Finally, the sensor values need to be converted for display.
 
    @property flash
 
    Flashing is applied to a film stock some time before processing. It is a 
    small and even level of exposure added to the entire image intended shift 
    the brightness and color of darker areas of the image. Since exposure is 
    logarithmic, flash does not affect midtones or highlights.
    
    The equivalent to flash in a color grading system is known as lift. Typically 
    red, green, and blue can be controlled independently.
 
    A negative value for flash can be used to subtract color.
 
    @property exposure
 
    Finally, exposure should be applied to the compressed value. Red,
    green, and blue exposure can be specified separately. The default is 1.0.

    @property exposureCompression
 
    Gamma curve compression where values below the x value are to be passed through,
    about the y value, values are to be clamped at maximum display brightness,
    and a function such as a logarithmic ramp is to be applied in between. The
    default is (1,0, 1.0).

    A displayable value is therefore obtained via
       pow(exposureCompression((sensor value + flash) * exposure), displayGamma)

 */
@available(OSX 10.11, *)
class MDLCamera : MDLObject {

  /**
   The projection matrix is calculated from the near and far visibility distances,
   and the field of view.
   @see nearVisibilityDistance, nearVisibilityDistance
   */
  var projectionMatrix: matrix_float4x4 { get }

  /**
   Move the camera back and orient the camera so that a bounding box is framed 
   within the current field of view. Uses the Y axis as up.
   If setNearAndFar is YES, the near and far visibility distances will be set.
   */
  func frameBoundingBox(boundingBox: MDLAxisAlignedBoundingBox, setNearAndFar: Bool)

  /**
   Orient the camera so that the camera points at focusPosition. Assumes that the 
   Y axis is up.
   */
  func lookAt(focusPosition: vector_float3)

  /**
   Set the position of the camera and orient it so that it points at focusPosition. 
   Assumes that the Y axis is up.
   */
  func lookAt(focusPosition: vector_float3, from cameraPosition: vector_float3)

  /**
   A convenience function to calculate a ray from the camera to a pixel in a 
   viewport of a given size
   */
  func rayTo(pixel: vector_int2, forViewPort size: vector_int2) -> vector_float3

  /**
   Bounding distance for visible objects 
   */
  var nearVisibilityDistance: Float
  var farVisibilityDistance: Float

  /**
   World to meters conversion scale. Required for certain calculations.
   */
  var worldToMetersConversionScale: Float

  /**
   Radial distortion of the lens, second order term
   */
  var barrelDistortion: Float

  /**
   Radial distortion of the lens, fourth order term
   */
  var fisheyeDistortion: Float

  /**
   Amount of optical vignetting, rom zero to one.
   */
  var opticalVignetting: Float

  /**
   Amount of chromatic abberation, from zero to one.
   */
  var chromaticAberration: Float

  /**
   Lens focal length in mm.
   @see fieldOfView
   */
  var focalLength: Float

  /**
   Focus distance
   */
  var focusDistance: Float

  /**
   The field of view, in degrees.
   @see focalLength
   */
  var fieldOfView: Float

  /**
   f-stop, default is 5.6
   */
  var fStop: Float

  /**
    Aperture blade count, where zero indicates a circle.
   */
  var apertureBladeCount: Int

  /**
   Maximum circle of confusion size in mm on the image plane
   */
  var maximumCircleOfConfusion: Float

  /**
   Create a bokeh kernel corresponding to the apertureBladeCount
   */
  func bokehKernelWithSize(size: vector_int2) -> MDLTexture

  /**
   Shutter open interval, in seconds
   */
  var shutterOpenInterval: NSTimeInterval

  /**
   vertical aperture of the sensor or film gate, default is 24mm
   @see sensorAspect
  */
  var sensorVerticalAperture: Float

  /** 
   Sensor or film gate aperture aspect ratio, default is 1.5
   @see sensorVerticalAperture
   */
  var sensorAspect: Float

  /** 
   Sensor zoom factor
   */
  var sensorEnlargement: vector_float2

  /**
   Sensor shift factor in mm.
   */
  var sensorShift: vector_float2

  /**
   Flash amount, unit less
   */
  var flash: vector_float3

  /**
   exposure curve compression where values below the x value are to be passed through,
   above the y value, values are to be clamped at maximum display brightness, and a
   function such as a logarithmic ramp is to be applied in between.
   */
  var exposureCompression: vector_float2

  /**
   Exposure amount, unit less
   */
  var exposure: vector_float3
  init()
}
@available(OSX 10.11, *)
class MDLStereoscopicCamera : MDLCamera {

  /**
   Inter-pupillary distance in mm.
   Default is 63mm.
   */
  var interPupillaryDistance: Float

  /**
   Vergence in a stereoscopic camera can be controlled in two ways. A toed-in 
   binocular stereoscopic camera rotates the lens and sensor together such that a 
   ray projected from the center of either sensor and lens meets at a point. A 
   parallel binocular stereoscopic camera accomplishes the same thing by shifting 
   the relative centers of the sensor and lens.
   
   If a parallel binocular stereoscopic camera is modeled, the sensor should be 
   considered to have shifted by an amount h. If left and right vergence are equal,
     h = (focal length * interOcularDistance) / distance to vergence point.
   
   Vergence is measured in degrees towards center and is usually positive.
   */
  var leftVergence: Float
  var rightVergence: Float

  /**
   The amount, as a percentage of image width to offset an image towards the other 
   camera. This value is used in a stereo grade to enhance or reduce the intensity 
   of the stereoscopic effect
   */
  var overlap: Float

  /**
   Convenience utilities to create view and projection matrices. The view matrix
   calculations requires that the world to meters conversion scale be set.
   
   @see worldToMetersConversionScale
   */
  var leftViewMatrix: matrix_float4x4 { get }
  var rightViewMatrix: matrix_float4x4 { get }
  var leftProjectionMatrix: matrix_float4x4 { get }
  var rightProjectionMatrix: matrix_float4x4 { get }
  init()
}
enum MDLLightType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Unknown
  case Ambient
  case Directional
  case Spot
  case Point
  case Linear
  case DiscArea
  case RectangularArea
  case SuperElliptical
  case Photometric
  case Probe
  case Environment
}
@available(OSX 10.11, *)
class MDLLight : MDLObject {

  /** A utility function that returns the irradiance from the light at a given point.
      @discussion point is world space
    */
  func irradianceAtPoint(point: vector_float3) -> Unmanaged<CGColor>
  func irradianceAtPoint(point: vector_float3, colorSpace: CGColorSpace) -> Unmanaged<CGColor>
  var lightType: MDLLightType
  init()
}

/*!
 @class MDLPhysicallyPlausibleLight
 @abstract A light with characteristics representing plausible real world lights
 
 @property color The color of the light.
 @property lumens The brightness of the light.
 @property innerConeAngle Within this cone, light is at maximum brightness. Units are degrees.
 @property outerConeAngle Between the inner cone angle and the outer, light 
           quadratically attenuates to zero.
 @property attenuationStartDistance. Within the attenuation start distance, the
           light is maximally bright.
 @property attenuationEndDistance. Beyond this distance, there is no light.

 @discussion A good formula to calculate falloff is
 
   falloff = clamp((1 - (distance/attenuationStartDistance)^4) ^2), 0, 1) / (distance^2 + 1)
 
   Note that adding one to distance in the denominator prevents numerical issues 
   very close to the light's origin.
 */
@available(OSX 10.11, *)
class MDLPhysicallyPlausibleLight : MDLLight {

  /**
   Light color specified by color temperature, in degrees Kelvin
   @discussion default color is 6500K, cool daylight.
   */
  func setColorByTemperature(temperature: Float)
  var color: CGColor?
  var lumens: Float
  var innerConeAngle: Float
  var outerConeAngle: Float
  var attenuationStartDistance: Float
  var attenuationEndDistance: Float
  init()
}
@available(OSX 10.11, *)
class MDLAreaLight : MDLPhysicallyPlausibleLight {
  var areaRadius: Float
  var superEllipticPower: vector_float2
  var aspect: Float
  init()
}

/*!
 @class MDLPhotometricLight
 @abstract A light created from measurements at various angles.
 
 @property lightCubeMap A cube map that can be sampled at various directions to
           learn the intensity of the light in that direction.
 @property sphericalHarmonicsLevel The value generateSphericalHarmonicsFromLight: 
           used to calculate the spherical harmonics coefficients
 @property sphericalHarmonicsCoefficients The spherical harmonic coefficiencts
           calculated by generateSphericalHarmonicsFromLight:
*/
@available(OSX 10.11, *)
class MDLPhotometricLight : MDLPhysicallyPlausibleLight {
  init?(IESProfile URL: NSURL)
  func generateSphericalHarmonicsFromLight(sphericalHarmonicsLevel: Int)
  func generateCubemapFromLight(textureSize: Int)
  var lightCubeMap: MDLTexture? { get }
  var sphericalHarmonicsLevel: Int { get }
  @NSCopying var sphericalHarmonicsCoefficients: NSData? { get }
  init()
}
@available(OSX 10.11, *)
class MDLLightProbe : MDLLight {
  init(reflectiveTexture: MDLTexture?, irradianceTexture: MDLTexture?)
  func generateSphericalHarmonicsFromIrradiance(sphericalHarmonicsLevel: Int)
  var reflectiveTexture: MDLTexture? { get }
  var irradianceTexture: MDLTexture? { get }
  var sphericalHarmonicsLevel: Int { get }
  @NSCopying var sphericalHarmonicsCoefficients: NSData? { get }
  init()
}
extension MDLLightProbe {
  /*not inherited*/ init?(textureSize: Int, forLocation transform: MDLTransform, lightsToConsider: [MDLLight], objectsToConsider: [MDLObject], reflectiveCubemap: MDLTexture?, irradianceCubemap: MDLTexture?)
}

/**
 MDLMaterialSemantic
 
 @summary The material semantics are identifiers for material properties 
            formally identified by one of the standard material descriptors.
 
 @discussion When files containing material properties are loaded and translated 
             by ModelIO, an appropriate standard material descriptor will be 
             chosen, and any properties translated from the loaded file can be 
             retrieved using one of these semantics.
 
 MDLMaterialSemanticBaseColor
    The inherent color of a surface to be used as a modulator during shading. 
    Default is 50% gray
 
 MDLMaterialSemanticSubsurface,
    The degree to which light scatters under the surface of a material
 
 MDLMaterialSemanticMetallic
    A blend between a material behaving as a dielectric material at zero, and a 
    metal at one.
 
 MDLMaterialSemanticSpecular
    Specular response to incident light
 
 MDLMaterialSemanticSpecularExponent
    Power of the specular exponent in the case that a Blinn/Phong BSDF is in use.
 
 MDLMaterialSemanticSpecularTint
    At zero, the specular highlight will use the hue, saturation, and intensity 
    of incoming light to color the specular response; at one, the material's 
    base color, and the light's intensity will be used.
 
 MDLMaterialSemanticRoughness
    Controls diffuse and specular response. A value of zero is smooth and shiny. 
    At one, a diffuse material will retroreflect, and the specular highlight 
    will be very spread out.
 
 MDLMaterialSemanticAnisotropic
    The degree to which the specular highlight is elongated in the direction of 
    the local tangent basis. A mesh that does not have a tangent basis will not 
    respond to this parameter.
 
 MDLMaterialSemanticAnisotropicRotation
    The degree to which the anisotropy is rotated relative to the direction of the
    local tangent basis. Values from zero to one are mapped to zero to two PI.
 
 MDLMaterialSemanticSheen
    A specular tint that appears at glancing angles on an object
 
 MDLMaterialSemanticSheenTint
    At zero, the specular highlight will use the hue, saturation, and intensity 
    of incoming light to color the specular response; at one, the material's 
    base color, and the light's intensity will be used.
 
 MDLMaterialSemanticClearcoat
    A second specular highlight, much like the gloss that results from a clear 
    coat on an automotive finish
 
 MDLMaterialSemanticClearcoatGloss
    The glossiness of the clear coat highlight.

 MDLMaterialSemanticEmission
    A value that is to be emitted as radiance by a surface
 
 MDLMaterialSemanticBump
    A value that perturbs surface normals according to the local gradient of 
    the property
 
 MDLMaterialSemanticOpacity
    The opacity of the surface
 
 MDLMaterialSemanticInterfaceIndexOfRefraction
    n1 in Schlick's equation, typically 1.0 for air
 
 MDLMaterialSemanticMaterialIndexOfRefraction
    n2 in Schlick's equation

 MDLMaterialSemanticObjectSpaceNormal
    A value that perturbs surface normals in object space
 
 MDLMaterialSemanticTangentSpaceNormal
    A value that perturbs surface normals in a local tangent space

 MDLMaterialSemanticDisplacement
    Displacement of a surface relative to surface normal
 
 MDLMaterialSemanticDisplacementScale
    Scaling factor for displacement
 
 MDLMaterialSemanticAmbientOcclusion
    Ambient occlusion describes the accessibility of the surface to the 
    surrounding radiant environment and is typically used to attenuate it. It is 
    not intended to attenuate direct illumination sources.
 
 MDLMaterialSemanticAmbientOcclusionScale
    The degree to which the ambient occlusion values are applied
 
 MDLMaterialSemanticUserDefined = 0x8000
    Properties with this value are created when material properties are 
    translated for which no known semantic applies.
    Semantics defined at greater than this value are available to be user defined.
    The first value is also used to indicate

 */
enum MDLMaterialSemantic : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case BaseColor
  case Subsurface
  case Metallic
  case Specular
  case SpecularExponent
  case SpecularTint
  case Roughness
  case Anisotropic
  case AnisotropicRotation
  case Sheen
  case SheenTint
  case Clearcoat
  case ClearcoatGloss
  case Emission
  case Bump
  case Opacity
  case InterfaceIndexOfRefraction
  case MaterialIndexOfRefraction
  case ObjectSpaceNormal
  case TangentSpaceNormal
  case Displacement
  case DisplacementScale
  case AmbientOcclusion
  case AmbientOcclusionScale
  case None
  case UserDefined
}
enum MDLMaterialPropertyType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case String
  case URL
  case Texture
  case Color
  case Float
  case Float2
  case Float3
  case Float4
  case Matrix44
}

/**
 Texture filtering
 */
enum MDLMaterialTextureWrapMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Clamp
  case Repeat
  case Mirror
}
enum MDLMaterialTextureFilterMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Nearest
  case Linear
}
enum MDLMaterialMipMapFilterMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Nearest
  case Linear
}
@available(OSX 10.11, *)
class MDLTextureFilter : NSObject {
  var sWrapMode: MDLMaterialTextureWrapMode
  var tWrapMode: MDLMaterialTextureWrapMode
  var rWrapMode: MDLMaterialTextureWrapMode
  var minFilter: MDLMaterialTextureFilterMode
  var magFilter: MDLMaterialTextureFilterMode
  var mipFilter: MDLMaterialMipMapFilterMode
  init()
}
@available(OSX 10.11, *)
class MDLTextureSampler : NSObject {
  var texture: MDLTexture?
  var hardwareFilter: MDLTextureFilter?
  var transform: MDLTransform?
  init()
}

/**
 If a color is encoded in a floatN property, it is to be interpreted as 
 a Rec 709 color.
 */
@available(OSX 10.11, *)
class MDLMaterialProperty : NSObject, MDLNamed {
  init(name: String, semantic: MDLMaterialSemantic)
  convenience init(name: String, semantic: MDLMaterialSemantic, float value: Float)
  convenience init(name: String, semantic: MDLMaterialSemantic, float2 value: vector_float2)
  convenience init(name: String, semantic: MDLMaterialSemantic, float3 value: vector_float3)
  convenience init(name: String, semantic: MDLMaterialSemantic, float4 value: vector_float4)
  convenience init(name: String, semantic: MDLMaterialSemantic, matrix4x4 value: matrix_float4x4)
  convenience init(name: String, semantic: MDLMaterialSemantic, URL: NSURL?)
  convenience init(name: String, semantic: MDLMaterialSemantic, string: String?)
  convenience init(name: String, semantic: MDLMaterialSemantic, textureSampler: MDLTextureSampler?)
  convenience init(name: String, semantic: MDLMaterialSemantic, color: CGColor)
  func setProperties(property: MDLMaterialProperty)
  var semantic: MDLMaterialSemantic
  var type: MDLMaterialPropertyType { get }

  /** @see MDLNamed */
  var name: String
  var stringValue: String?
  @NSCopying var URLValue: NSURL?
  var textureSamplerValue: MDLTextureSampler?
  var color: CGColor?
  var floatValue: Float
  var float2Value: vector_float2
  var float3Value: vector_float3
  var float4Value: vector_float4
  var matrix4x4: matrix_float4x4
}

/**
 The base scattering function is Lambertian, with a Blinn-Phong specular response.
 Specular power for Blinn-Phong can be derived from the roughness property using 
 an approximation.
 */
@available(OSX 10.11, *)
class MDLScatteringFunction : NSObject, MDLNamed {

  /** @see MDLNamed */
  var name: String
  var baseColor: MDLMaterialProperty { get }
  var emission: MDLMaterialProperty { get }
  var specular: MDLMaterialProperty { get }
  var materialIndexOfRefraction: MDLMaterialProperty { get }
  var interfaceIndexOfRefraction: MDLMaterialProperty { get }
  var normal: MDLMaterialProperty { get }
  var ambientOcclusion: MDLMaterialProperty { get }
  var ambientOcclusionScale: MDLMaterialProperty { get }
  init()
}
@available(OSX 10.11, *)
class MDLPhysicallyPlausibleScatteringFunction : MDLScatteringFunction {
  var version: Int { get }
  var subsurface: MDLMaterialProperty { get }
  var metallic: MDLMaterialProperty { get }
  var specularAmount: MDLMaterialProperty { get }
  var specularTint: MDLMaterialProperty { get }
  var roughness: MDLMaterialProperty { get }
  var anisotropic: MDLMaterialProperty { get }
  var anisotropicRotation: MDLMaterialProperty { get }
  var sheen: MDLMaterialProperty { get }
  var sheenTint: MDLMaterialProperty { get }
  var clearcoat: MDLMaterialProperty { get }
  var clearcoatGloss: MDLMaterialProperty { get }
  init()
}
@available(OSX 10.11, *)
class MDLMaterial : NSObject, MDLNamed, NSFastEnumeration {
  init(name: String, scatteringFunction: MDLScatteringFunction)
  func setProperty(property: MDLMaterialProperty)
  func removeProperty(property: MDLMaterialProperty)
  func propertyNamed(name: String) -> MDLMaterialProperty?
  func propertyWithSemantic(semantic: MDLMaterialSemantic) -> MDLMaterialProperty?
  func removeAllProperties()
  var scatteringFunction: MDLScatteringFunction { get }

  /** @see MDLNamed */
  var name: String
  var baseMaterial: MDLMaterial?
  subscript (idx: Int) -> MDLMaterialProperty? { get }
  subscript (name: String) -> MDLMaterialProperty? { get }
  var count: Int { get }
  init()
  @available(OSX 10.11, *)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}

/*!
 @class MDLVertexAttributeData
 @abstract convenience object to quickly access vertex attribute data
 @discussion created by MDLMesh's vertexAttributeData selector
 */
@available(OSX 10.11, *)
class MDLVertexAttributeData : NSObject {
  var map: MDLMeshBufferMap
  var dataStart: UnsafeMutablePointer<Void>
  var stride: Int
  var format: MDLVertexFormat
  init()
}

/*!
 @class MDLMesh
 @abstract A vertex buffer with info to interpret vertex data
 @discussion Includes a collection of submeshs which have indexbuffer and
             material information
 */
@available(OSX 10.11, *)
class MDLMesh : MDLObject {

  /*!
   @method initWithVertexBuffer:vertexCount:descriptor:submeshes:
   @abstract Initialize object with a vertex buffer and a collection of submeshes
   @return Initialized mesh or nil if descriptor's layout array does not describe 
           a single buffer
   @param vertexBuffer MDLMeshBuffer object containing all vertex data for the mesh
   @param vertexCount Number of vertices in the vertexBuffer
   @param descriptor VertexDescriptor specifying how to interpret vertex data
   @param submeshes Array of submeshes with index buffers referencing vertex data 
          and/or materials to be applied to mesh
   */
  init(vertexBuffer: MDLMeshBuffer, vertexCount: Int, descriptor: MDLVertexDescriptor, submeshes: [MDLSubmesh])

  /*!
   @method initWithVertexBuffer:vertexCount:descriptor:submeshes:
   @abstract Initialize object with an array of vertex buffers (Structure of 
             Arrays) and a collection of submeshes
   @return Initialized mesh or nil if descriptor's layout array is incompatible 
           with vertexBuffers array
   @param vertexCount Number of vertices in vertexBuffers
   @param vertexBuffer An array of MDLMeshBuffer objects containing vertex data 
           for the mesh
   @param descriptor VertexDescriptor specifying how to interpret vertex data
   @param submeshes Array of submeshes with index buffers referencing vertex data 
          and/or materials to be applied to mesh
   @discussion Allows initialization with the layout of the vertexBuffers in a 
          structure-of-arrays form, in other words, non-interleaved vertex attributes
   */
  init(vertexBuffers: [MDLMeshBuffer], vertexCount: Int, descriptor: MDLVertexDescriptor, submeshes: [MDLSubmesh])

  /*!
   @method vertexAttributeDataForAttributeNamed:
   @abstract convenience selector to get quick access to vertex attribute data
   @discussion the vertex buffer will remain mapped until the MDLVertexAttributeData
               is freed.
   */
  func vertexAttributeDataForAttributeNamed(name: String) -> MDLVertexAttributeData?

  /*!
   @property boundingBox
   @abstract Bounding box encompasing the mesh
   @discussion Calculated by iterating through MDLVertexAttributePosition to find
               min and max bounds. If no attribute is named MDLVertexAttributePosition
               this will be a invalid bounds where maxBounds is less than minBounds.
   */
  var boundingBox: MDLAxisAlignedBoundingBox { get }

  /*!
   @property vertexDescriptor
   @abstract Immutable vertex descriptor for interpreting data in vertexBuffers
   @discussion Setting this applies the new layout in 'vertexBuffers' thus is a 
               heavyweight operation as structured copies of almost all vertex 
               buffer data could be made.  Additionally, if the new vertexDescriptor 
               does not have an attribute in the original vertexDescriptor, that 
               attribute will be deleted.  If the original vertexDescriptor does 
               not have an attribute in the new vertexDescriptor, the data for the 
               added attribute set as the added attribute's initializationValue 
               property.
   
               The allocator associated with each original meshbuffer is used to
               reallocate the corresponding resultant meshbuffer.
   */
  @NSCopying var vertexDescriptor: MDLVertexDescriptor

  /*!
   @property vertexCount
   @abstract Number of vertices in the vertexBuffers
   @discussion The size of vertex data in each buffer can be compute by multiplying 
               this value with the stride of the buffer in the vertexDescriptor's 
               layout
   */
  var vertexCount: Int { get }

  /*!
   @property vertexBuffers
   @abstract Array of buffers containing vertex data
   @discussion The vertex buffers in this array are indexed by the vertex descriptor.
   */
  var vertexBuffers: [MDLMeshBuffer] { get }

  /*!
   @property submeshes
   @abstract Array of submeshes containing an indexbuffer referencing the vertex 
             data and material to be applied when the mesh is rendered
   */
  var submeshes: NSMutableArray { get }
  init()
}
extension MDLMesh {

  /*!
   @method addAttributeWithName:format
   @abstract Convenience method to add an attribute
   @discussion The mesh's allocator will be used to create storage for the new
               attribute.
   */
  func addAttributeWithName(name: String, format: MDLVertexFormat)

  /*!
   @method addNormalsWithAttributeNamed:bufferIndex:
   @abstract Calculate and add vertex normal data
   @param attributeName Name of vertex normal attribute.  If nil, vertex normals 
          will be added with the MDLVertexAttributeNormal name string
   @param creaseThreshold Threshold of the dot product between the 2 triangles after which 
                          their face normal will be smoothed out. Therefore, a threshold of 0 will
                          smooth everything and a threshold of 1 won't smooth anything.
   @discussion Uses the attribute named MDLVertexAttributePosition to calculate
               vertex normals. If the mesh does not have an attribute with 
               'attributeName', it will be added, otherwise the attribute name will 
               be overwritten with vertex normal data. 'vertexDescriptor' will be 
               updated to reflect the new attribute.
   */
  func addNormalsWithAttributeNamed(attributeName: String?, creaseThreshold: Float)

  /*!
   @method addTangentBasisForTextureCoordinateAttributeNamed:tangentAttributeNamed:bitangentAttributeNamed
   @abstract Create tangent basis data
   @param textureCoordinateAttributeName texture coordinates to use in calculations
   @param tangentAttributeName Name of vertex tangent attribute.
   @param bitangentAttributeNamed Name of vertex bitangent attribute.
   @discussion Uses the attribute named MDLVertexAttributePosition and
               textureCoordinateAttributeName to calculate tangent and bitangent
               attributes. The mesh's vertexDescriptor will be updated to reflect 
               the new attributes if necessary.
   */
  func addTangentBasisForTextureCoordinateAttributeNamed(textureCoordinateAttributeName: String, tangentAttributeNamed tangentAttributeName: String, bitangentAttributeNamed bitangentAttributeName: String?)

  /*!
   @method addTangentBasisForTextureCoordinateAttributeNamed:normalAttributeNamed:tangentAttributeNamed
   @abstract Create tangent basis data
   @param textureCoordinateAttributeName texture coordinates to use in calculations
   @param normalAttributeNamed normals to use in calculations
   @param tangentAttributeName Name of a four component vertex tangent attribute.
   @discussion Uses the attribute named MDLVertexAttributePosition and
               textureCoordinateAttributeName and the specified normals to calculate 
               tangent information. The mesh's vertexDescriptor will be updated to 
               reflect the new attribute if necessary.
               Note that the bitangent can be calculated from the normal and 
               tangent by B = (N x T) * T.w
   */
  func addTangentBasisForTextureCoordinateAttributeNamed(textureCoordinateAttributeName: String, normalAttributeNamed normalAttributeName: String, tangentAttributeNamed tangentAttributeName: String)

  /*!
   @method makeVerticesUnique:
   @abstract Deindexes the vertex array
   @discussion If any vertices are shared on multiple faces, duplicate those 
               vertices so faces do not share vertices. The vertex buffer and index 
               buffers on submeshes may grow to accomadate any vertices added.
   */
  func makeVerticesUnique()
}
extension MDLMesh {

  /*!
   @method newEllipsoidWithRadii:radialSegments:verticalSegments:inwardNormals:hemisphere:allocator:
   @abstract Factory method for generating a mesh with an ellipsoid shape
   @return MDLMesh epllipsoid with desired attributes
   @param radii Width, height, and depth of ellipsoid.
   @param radialSegments Number of pie slices :)
   @param verticalSegments Number of slices in the vertical direction
   @param geometryType Must be MDLGeometryTypeTriangles
   @param inwardNormals If true, generated normals will face inwards. Useful for 
          generating a skydome.
   @param geometryType Must be  Must be MDLGeometryTypeTriangles
   @param hemisphere If true, only top half of ellipsoid will be generated. The
          actual nubmer of vertical slices will be half of 'vertical' segments
   @param allocator A mesh buffer allocator used to allocate memory to back buffers 
          for the returned mesh.  If nil, a default allocator will be used
   @discussion Specifying inward normals and hemisphere is useful for generating a skydome.
               Specifying equal X, Y, and Z radii will generate a sphere.
               Specifying a y radius of 0.0 will generate a disc.
               Will raise an exception if radialSegments is < 3, verticalSegments is < 2,
               or an unsupported geometry type is passed in.
   */
  class func newEllipsoidWithRadii(radii: vector_float3, radialSegments: Int, verticalSegments: Int, geometryType: MDLGeometryType, inwardNormals: Bool, hemisphere: Bool, allocator: MDLMeshBufferAllocator?) -> Self

  /*!
   @method newCylinderWithHeight:
   @abstract Factory method for generating a mesh with a cylindrical shape
   @return MDLMesh cylinder with desired attributes
   @param height Height of cylindoid.
   @param radii Radii of cylinder in X and Z directions.
   @param radialSegments Number of pie slices :)
   @param verticalSegments Number of slices along Y axis
   @param geometryType Must be MDLGeometryTypeTriangles
   @param inwardNormals Normals point toward center of cylinder
   @param allocator A mesh buffer allocator used to allocate memory to back buffers 
          for the returned mesh.  If nil, a default allocator will be used
   @discussion Center of cylinder at (0, 0, 0) with a top at +Y and bottom at -Y.
               Specifying equal X and Z radia will generate a true cylinder.
               Specifying a height of 0.0 and verticalSegments of 0 will generate
               a disc.
               Will raise and exceiption radialSegments is < 3 or an unsupported
               geometry type is passed in.
               Generated texture coordinates are laid out as follows:
                                                        ___
                                                       /   \   <- T texcoord = 0.0
                   Texture for top of cylinder   ---> [     ]
                                                       \___/
                                                      [     ]  <- T texcoord = 0.3333
                                                      [     ]
                   Texture for sides of cylinder ---> [     ]
                                                      [_____]  <- T texcoord = 0.6666
                                                       /   \
                   Texture for base of cylinder  ---> [     ]
                                                       \___/   <- T texcoord = 1.0
   */
  class func newCylinderWithHeight(height: Float, radii: vector_float2, radialSegments: Int, verticalSegments: Int, geometryType: MDLGeometryType, inwardNormals: Bool, allocator: MDLMeshBufferAllocator?) -> Self

  /*!
   @method newEllipticalConeWithHeight:radii:radialSegments:verticalSegments:inwardNormals:allocator:
   @abstract Factory method for generating a mesh with an ellipticalCone shape.
   @return MDLMesh cone with desired attributes
   @param height Height of ellipticalCone from point to base.
   @param radii Radii of base in X and Z directions.  Values of vector should be 
          equal to create a true cone.
   @param radialSegments Number of pie slices :)
   @param verticalSegments Number of slices along Y axis
   @param geometryType Must be MDLGeometryTypeTriangles
   @param inwardNormals Normals point toward center of ellipticalCone
   @param allocator A mesh buffer allocator used to allocate memory to back buffers 
          for the returned mesh.  If nil, a default allocator will be used
   @discussion Point of cone at (0, 0, 0) while base of cone is -Y. 
               Will raise an exception if radialSegments is < 3, verticalSegments is < 1,
               or an unsupported geometry type is passed in.
               Generated texture coordinates are laid out as follows:
                                                   _____
                                                  [     ]  <- T texcoord = 0.0
                                                  [     ]
                   Texture for sides of cone ---> [     ]
                                                  [     ]
                                                  [_____]  <- T texcoord = 0.6666
                                                   /   \
                   Texture for base of cone  ---> [     ]
                                                   \___/   <- T texcoord = 1.0
   */
  class func newEllipticalConeWithHeight(height: Float, radii: vector_float2, radialSegments: Int, verticalSegments: Int, geometryType: MDLGeometryType, inwardNormals: Bool, allocator: MDLMeshBufferAllocator?) -> Self

  /*!
   @method newIcosahedronWithRadius:inwardNormals:allocator:
   @abstract Factory method for generating a mesh icosahedron
   @return MDLMesh icosahedron with desired attributes
   @param radius Distance from the center to the outermost point of the mesh
   @param inwardNormals Generated normals will face towards the center of the mesh
   @param allocator A mesh buffer allocator used to allocate memory to back buffers 
          for the returned mesh.  If nil, a default allocator will be used
   @discussion  Creates an icosahedron with center at (0, 0, 0).
   */
  class func newIcosahedronWithRadius(radius: Float, inwardNormals: Bool, allocator: MDLMeshBufferAllocator?) -> Self

  /*!
   @method newSubdividedMesh:subdivisionLevels:allocator:
   @abstract Factory method that generates a subdivided mesh from a source mesh
   @param mesh Mesh from which to generate a subdivided mesh
   @param submeshIndex Index of submesh in Mesh's submesh array from which to
          generate a subdivided mesh
   @param subdivisionLevels The number of levels to subdivide mesh
   @discussion Subdivision levels over four are likely to generate more triangles 
               than can be reasonably displayed. Index and vertex data will use 
               the same allocator used for the source mesh. Loading an asset 
               using the topology preservation flag set to YES will result in the
               best subdivision results.
   @return Returns a mesh subdividied to index level, unless subdivision is 
           impossible.  Only triangle and quadrilateral meshes can be subdivided.
   */
  class func newSubdividedMesh(mesh: MDLMesh, submeshIndex: Int, subdivisionLevels: Int) -> Self?
}
extension MDLMesh {

  /*!
   @method generateAmbientOcclusionTextureWithSize:
   @abstract Creates an Ambient Occlusion texture, returns true upon success, false 
             upon failure
   @param size  Texture Size in which to bake the ambient occlusion
   @param raysPerSample Number of rays to be sent out of every texture texel against
          the object for potential occlusion.
   @param attenuationFactor Float between 0 to 1 that defines how to attenuate the 
          AO value. 0 doesn't change it, and at 1, all AO values are white except 
          if they are originally completely black. Quadratic attenuation in between.
   @param objectsToConsider NSArray of MDLMeshes containing the objects to raytrace against
   @param vertexAttributeName NSString of the MDLVertexAttribute where the vertex 
          texture UVs will be stored. Creates it if it doesn't exist, otherwise 
          overwrites current values.
   @param materialPropertyName NSString of the MDLMaterialProperty that will store 
          the texture in the Mesh.
   @result Success or failure of the baking process.
   */
  func generateAmbientOcclusionTextureWithSize(textureSize: vector_int2, raysPerSample: Int, attenuationFactor: Float, objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String, materialPropertyNamed materialPropertyName: String) -> Bool

  /*!
   @method generateAmbientOcclusionTextureWithQuality:
   @abstract Creates an Ambient Occlusion texture, returns true upon success, false
             upon failure
   @param quality Float between 0 and 1 that defines quality of the bake process.
          0 is of lower quality but bakes faster and uses less memory, where 1 is 
          of higher quality.
   @param attenuationFactor Float between 0 to 1 that defines how to attenuate the 
          AO value. 0 doesn't change it, and at 1, all AO values are white except 
          if they are originally completely black. Quadratic attenuation in between.
   @param objectsToConsider NSArray of MDLMeshes containing the objects to raytrace 
          against
   @param vertexAttributeName NSString of the MDLVertexAttribute where the vertex 
          texture UVs will be stored. Creates it if it doesn't exist, otherwise 
          overwrites current values.
   @param materialPropertyName NSString of the MDLMaterialProperty that will store 
          the texture in the Mesh.
   @result Success or failure of the baking process.
    */
  func generateAmbientOcclusionTextureWithQuality(bakeQuality: Float, attenuationFactor: Float, objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String, materialPropertyNamed materialPropertyName: String) -> Bool
  func generateAmbientOcclusionVertexColorsWithRaysPerSample(raysPerSample: Int, attenuationFactor: Float, objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String) -> Bool
  func generateAmbientOcclusionVertexColorsWithQuality(bakeQuality: Float, attenuationFactor: Float, objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String) -> Bool
  func generateLightMapTextureWithTextureSize(textureSize: vector_int2, lightsToConsider: [MDLLight], objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String, materialPropertyNamed materialPropertyName: String) -> Bool
  func generateLightMapTextureWithQuality(bakeQuality: Float, lightsToConsider: [MDLLight], objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String, materialPropertyNamed materialPropertyName: String) -> Bool
  func generateLightMapVertexColorsWithLightsToConsider(lightsToConsider: [MDLLight], objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String) -> Bool
}

/*!
 @enum MDLMeshBufferType
 @abstract Type of data a MDLMeshBuffer has been allocated for
 */
enum MDLMeshBufferType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Vertex
  case Index
}

/*!
 @class MDLMeshBufferMap
 @abstract Represents a reference to memory of a mapped MeshBuffer
 */
@available(OSX 10.11, *)
class MDLMeshBufferMap : NSObject {

  /*!
   @method initWithBytes:deallocator:
   @abstract Called by implementor of MDLMeshBuffer protocol to create the map
             and arrange for unmapping on deallocation.
   */
  init(bytes: UnsafeMutablePointer<Void>, deallocator: (() -> Void)?)

  /*!
   @property bytes
   @abstract Mutable pointer to data in a MDLMeshBuffer object.
   */
  var bytes: UnsafeMutablePointer<Void> { get }
  init()
}

/*!
 @protocol MDLMeshBuffer
 @abstract Used by ModelIO to represent a buffer to be filled with vertex and 
           index data
 @discussion Supports deep copy of data by conforming to the NSCopying protocol
 */
@available(OSX 10.11, *)
protocol MDLMeshBuffer : NSObjectProtocol, NSCopying {

  /*!
   @method fillData:offset:
   @abstract Fills buffer with data at offset
   @param data Data to fill buffer with
   @param offset Byte offset in buffer to begin filling data
   @discussion Fills data.length bytes of data.  Will not write beyond length of 
               this buffer.
   */
  func fillData(data: NSData, offset: Int)

  /*!
   @method map
   @abstract CPU access to buffer's memory
   @return An MDLMeshBufferMap object to read or modify a buffer's memory
   @discussion The buffer will remain mapped as long as the returned MDLMeshBufferMap
               object exists. Mapping a buffer may impose restrictions on a system.
               For instance,  if the implementing class maps an OpenGL buffer, that
               buffer may be  unavailable for rendering while mapped, and cause a
               draw failure.  Precautions must be taken in such cases.
   */
  func map() -> MDLMeshBufferMap

  /*!
   @property length
   @abstract Size in bytes of the buffer allocation
   */
  var length: Int { get }

  /*!
   @property allocator
   @abstract Allocator object used to create this buffer.
   @discussion This allcoator used for copy and relayout operations (such as when 
               a new vertex descriptor is applied to a vertex buffer)
   */
  var allocator: MDLMeshBufferAllocator { get }

  /*!
   @property type
   @abstract the intended type of the buffer
   */
  var type: MDLMeshBufferType { get }
}

/*!
 @class MDLMeshBufferData
 @abstract A CPU memory backed mesh buffer
 */
@available(OSX 10.11, *)
class MDLMeshBufferData : NSObject, MDLMeshBuffer {

  /*! 
   @method initWithType:length
   @abstract instantiate a new data backed mesh buffer
   @param type the intended use of the buffer
   @param length the size of buffer to allocate, in bytes
   */
  init(type: MDLMeshBufferType, length: Int)

  /*!
   @method initWithType:data
   @abstract instantiate a new data backed mesh buffer
   @param type the intended use of the buffer
   @param data the data to be used as a mesh buffer. It will be copied.
   */
  init(type: MDLMeshBufferType, data: NSData?)
  var data: NSData { get }
  init()

  /*!
   @method fillData:offset:
   @abstract Fills buffer with data at offset
   @param data Data to fill buffer with
   @param offset Byte offset in buffer to begin filling data
   @discussion Fills data.length bytes of data.  Will not write beyond length of 
               this buffer.
   */
  @available(OSX 10.11, *)
  func fillData(data: NSData, offset: Int)

  /*!
   @method map
   @abstract CPU access to buffer's memory
   @return An MDLMeshBufferMap object to read or modify a buffer's memory
   @discussion The buffer will remain mapped as long as the returned MDLMeshBufferMap
               object exists. Mapping a buffer may impose restrictions on a system.
               For instance,  if the implementing class maps an OpenGL buffer, that
               buffer may be  unavailable for rendering while mapped, and cause a
               draw failure.  Precautions must be taken in such cases.
   */
  @available(OSX 10.11, *)
  func map() -> MDLMeshBufferMap

  /*!
   @property length
   @abstract Size in bytes of the buffer allocation
   */
  @available(OSX 10.11, *)
  var length: Int { get }

  /*!
   @property allocator
   @abstract Allocator object used to create this buffer.
   @discussion This allcoator used for copy and relayout operations (such as when 
               a new vertex descriptor is applied to a vertex buffer)
   */
  @available(OSX 10.11, *)
  var allocator: MDLMeshBufferAllocator { get }

  /*!
   @property type
   @abstract the intended type of the buffer
   */
  @available(OSX 10.11, *)
  var type: MDLMeshBufferType { get }
  @available(OSX 10.11, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}

/*!
 @protocol MDLMeshBufferZone
 @abstract A reference to a logical pool of memory from which mesh buffers would 
           be allocated
 */
@available(OSX 10.11, *)
protocol MDLMeshBufferZone : NSObjectProtocol {

  /*!
   @property capacity
   @abstract Total size of memory in the zone
   */
  var capacity: Int { get }

  /*!
   @property allocator
   @abstract Allocator used to create the zone
   */
  var allocator: MDLMeshBufferAllocator { get }
}

/*!
 @protocol MDLMeshBufferAllocator
 @abstract Object for allocating buffers to back vertex and index data
 @discussion Accepted by MDLAsset init method.  Implementor creates objects 
             implementing MDLMeshBuffer with memory to be filled with vertex and 
             index data during 3d file loading and parsing.
 */
@available(OSX 10.11, *)
protocol MDLMeshBufferAllocator : NSObjectProtocol {

  /*!
   @method newZone:
   @abstract Create a zone which can be used to allocate MDLMeshBuffer objects
   @param capacity Total size in bytes of all buffers which can be created from 
          this zone
   */
  func newZone(capacity: Int) -> MDLMeshBufferZone

  /*!
   @method newZoneForBuffersWithSize:andType:
   @abstract Create a zone which can be used to allocate MDLMeshBuffer objects
   @param sizes Sizes of each buffer to be created in this zone
   @param types Type of each buffer to be created in this zone. Values to be of
                MDLMeshBufferType
   @discussion Will create a zone from which MDLMeshBuffer objects can be 
               allocated.  This will allocate a zone with enough capacity
               for each of the buffers with sizes and types specified even taking
               into any alignment restrictions necessary to use these buffers.
   */
  func newZoneForBuffersWithSize(sizes: [NSNumber], andType types: [NSNumber]) -> MDLMeshBufferZone

  /*!
   @method newBuffer:type:
   @abstract Create a buffer in a default zone
   @param length Size of buffer to be created in bytes
   @param type Type of data to be stored in this buffer
   */
  func newBuffer(length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer

  /*!
   @method newBufferWithData:type:
   @abstract Create a buffer in a default zone and fill with data in the supplied 
             NSData object
   @param data Memory to fill the buffer with
   @param type Type of data to be stored in this buffer
   */
  func newBufferWithData(data: NSData, type: MDLMeshBufferType) -> MDLMeshBuffer

  /*!
   @method newBufferFromZone:length:type:
   @abstract Create a buffer from a given zone with the given length
   @return An object conforming to the MDLMeshBuffer protocol.  Returns nil the 
           buffer could not be allocated in the zone given.
   @param zone Zone from which to allocate the memory
   @param data Values with which to fill the buffer
   @param type Type of data to be stored in this buffer
   @discussion An implementing MDLMeshBufferAllocator object may increase the size 
               of the zone if the buffer could not be allocated with the current 
               zone size.  Alternatively the implementation may return nil if the 
               buffer could not be allocated.
  
   */
  func newBufferFromZone(zone: MDLMeshBufferZone?, length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer?

  /*!
   @method newBufferFromZone:data:type:
   @abstract Create a buffer from a given zone and fill with data in the supplied 
             NSData object
   @return An object conforming to the MDLMeshBuffer protocol.  Returns nil the 
           buffer could not be allocated in the given zone
   @param zone Zone from which to allocate the memory
   @param data Values with which to fill the buffer
   @param type Type of data to be stored in this buffer
   @discussion An implementing MDLMeshBufferAllocator object may increase the size 
               of the zone if the buffer could not be allocated with the current 
               zone size. Alternatively the implementation may return nil if the 
               buffer could not be allocated.
   */
  func newBufferFromZone(zone: MDLMeshBufferZone?, data: NSData, type: MDLMeshBufferType) -> MDLMeshBuffer?
}

/*!
 An allocator to use when backing with an NSData is appropriate.
 */
class MDLMeshBufferDataAllocator : NSObject, MDLMeshBufferAllocator {
  init()

  /*!
   @method newZone:
   @abstract Create a zone which can be used to allocate MDLMeshBuffer objects
   @param capacity Total size in bytes of all buffers which can be created from 
          this zone
   */
  @available(OSX 10.11, *)
  func newZone(capacity: Int) -> MDLMeshBufferZone

  /*!
   @method newZoneForBuffersWithSize:andType:
   @abstract Create a zone which can be used to allocate MDLMeshBuffer objects
   @param sizes Sizes of each buffer to be created in this zone
   @param types Type of each buffer to be created in this zone. Values to be of
                MDLMeshBufferType
   @discussion Will create a zone from which MDLMeshBuffer objects can be 
               allocated.  This will allocate a zone with enough capacity
               for each of the buffers with sizes and types specified even taking
               into any alignment restrictions necessary to use these buffers.
   */
  @available(OSX 10.11, *)
  func newZoneForBuffersWithSize(sizes: [NSNumber], andType types: [NSNumber]) -> MDLMeshBufferZone

  /*!
   @method newBuffer:type:
   @abstract Create a buffer in a default zone
   @param length Size of buffer to be created in bytes
   @param type Type of data to be stored in this buffer
   */
  @available(OSX 10.11, *)
  func newBuffer(length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer

  /*!
   @method newBufferWithData:type:
   @abstract Create a buffer in a default zone and fill with data in the supplied 
             NSData object
   @param data Memory to fill the buffer with
   @param type Type of data to be stored in this buffer
   */
  @available(OSX 10.11, *)
  func newBufferWithData(data: NSData, type: MDLMeshBufferType) -> MDLMeshBuffer

  /*!
   @method newBufferFromZone:length:type:
   @abstract Create a buffer from a given zone with the given length
   @return An object conforming to the MDLMeshBuffer protocol.  Returns nil the 
           buffer could not be allocated in the zone given.
   @param zone Zone from which to allocate the memory
   @param data Values with which to fill the buffer
   @param type Type of data to be stored in this buffer
   @discussion An implementing MDLMeshBufferAllocator object may increase the size 
               of the zone if the buffer could not be allocated with the current 
               zone size.  Alternatively the implementation may return nil if the 
               buffer could not be allocated.
  
   */
  @available(OSX 10.11, *)
  func newBufferFromZone(zone: MDLMeshBufferZone?, length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer?

  /*!
   @method newBufferFromZone:data:type:
   @abstract Create a buffer from a given zone and fill with data in the supplied 
             NSData object
   @return An object conforming to the MDLMeshBuffer protocol.  Returns nil the 
           buffer could not be allocated in the given zone
   @param zone Zone from which to allocate the memory
   @param data Values with which to fill the buffer
   @param type Type of data to be stored in this buffer
   @discussion An implementing MDLMeshBufferAllocator object may increase the size 
               of the zone if the buffer could not be allocated with the current 
               zone size. Alternatively the implementation may return nil if the 
               buffer could not be allocated.
   */
  @available(OSX 10.11, *)
  func newBufferFromZone(zone: MDLMeshBufferZone?, data: NSData, type: MDLMeshBufferType) -> MDLMeshBuffer?
}

/*!
 A default zone that can be use for convenience 
 */
class MDLMeshBufferZoneDefault : NSObject, MDLMeshBufferZone {
  var capacity: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
  init()
}

/*!
 @class MDLObject
 @abstract Base class for object in a ModelIO asset hierarchy
 @discussion Includes transformation and bounds info, links to parent and
             children in the hierachy
 */
@available(OSX 10.11, *)
class MDLObject : NSObject, MDLNamed {

  /*!
   @method setComponent:forProtocol:
   @abstract Extensible component support that allows user of ModelIO to customize 
             MDLObjects to fit their format and workflow.
   */
  func setComponent(component: MDLComponent, forProtocol protocol: Protocol)

  /*!
   @method componentConformingToProtocol:
   @abstract Extensible component support that allows user of ModelIO to customize 
             MDLObjects to fit their format and workflow.
   */
  func componentConformingToProtocol(protocol: Protocol) -> MDLComponent?

  /*!
   @property parent
   @abstract Parent object. Nil if no parent.
   @discussion Set to nil when you remove this from an object container inside the 
               parent object.
   */
  weak var parent: @sil_weak MDLObject?

  /*!
   @property transform
   @abstract Short hand property for the MDLTransformComponent.
   @discussion 
   
   The default value is nil
  
   Getter is equivalent to "-[componentConformingToProtocol:@protocol(MDLTransformComponent)]"
   Setter is equivalent to "-[setComponent:forProtocol:@protocol(MDLTransformComponent)]"
   
   @see MDLTransformComponent
   */
  var transform: MDLTransformComponent?

  /*!
   @property children
   @abstract Short hand property for the MDLObjectContainerComponent.
   @discussion
    The default value is nil
   
   Getter is equivalent to "-[componentConformingToProtocol:@protocol(MDLObjectContainerComponent)]"
   Setter is equivalent to "-[setComponent:forProtocol:@protocol(MDLObjectContainerComponent)]"
   
   @see MDLObjectContainerComponent
   */
  var children: MDLObjectContainerComponent

  /*!
   @method addChild:
   @abstract Short hand for adding a child to the current container component and 
             setting the parent to this object.
   @discussion  It will create a default container if none exists. If children are 
                explicitly disallowed for an object, then add a container component 
                that throws on addition.
   
   @see MDLObjectContainer
   */
  func addChild(child: MDLObject)

  /*!
   @method boundingBoxAtTime:
   @abstract Bounds ob object at the specified time
   */
  func boundingBoxAtTime(time: NSTimeInterval) -> MDLAxisAlignedBoundingBox
  init()
  @available(OSX 10.11, *)
  var name: String
}

/*!
 @class MDLObjectContainer
 @abstract Default container object
 @discussion Subclass the object container to support custom containers. Such 
             custom containers might reference in memory representations, offline 
             databases, and so on.
 */
@available(OSX 10.11, *)
class MDLObjectContainer : NSObject, MDLObjectContainerComponent {
  init()
  @available(OSX 10.11, *)
  func addObject(object: MDLObject)
  @available(OSX 10.11, *)
  func removeObject(object: MDLObject)
  @available(OSX 10.11, *)
  var objects: [MDLObject] { get }
  @available(OSX 10.11, *)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
@available(OSX 10.11, *)
class MDLSubmeshTopology : NSObject {

  /*!
   @property faceTopologyBuffer
   @abstract A buffer of 8 bit unsigned integer values, where each entry corresponds
   to the number of vertices making up a face.
   
   @discussion A submesh containing two triangles, a four sided polygon, and a
   line, would contain the data 3 3 4 2.
   If geometryType is of a fixed type, such as triangles, the buffer
   is optional, and will be created on demand if read.
   
   Indices to the vertex buffer will be stored in the index buffer
   correspondingly. In the example above, the indices would be stored
   in order, three indices for the first triangle, followed by three
   for the second, followed by four for the polygon, and finally two
   indices for the line.
   */
  var faceTopology: MDLMeshBuffer?

  /*!
   @property faceCount
   @abstract The number of faces encoded in faceTopologyBuffer
   */
  var faceCount: Int

  /*! A crease value at a vertex to be applied during subdivision. Vertex creases
   A zero value is smooth, a one value is peaked. It is intended to be used
   with an index buffer, where the index buffer entries are vertex indices.
   The corresponding values in the corner sharpness attribute indicate the
   corner sharpness of those vertices. The index buffer is sparse. If a mesh
   has three sharp vertices, then the index buffer will have three entries.
   Since the number of entries in this vertex buffer is likely to be different
   than the number of entries in any other vertex buffer, it shouldn't be
   interleaved with other data.
   */
  var vertexCreaseIndices: MDLMeshBuffer?
  var vertexCreases: MDLMeshBuffer?

  /*!
   @property vertexCreaseCount
   @abstract The number of vertex creases encoded in vertexCreases
   */
  var vertexCreaseCount: Int

  /*! A crease value at an edge to be applied during subdivision. Edge creases
   A zero value is smooth, a one value is peaked. It is intended to be used
   with an index buffer, where the index buffer entries are edge index pairs.
   Accordingly, there will be two index entries for each edge sharpness entry,
   and the sharpness entry corresponds to the edge itself.
   The corresponding values in the edge sharpness attribute indicate the
   edge sharpness of those edges.  The index buffer is sparse. If a mesh
   has three sharp edges, then the index buffer will have six entries.
   Since the number of entries in this vertex buffer is likely to be different
   than the number of entries in any other vertex buffer, it shouldn't be
   interleaved with other data.
   */
  var edgeCreaseIndices: MDLMeshBuffer?
  var edgeCreases: MDLMeshBuffer?

  /*!
   @property edgeCreaseCount
   @abstract The number of edge creases encoded in edgeCreases
   */
  var edgeCreaseCount: Int

  /*! The hole attribute is a vertex attribute of single integer values where
   each integer is an index of a face that is to be used as a hole. If there
   are two holes in a mesh, then the vertex buffer will have two entries.
   Since the number of entries in this vertex buffer is likely to be different
   than the number of entries in any other vertex buffer, it shouldn't be
   interleaved with other data.
   */
  var holes: MDLMeshBuffer?

  /*!
   @property holeCount
   @abstract The number of holes encoded in holes
   */
  var holeCount: Int
  init()
}

/*!
 @class MDLSubmesh
 @abstract A drawable subset of an MDLMesh, with its own material
 */
@available(OSX 10.11, *)
class MDLSubmesh : NSObject, MDLNamed {

  /*!
   @method initWithName:indexBuffer:indexCount:indexType:geometryType:material:
   @abstract Initialize submesh with all data necessary to make properties valid
   */
  init(name: String, indexBuffer: MDLMeshBuffer, indexCount: Int, indexType: MDLIndexBitDepth, geometryType: MDLGeometryType, material: MDLMaterial?)

  /*!
   @method initWithIndexBuffer:indexCount:indexType:geometryType:material:
   @abstract Initialize submesh with all data necessary to make properties valid
   */
  init(indexBuffer: MDLMeshBuffer, indexCount: Int, indexType: MDLIndexBitDepth, geometryType: MDLGeometryType, material: MDLMaterial?)

  /*!
   @method initWithIndexBuffer:indexCount:indexType:faceTopologyBuffer:geometryType:material:
   @abstract Initialize submesh with all data necessary to make properties valid
   
   @discussion The geometry type will typically be MDLGeometryTypeVariableTopology,
               if other types are used the faceTopologyBuffer contents should
               reflect that.
   */
  init(name: String, indexBuffer: MDLMeshBuffer, indexCount: Int, indexType: MDLIndexBitDepth, geometryType: MDLGeometryType, material: MDLMaterial?, topology: MDLSubmeshTopology?)

  /*!
   @method initWithMDLSubmesh:indexType:geometryType:
   @abstract Initialize submesh using another submesh as input.
   @discussion the resulting submesh will have a new index type if necessary.
    If a conversion from the source submesh's geometry type to the requested
    geometry type is possible, conversion will be performed. Otherwise nil will
    be returned.
   */
  init?(MDLSubmesh submesh: MDLSubmesh, indexType: MDLIndexBitDepth, geometryType: MDLGeometryType)

  /*!
   @property indexBuffer
   @abstract Index data referencing vertex data in parent mesh
   */
  var indexBuffer: MDLMeshBuffer { get }

  /*!
   @property indexCount
   @abstract Number of indices in the indexBuffer
   */
  var indexCount: Int { get }

  /*!
   @property indexType
   @abstract Data type of indices in indexBuffer
   @discussion Support 8, 16, and 32 bit unsigned integer values
   */
  var indexType: MDLIndexBitDepth { get }

  /*!
   @property geometryType
   @abstract Type of primitive that vertices referenced by the indexBuffer are 
             assembled into
   */
  var geometryType: MDLGeometryType { get }

  /*!
   @property material
   @abstract Material to apply when rendering this object
   */
  var material: MDLMaterial?

  /*!
   @property topology
   @abstract Topology data structure for use with MDLGeometryTypeVariableTopology
   
   @discussion ignored for geometry types other than MDLGeometryTypeVariableTopology.
               A submesh of type MDLGeometryTypeVariableTopology with no topology
               data is an empty submesh.
  */
  var topology: MDLSubmeshTopology? { get }

  /*!
   @property name
   @abstract Identifying name for this object
   */
  var name: String
  init()
}

/**
 The enoding of texel channel elements
 */
enum MDLTextureChannelEncoding : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UInt8
  static var Uint8: MDLTextureChannelEncoding { get }
  case UInt16
  static var Uint16: MDLTextureChannelEncoding { get }
  case UInt24
  static var Uint24: MDLTextureChannelEncoding { get }
  case UInt32
  static var Uint32: MDLTextureChannelEncoding { get }
  case Float16
  case Float32
}

/**
 MDLTexture
 @summary a description of texels provided by a texture object.
 
 @discussion A texture optionally generates or loads texels
             through an access to the data property, or one of the other 
             properties, otherwise the texture object is a lightweight descriptor 
             only.
 
 @property data 
           Texel data that will exist when referenced; it may or may not exist 
           before
 @property dimensions
           texel width and height of the texture
 @property rowStride
           The number of bytes from the first texel in a row to the first texel 
           in the next row. A rowStride of zero indicates that interleaved x,y 
           addressing of texels is not possible. This might be the case if the
           texture was compressed in some manner, for example.
 @property channelCount
           The number of channels incoded in a single texel. For example, an RGB 
           texture has 3 channels. All channels must have the same encoding.
 @property channelEncoding
           The encoding of a channel in a single texel.
 @property isCube
           The texture encodes a cube map. If YES, then the layout of the cube 
           map is deduced as a vertical strip if dimension.y is six times 
           dimension.x. Other layouts are possible in the future.
 */
@available(OSX 10.11, *)
class MDLTexture : NSObject, MDLNamed {

  /**
   Creates a texture from a source in the main bundle named in a manner matching
    name.
   */
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: NSBundle?)

  /**
    Creates a cube texture map image using 6 faces of the same dimensions, 
    ordered +X,-X,+Y,-Y,+Z,-Z If the data is read back the image will be compacted 
    into a single vertical stack where dimensions.y = 6 * dimensions.x
    isCube will return YES
   
    @param names a collection of mosaiced images in a cross formation or column or row.
    - If 6 individual images are given they are assumed to be in order and will be 
      loaded as is.
    - if 3 images of double height or width are given they will be treated as 
      pairs of + and - in each axis, the order is must be x, then y, then z.
    - if 2 images of triple height or width are given they will be treates as a 
      positive set and a negative set in the order +x, +y, +z, then -x, -y, -z.
    - if a single image is given it will be used without conversion if in column 
      orientation and demosaiced in all other instances.
   */
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: NSBundle?)
  class func irradianceTextureCubeWithTexture(texture: MDLTexture, name: String?, dimensions: vector_int2) -> Self
  class func irradianceTextureCubeWithTexture(texture: MDLTexture, name: String?, dimensions: vector_int2, roughness: Float) -> Self
  init(data pixelData: NSData?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)

  /** writeToURL, deducing type from path extension */
  func writeToURL(URL: NSURL) -> Bool

  /** writeToURL using a specific UT type */
  func writeToURL(nsurl: NSURL, type: CFString) -> Bool
  func imageFromTexture() -> Unmanaged<CGImage>?
  func texelDataWithTopLeftOrigin() -> NSData?
  func texelDataWithBottomLeftOrigin() -> NSData?
  func texelDataWithTopLeftOriginAtMipLevel(level: Int, create: Bool) -> NSData?
  func texelDataWithBottomLeftOriginAtMipLevel(level: Int, create: Bool) -> NSData?
  var dimensions: vector_int2 { get }
  var rowStride: Int { get }
  var channelCount: Int { get }
  var mipLevelCount: Int { get }
  var channelEncoding: MDLTextureChannelEncoding { get }
  var isCube: Bool
  convenience init()
  @available(OSX 10.11, *)
  var name: String
}

/** 
 MDLURLTexture
 @summary a texture provider initialized with a URL or file path.
 @discussion if any of the properties of the texture, such as data, are referenced,
             then the texture may be loaded, otherwise, the MDLURLTexture is merely
             a lightweight reference to something that could be loaded
 */
@available(OSX 10.11, *)
class MDLURLTexture : MDLTexture {
  init(URL: NSURL, name: String?)
  @NSCopying var URL: NSURL

  /**
   Creates a texture from a source in the main bundle named in a manner matching
    name.
   */
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: NSBundle?)

  /**
    Creates a cube texture map image using 6 faces of the same dimensions, 
    ordered +X,-X,+Y,-Y,+Z,-Z If the data is read back the image will be compacted 
    into a single vertical stack where dimensions.y = 6 * dimensions.x
    isCube will return YES
   
    @param names a collection of mosaiced images in a cross formation or column or row.
    - If 6 individual images are given they are assumed to be in order and will be 
      loaded as is.
    - if 3 images of double height or width are given they will be treated as 
      pairs of + and - in each axis, the order is must be x, then y, then z.
    - if 2 images of triple height or width are given they will be treates as a 
      positive set and a negative set in the order +x, +y, +z, then -x, -y, -z.
    - if a single image is given it will be used without conversion if in column 
      orientation and demosaiced in all other instances.
   */
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: NSBundle?)
  init(data pixelData: NSData?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}

/** 
MDLCheckerboardTexture
 A two color checkboard with a certain number of divisions
 
 @discussion the texture will be created if data is referenced, otherwise, this
             object is merely a description
 */
@available(OSX 10.11, *)
class MDLCheckerboardTexture : MDLTexture {
  init(divisions: Float, name: String?, dimensions: vector_int2, channelCount: Int32, channelEncoding: MDLTextureChannelEncoding, color1: CGColor, color2: CGColor)
  var divisions: Float
  var color1: CGColor?
  var color2: CGColor?

  /**
   Creates a texture from a source in the main bundle named in a manner matching
    name.
   */
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: NSBundle?)

  /**
    Creates a cube texture map image using 6 faces of the same dimensions, 
    ordered +X,-X,+Y,-Y,+Z,-Z If the data is read back the image will be compacted 
    into a single vertical stack where dimensions.y = 6 * dimensions.x
    isCube will return YES
   
    @param names a collection of mosaiced images in a cross formation or column or row.
    - If 6 individual images are given they are assumed to be in order and will be 
      loaded as is.
    - if 3 images of double height or width are given they will be treated as 
      pairs of + and - in each axis, the order is must be x, then y, then z.
    - if 2 images of triple height or width are given they will be treates as a 
      positive set and a negative set in the order +x, +y, +z, then -x, -y, -z.
    - if a single image is given it will be used without conversion if in column 
      orientation and demosaiced in all other instances.
   */
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: NSBundle?)
  init(data pixelData: NSData?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}

/**
MDLSkyCubeTexture
 @summary A physically realistic sky as a cube texture
 
 @property sunElevation A value of zero is at the zenith, 0.5 is at the horizon,
           1.0 is at the nadir. Use in conjunction with turbidity to give a dawn, 
           dusk, or noon look.
 @property turbidity A value of zero simulates the effect of a clear sky, the sun
           will impart very little color to the sky. A value of one simulates a
           great deal of dust and moisture in the sky, and will cause the sun's
           color to spread across the atmosphere.
 @property upperAtmosphereScattering A value of zero will give very dusky colors,
           a value of one will give noon-ish saturated colors.
 @property groundAlbedo controls the amount of light that bounces back up into
           the sky from the ground. A value of zero will yield a clear sky, a
           value of one will reduce the contrast of the sky, making it a bit foggy.
 
 @property horizonElevation If the lower half of the environment is being replaced
           by a color, horizonElevation is angle, in radians, below which the
           replacement should occur. Negative values are below the horizon.

 @property groundColor If this value is set, the environment will be replaced with
           the color below the horizonElevation value.
 
 @property gamma Modifies the amount of gamma correction applied during
           tone mapping.
 @property exposure Modifies the exposure applied during tone mapping.
 @property brighness Modifies the brightness of the image during tone mapping.
 @property contrast Modifies the contrast of the image during tone mapping.
 @property saturation Modifes the saturation of the image during tone mapping.
 @property highDynamicRangeCompression values below the x component of this value 
           are not compressed during tone mapping. Values between the x component
           and y component are compressed to the maximum brightness value during
           tone mapping. Values above the limit are clamped.
 
 @discussion the texture will be created if data is referenced, otherwise, this
 object is merely a description. All parameters have legal values between zero and one.
 */
@available(OSX 10.11, *)
class MDLSkyCubeTexture : MDLTexture {
  init(name: String?, channelEncoding: MDLTextureChannelEncoding, textureDimensions: vector_int2, turbidity: Float, sunElevation: Float, upperAtmosphereScattering: Float, groundAlbedo: Float)

  /**
   Call updateTexture if parameters have been changed and a new sky is required.
   */
  func updateTexture()
  var turbidity: Float
  var sunElevation: Float
  var upperAtmosphereScattering: Float
  var groundAlbedo: Float
  var horizonElevation: Float
  var groundColor: CGColor?
  var gamma: Float
  var exposure: Float
  var brightness: Float
  var contrast: Float
  var saturation: Float
  var highDynamicRangeCompression: vector_float2

  /**
   Creates a texture from a source in the main bundle named in a manner matching
    name.
   */
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: NSBundle?)

  /**
    Creates a cube texture map image using 6 faces of the same dimensions, 
    ordered +X,-X,+Y,-Y,+Z,-Z If the data is read back the image will be compacted 
    into a single vertical stack where dimensions.y = 6 * dimensions.x
    isCube will return YES
   
    @param names a collection of mosaiced images in a cross formation or column or row.
    - If 6 individual images are given they are assumed to be in order and will be 
      loaded as is.
    - if 3 images of double height or width are given they will be treated as 
      pairs of + and - in each axis, the order is must be x, then y, then z.
    - if 2 images of triple height or width are given they will be treates as a 
      positive set and a negative set in the order +x, +y, +z, then -x, -y, -z.
    - if a single image is given it will be used without conversion if in column 
      orientation and demosaiced in all other instances.
   */
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: NSBundle?)
  init(data pixelData: NSData?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
@available(OSX 10.11, *)
class MDLColorSwatchTexture : MDLTexture {

  /**
   Create a color gradient from one color temperature to another. The units are 
   blackbody temperatures. The gradient will be vertical.
   */
  init(colorTemperatureGradientFrom colorTemperature1: Float, toColorTemperature colorTemperature2: Float, name: String?, textureDimensions: vector_int2)

  /**
   Create a color gradient from one color to another. The color will interpolate 
   according to hue. The gradient will be vertical.
   */
  init(colorGradientFrom color1: CGColor, toColor color2: CGColor, name: String?, textureDimensions: vector_int2)

  /**
   Creates a texture from a source in the main bundle named in a manner matching
    name.
   */
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: NSBundle?)

  /**
    Creates a cube texture map image using 6 faces of the same dimensions, 
    ordered +X,-X,+Y,-Y,+Z,-Z If the data is read back the image will be compacted 
    into a single vertical stack where dimensions.y = 6 * dimensions.x
    isCube will return YES
   
    @param names a collection of mosaiced images in a cross formation or column or row.
    - If 6 individual images are given they are assumed to be in order and will be 
      loaded as is.
    - if 3 images of double height or width are given they will be treated as 
      pairs of + and - in each axis, the order is must be x, then y, then z.
    - if 2 images of triple height or width are given they will be treates as a 
      positive set and a negative set in the order +x, +y, +z, then -x, -y, -z.
    - if a single image is given it will be used without conversion if in column 
      orientation and demosaiced in all other instances.
   */
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: NSBundle?)
  init(data pixelData: NSData?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}

/**
 MDLNoiseTexture
 @summary a noise texture containing vector or scalar noise
 @discussion the texture will be created if data is referenced, otherwise, this
 object is merely a description
 */
@available(OSX 10.11, *)
class MDLNoiseTexture : MDLTexture {

  /**
   Create a four channel texture containing directional noise. The RGBA values in this
   texture can be used as a normal map or as direction possibly with length. XYZ are a 
   three dimensional direction, and A is a magnitude.
   
   @param smoothness how similar neighboring pixels are. A value of zero is like static, 
   one is smooth.
   */
  init(vectorNoiseWithSmoothness smoothness: Float, name: String?, textureDimensions: vector_int2, channelEncoding: MDLTextureChannelEncoding)

  /**
   Create a texture containing colored noise. The noise texture is tileable with itself.
   
   @param smoothness how similar neighboring pixels are. A value of zero is like 
          static, one is smooth.
   @param grayscale if YES, RGB and A will all be the same. If no, RGB and A will 
          all be different. A is not pre-multiplied, because the intent is that if 
          you read a texel in a shader, all four values will be exactly the same 
          value if grayscale, or four different, uncorrelated values if not grayscale.
   */
  init(scalarNoiseWithSmoothness smoothness: Float, name: String?, textureDimensions: vector_int2, channelCount: Int32, channelEncoding: MDLTextureChannelEncoding, grayscale: Bool)

  /**
   Creates a texture from a source in the main bundle named in a manner matching
    name.
   */
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: NSBundle?)

  /**
    Creates a cube texture map image using 6 faces of the same dimensions, 
    ordered +X,-X,+Y,-Y,+Z,-Z If the data is read back the image will be compacted 
    into a single vertical stack where dimensions.y = 6 * dimensions.x
    isCube will return YES
   
    @param names a collection of mosaiced images in a cross formation or column or row.
    - If 6 individual images are given they are assumed to be in order and will be 
      loaded as is.
    - if 3 images of double height or width are given they will be treated as 
      pairs of + and - in each axis, the order is must be x, then y, then z.
    - if 2 images of triple height or width are given they will be treates as a 
      positive set and a negative set in the order +x, +y, +z, then -x, -y, -z.
    - if a single image is given it will be used without conversion if in column 
      orientation and demosaiced in all other instances.
   */
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: NSBundle?)
  init(data pixelData: NSData?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
@available(OSX 10.11, *)
class MDLNormalMapTexture : MDLTexture {
  init(byGeneratingNormalMapWithTexture sourceTexture: MDLTexture, name: String?, smoothness: Float, contrast: Float)

  /**
   Creates a texture from a source in the main bundle named in a manner matching
    name.
   */
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: NSBundle?)

  /**
    Creates a cube texture map image using 6 faces of the same dimensions, 
    ordered +X,-X,+Y,-Y,+Z,-Z If the data is read back the image will be compacted 
    into a single vertical stack where dimensions.y = 6 * dimensions.x
    isCube will return YES
   
    @param names a collection of mosaiced images in a cross formation or column or row.
    - If 6 individual images are given they are assumed to be in order and will be 
      loaded as is.
    - if 3 images of double height or width are given they will be treated as 
      pairs of + and - in each axis, the order is must be x, then y, then z.
    - if 2 images of triple height or width are given they will be treates as a 
      positive set and a negative set in the order +x, +y, +z, then -x, -y, -z.
    - if a single image is given it will be used without conversion if in column 
      orientation and demosaiced in all other instances.
   */
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: NSBundle?)
  init(data pixelData: NSData?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}

/** MDLTransformComponent
    @summary a container for a time sampled local transformation
 
    @discussion Accessors to get the local transform and the global transform
    for a particular MDLObject are provided.
 */
@available(OSX 10.11, *)
protocol MDLTransformComponent : MDLComponent {

  /** The matrix, at minimumTime */
  var matrix: matrix_float4x4 { get set }

  /** If no animation data is present, minimumTime and maximumTime will be zero
   */
  var minimumTime: NSTimeInterval { get }
  var maximumTime: NSTimeInterval { get }
  optional func setLocalTransform(transform: matrix_float4x4, forTime time: NSTimeInterval)

  /**
   Resets any timing information, and makes transform valid at all times 
   */
  optional func setLocalTransform(transform: matrix_float4x4)

  /** Returns the transform governing this transformable at the specified time
      in the transformable's parent's space.
      If non-animated, all frame values will return the same result. 
   */
  optional func localTransformAtTime(time: NSTimeInterval) -> matrix_float4x4

  /** Returns the transform governing this transformable at the specified frame in
      world space. If there is no parent, identity will be returned
   */
  optional static func globalTransformWithObject(object: MDLObject, atTime time: NSTimeInterval) -> matrix_float4x4
}

/**
 Concrete implementation of <MDLTransformComponent>.
 For more complex transform components create a class that conforms to 
 <MDLTransformComponent>.
 
 @discussion Setting any of scale, translation, or rotation individually will 
 set the matrix property, and clear any timing information.
 
 */
@available(OSX 10.11, *)
class MDLTransform : NSObject, MDLTransformComponent {
  init(identity: ())
  convenience init(transformComponent component: MDLTransformComponent)

  /**
   Initialization with a matrix assumes the matrix is an invertible, homogeneous 
   affine transform matrix. Retrieving transform components after initialization 
   with a non-affine matrix will yield those of the identity transform.
   */
  convenience init(matrix: matrix_float4x4)

  /**
   Set all transform components to identity
   */
  func setIdentity()
  func translationAtTime(time: NSTimeInterval) -> vector_float3
  func rotationAtTime(time: NSTimeInterval) -> vector_float3
  func shearAtTime(time: NSTimeInterval) -> vector_float3
  func scaleAtTime(time: NSTimeInterval) -> vector_float3
  func setTranslation(translation: vector_float3, forTime time: NSTimeInterval)
  func setRotation(rotation: vector_float3, forTime time: NSTimeInterval)
  func setShear(shear: vector_float3, forTime time: NSTimeInterval)
  func setScale(scale: vector_float3, forTime time: NSTimeInterval)

  /**
   Construct a right handed rotation matrix at the specified time
   */
  func rotationMatrixAtTime(time: NSTimeInterval) -> matrix_float4x4

  /**
   If these properties are read and animation data exists the earliest value is returned.
   Otherwise, if there is no animation data, the value of the property is the same at all times and that value is returned.
   If written, timing information for said property is removed. To retain or add timing information, use the set:forTime selectors instead.
   */
  var translation: vector_float3
  var rotation: vector_float3
  var shear: vector_float3
  var scale: vector_float3
  convenience init()

  /** The matrix, at minimumTime */
  @available(OSX 10.11, *)
  var matrix: matrix_float4x4

  /** If no animation data is present, minimumTime and maximumTime will be zero
   */
  @available(OSX 10.11, *)
  var minimumTime: NSTimeInterval { get }
  @available(OSX 10.11, *)
  var maximumTime: NSTimeInterval { get }
  @available(OSX 10.11, *)
  func setLocalTransform(transform: matrix_float4x4, forTime time: NSTimeInterval)

  /**
   Resets any timing information, and makes transform valid at all times 
   */
  @available(OSX 10.11, *)
  func setLocalTransform(transform: matrix_float4x4)

  /** Returns the transform governing this transformable at the specified time
      in the transformable's parent's space.
      If non-animated, all frame values will return the same result. 
   */
  @available(OSX 10.11, *)
  func localTransformAtTime(time: NSTimeInterval) -> matrix_float4x4

  /** Returns the transform governing this transformable at the specified frame in
      world space. If there is no parent, identity will be returned
   */
  @available(OSX 10.11, *)
  class func globalTransformWithObject(object: MDLObject, atTime time: NSTimeInterval) -> matrix_float4x4
}
@available(OSX 10.11, *)
let kUTTypeAlembic: String
@available(OSX 10.11, *)
let kUTType3dObject: String
@available(OSX 10.11, *)
let kUTTypePolygon: String
@available(OSX 10.11, *)
let kUTTypeStereolithography: String
enum MDLIndexBitDepth : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Invalid
  case UInt8
  static var Uint8: MDLIndexBitDepth { get }
  case UInt16
  static var Uint16: MDLIndexBitDepth { get }
  case UInt32
  static var Uint32: MDLIndexBitDepth { get }
}
enum MDLGeometryType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case TypePoints
  case TypeLines
  case TypeTriangles
  case TypeTriangleStrips
  case TypeQuads
  case TypeVariableTopology
  static var KindPoints: MDLGeometryType { get }
  static var KindLines: MDLGeometryType { get }
  static var KindTriangles: MDLGeometryType { get }
  static var KindTriangleStrips: MDLGeometryType { get }
  static var KindQuads: MDLGeometryType { get }
}
@available(OSX 10.11, *)
protocol MDLNamed {
  var name: String { get set }
}
@available(OSX 10.11, *)
protocol MDLComponent : NSObjectProtocol {
}
@available(OSX 10.11, *)
protocol MDLObjectContainerComponent : MDLComponent, NSFastEnumeration {
  func addObject(object: MDLObject)
  func removeObject(object: MDLObject)
  var objects: [MDLObject] { get }
}
struct MDL_EXPORT_CPPCLASS {
  var maxBounds: vector_float3
  var minBounds: vector_float3
  init()
  init(maxBounds: vector_float3, minBounds: vector_float3)
}
typealias MDLAxisAlignedBoundingBox = MDL_EXPORT_CPPCLASS

/*! The attribute data describes the degree to which a surface’s appearance 
    changes in appearance when rotated about its normal vector. */
let MDLVertexAttributeAnisotropy: String

/*! The normal to a curve at a vertex position */
let MDLVertexAttributeBinormal: String

/*! The vector completing a tangent basis at a vertex */
let MDLVertexAttributeBitangent: String

/*! Color of a vertex */
let MDLVertexAttributeColor: String

/*! A crease value along an edge to be applied during subdivision.
    A zero value indicates an edge is smooth, one is sharply creased. */
let MDLVertexAttributeEdgeCrease: String

/*! Indices of joints in an animation rig corresponding to weighting information */
let MDLVertexAttributeJointIndices: String

/*! Weights corresponding to joints for the purpose of blending animation */
let MDLVertexAttributeJointWeights: String

/*! The direction of a normal at a vertex */
let MDLVertexAttributeNormal: String

/*! A value indicating the degree to which a vertex is occluded by surrounding geometry */
let MDLVertexAttributeOcclusionValue: String

/*! The position of a vertex */
let MDLVertexAttributePosition: String

/*! The u direction of a shading basis at a vertex */
let MDLVertexAttributeShadingBasisU: String

/*! The v direction of a shading basis at a vertex */
let MDLVertexAttributeShadingBasisV: String

/*! Stencil values for subdivision at a vertex */
let MDLVertexAttributeSubdivisionStencil: String

/*! A vector tangent to a vertex */
let MDLVertexAttributeTangent: String

/*! Texture coordinate mapping at a vertex */
let MDLVertexAttributeTextureCoordinate: String

/*!
 @enum MDLVertexFormat
 @abstract Describes the format of a an attribute in a vertex buffer
 @discussion Designed to be very similar to MTLVertexDescriptor to ease the 
             translation from one to the other. Values are chosen such that 
             packed types would all be less than 0x1000 and the bottom 5 bits 
             can be used to determine the number of channels/components in the 
             format.
 */
enum MDLVertexFormat : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Invalid
  case PackedBit
  case UCharBits
  case CharBits
  case UCharNormalizedBits
  case CharNormalizedBits
  case UShortBits
  case ShortBits
  case UShortNormalizedBits
  case ShortNormalizedBits
  case UIntBits
  case IntBits
  case HalfBits
  case FloatBits
  case UChar
  case UChar2
  case UChar3
  case UChar4
  case Char
  case Char2
  case Char3
  case Char4
  case UCharNormalized
  case UChar2Normalized
  case UChar3Normalized
  case UChar4Normalized
  case CharNormalized
  case Char2Normalized
  case Char3Normalized
  case Char4Normalized
  case UShort
  case UShort2
  case UShort3
  case UShort4
  case Short
  case Short2
  case Short3
  case Short4
  case UShortNormalized
  case UShort2Normalized
  case UShort3Normalized
  case UShort4Normalized
  case ShortNormalized
  case Short2Normalized
  case Short3Normalized
  case Short4Normalized
  case UInt
  case UInt2
  case UInt3
  case UInt4
  case Int
  case Int2
  case Int3
  case Int4
  case Half
  case Half2
  case Half3
  case Half4
  case Float
  case Float2
  case Float3
  case Float4
  case Int1010102Normalized
  case UInt1010102Normalized
}

/*!
 @class MDLVertexBufferLayout
 @abstract Describes a vertex buffer's layout
 */
@available(OSX 10.11, *)
class MDLVertexBufferLayout : NSObject, NSCopying {

  /*!
   @property stride
   @abstract stride in bytes of each vertex element of in the buffer
   */
  var stride: Int
  init()
  @available(OSX 10.11, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}

/*!
 @class MDLVertexAttribute
 @abstract Structure with properties of a vertex attribute
 */
@available(OSX 10.11, *)
class MDLVertexAttribute : NSObject, NSCopying {

  /*!
   @method initWithName:format:offset:bufferIndex
   @abstract Initialize attribute object with all properties
   */
  init(name: String, format: MDLVertexFormat, offset: Int, bufferIndex: Int)

  /*!
   @property name
   @abstract Identifying name of the attribute derived from model file, or one of 
             the predefined MDLVertexAttribute strings
   */
  var name: String

  /*!
   @property format
   @abstract Format (including number of components) of the attribute
   @discussion If the value is MDLVertexFormatInvalid.   Other values of this 
               object will be ignored when setting the MDLVertexDescriptor object 
               in a Mesh. The initial value is MDLVertexFormatInvalid.
   */
  var format: MDLVertexFormat

  /*!
   @property offset
   @abstract offset in bytes of the attrbute in each element of the vertex buffer
   */
  var offset: Int

  /*!
   @property bufferIndex
   @abstract index of the buffer in mesh's vertexBuffer array in which this 
             attribute resides
   */
  var bufferIndex: Int

  /*!
   @property initializationValue
   @abstract Value to initialize the attribute to in the vertex buffer if no values
   @discussion This values of this vector will be set in attribute in the vertex
   attribute if the attribute did not previously exist in the mesh when
   setting the MDLVertexDescriptor in the mesh.  Components of this
   vector will also be set in The initial value of initializationValue
   is (0, 0, 0, 1).
   */
  var initializationValue: vector_float4
  init()
  @available(OSX 10.11, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}

/*!
 @class MDLVertexDescriptor
 @abstract Describes the layout of vertex buffers in MDLMesh objects
 @discussion 
 
 This object is a property of MDLMesh describing the current state of
 attributes and buffer layouts of the vertex buffers in the mesh. This must be 
 immutable otherwise even small changes could cause the buffers to be out of sync 
 with the layout described here.
 
 Designed to be very similar to MTLVertexDescriptor to ease creation of one from 
 the other
 */
@available(OSX 10.11, *)
class MDLVertexDescriptor : NSObject, NSCopying {

  /*!
   @method initVertexDescriptor:
   @abstract Initializes the object with values from supplied vertexDescriptor
   @discussion This performs a deep copy of all data in the supplied descriptor.
   */
  init(vertexDescriptor: MDLVertexDescriptor)

  /*!
   @method attributeNamed:
   @abstract Retrieves the attribute with the given name
   @return The attribute with the supplied name or nil if attribute with the given 
           name does not exist in the descriptor object
   */
  func attributeNamed(name: String) -> MDLVertexAttribute?

  /*!
   @method addOrReplaceAttribute:
   @abstract Replace any attribute with the same name, or add it if it does not
             already exist.
   */
  func addOrReplaceAttribute(attribute: MDLVertexAttribute)

  /*! 
   @property attributes
   @abstract An array of MDLVertexAttribute objects
   @discussion An array describing the current attribute state of vertex buffers in an
               MDLMesh mesh
   */
  var attributes: NSMutableArray

  /*!
   @property layouts
   @abstract An array of MDLVertexBufferLayout
   @discussion An array describing the current layout state of vertex buffers in an 
               MDLMesh mesh
   */
  var layouts: NSMutableArray

  /*!
   @method reset
   @abstract Tesets the descriptor to initial values
   */
  func reset()

  /*!
   @method setPackedStrides
   @abstract Sets the stride in each VertexBufferLout in the layouts array to the 
             minimum value encompassing all attributes in the vertex buffer
   */
  func setPackedStrides()

  /*!
    @method setPackedOffsets
    @abstract Sets the stride in each VertexAttribute in the attributes array to 
              the minimum value to pack each attribute next to each other in its 
              vertexbuffer
    */
  func setPackedOffsets()
  init()
  @available(OSX 10.11, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}

/**
 MDLVoxelIndex is a four component voxel index.
 @discussion The index's x, y, and z components correspond to the voxel grid's
 x, y, and z indices. The w component corresponds to the voxel grid shell level.
 A shell level of zero corresponds to a voxel on the surface of an object.
 A positive shell index corresponds to a shell on the exterior of the object,
 and a negative index corresponds to a shell on the interior. A shell index of
 one is immediately adjacent to the zero shell, two is immediately adjacent
 one, and so on.
 */
typealias MDLVoxelIndex = vector_int4

/**
 MDLVoxelIndexExtent is the index space bounds of the voxel grid.
 */
struct MDLVoxelIndexExtent {
  var minimumExtent: MDLVoxelIndex
  var maximumExtent: MDLVoxelIndex
  init()
  init(minimumExtent: MDLVoxelIndex, maximumExtent: MDLVoxelIndex)
}

/**
 @class MDLVoxelArray
 @summary Voxel data represented on a three dimensional grid. Voxel data can
          include voxels considered to be on the surface of an object, and a 
          series of shells on the outside and inside of the surface.
 */
@available(OSX 10.11, *)
class MDLVoxelArray : NSObject {

  /**
   Initialize a voxel grid from an MDLAsset and dilate the resulting voxels by
   a number of interior and exterior shells. 
   Routine will attempt to create a closed volume model by applying patches of
   a given radius to any holes it may find in the asset.
   
   @param divisions The number of divisions to divide the vertical extent of the 
          model by.
   @param interiorShells The number of shells to compute inside the surface shell
   @param exteriorShells The number of shells to compute outside the surface shell
   @param patchRadius The radius of the largest model mending patch in world space units
   */
  init(asset: MDLAsset, divisions: Int32, interiorShells: Int32, exteriorShells: Int32, patchRadius: Float)

  /**
   Initialize a voxel grid from an MDLAsset and dilate the resulting voxels by
   a spatial distance in the interior and exterior directions.
   Routine will attempt to create a closed volume model by applying "patches" of
   a given radius to any holes it may find in the asset.
   
   @param divisions The number of divisions to divide the vertical extent of the
   model by.
   @param interiorNBWidth The interior narrow band width in world space units
   @param exteriorNBWidth The exterior narrow band width in world space units
   @param patchRadius The radius of the largest model mending patch in world space units
   */
  init(asset: MDLAsset, divisions: Int32, interiorNBWidth: Float, exteriorNBWidth: Float, patchRadius: Float)

  /**
   Initialize a voxel grid from an NSData containing an array of MDLVoxelIndex values.
   
   @param boundingBox The bounds defining the extent of the volume model in Cartesian space
   @param voxelExtent The extent of a single voxel
   */
  init(data voxelData: NSData, boundingBox: MDLAxisAlignedBoundingBox, voxelExtent: Float)

  /**
   Create a mesh from the voxel grid
   */
  func meshUsingAllocator(allocator: MDLMeshBufferAllocator?) -> MDLMesh?

  /**
   Determine if a sample exists at the specified index
   @discussion the allowAny parameters can be used to wildcard any dimensions. This 
               is useful to perform queries such as determining if any voxel 
               exists on the XY plane at a certain Z, or if any voxel exists at 
               any X, Y, Z, or a particular shell, and so on.
   */
  func voxelExistsAtIndex(index: MDLVoxelIndex, allowAnyX: Bool, allowAnyY: Bool, allowAnyZ: Bool, allowAnyShell: Bool) -> Bool

  /**
   Set a sample at the specified index
   @discussion the extent, bounds, and shell properties may be modified
   */
  func setVoxelAtIndex(index: MDLVoxelIndex)

  /**
   Set voxels corresponding to a mesh
   Routine will attempt to create a closed volume model by applying "patches" of
   a given radius to any holes it may find in the mesh.
   
   @param divisions The number of divisions to divide the vertical extent of the
   model by.
   @param interiorShells The number of shells to compute inside the surface shell
   @param exteriorShells The number of shells to compute outside the surface shell
   @param patchRadius The radius of the largest model mending patch in world space units
   */
  func setVoxelsForMesh(mesh: MDLMesh, divisions: Int32, interiorShells: Int32, exteriorShells: Int32, patchRadius: Float)

  /**
   Set voxels corresponding to a mesh
   Routine will attempt to create a closed volume model by applying "patches" of
   a given radius to any holes it may find in the mesh.
   
   @param divisions The number of divisions to divide the vertical extent of the
   model by.
   @param interiorNBWidth The interior narrow band width in world space units
   @param exteriorNBWidth The exterior narrow band width in world space units
   @param patchRadius The radius of the largest model mending patch in world space units
   */
  func setVoxelsForMesh(mesh: MDLMesh, divisions: Int32, interiorNBWidth: Float, exteriorNBWidth: Float, patchRadius: Float)

  /**
   Returns an NSData containing the indices of all voxels found in the extent
   */
  func voxelsWithinExtent(extent: MDLVoxelIndexExtent) -> NSData?

  /**
   Returns an NSData containing the indices of all voxels in the voxel grid
   */
  func voxelIndices() -> NSData?

  /**
   Union modifies the voxel grid to be the merger with the supplied voxel grid.
   It is assumed that the spatial voxel extent of one voxel in the supplied grid is the same as that of the voxel grid.
   Note that the shell level data will be cleared.
   */
  func unionWithVoxels(voxels: MDLVoxelArray)

  /**
   Difference modifies the voxel grid so that voxels also in the supplied voxel grid are removed.
   It is assumed that the spatial voxel extent of one voxel in the supplied grid is the same as that of the voxel grid.
   Note that the shell level data will be cleared.
   */
  func differenceWithVoxels(voxels: MDLVoxelArray)

  /**
   Intersection modifies the voxel grid so that only voxels that are also in the supplied voxel grid are retained.
   It is assumed that the spatial voxel extent of one voxel in the supplied grid is the same as that of the voxel grid.
   Note that the shell level data will be cleared.
   */
  func intersectWithVoxels(voxels: MDLVoxelArray)

  /**
   Return the voxel index corresponding to a point in space
   */
  func indexOfSpatialLocation(location: vector_float3) -> MDLVoxelIndex

  /**
   Return the spatial location of the center of the indexed voxel
   */
  func spatialLocationOfIndex(index: MDLVoxelIndex) -> vector_float3

  /**
   The bounding box of an indexed voxel
   */
  func voxelBoundingBoxAtIndex(index: MDLVoxelIndex) -> MDLAxisAlignedBoundingBox

  /**
   The number of voxels in the grid
   */
  var count: Int { get }

  /**
   The extent of the voxel grid in index space
   */
  var voxelIndexExtent: MDLVoxelIndexExtent { get }

  /**
   The extent of the voxel grid in Cartesian space
   */
  var boundingBox: MDLAxisAlignedBoundingBox { get }
  init()
}
