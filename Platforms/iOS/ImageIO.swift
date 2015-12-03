
typealias CGImageDestinationRef = CGImageDestination

/** Properties which may be passed to "CGImageDestinationAddImage"
 ** or "CGImageDestinationAddImageFromSource" to effect the output.
 ** The values apply to a single image of an image destination. **/
@available(iOS 4.0, *)
let kCGImageDestinationLossyCompressionQuality: CFString
@available(iOS 4.0, *)
let kCGImageDestinationBackgroundColor: CFString
@available(iOS 8.0, *)
let kCGImageDestinationImageMaxPixelSize: CFString
@available(iOS 8.0, *)
let kCGImageDestinationEmbedThumbnail: CFString
@available(iOS 4.0, *)
func CGImageDestinationGetTypeID() -> CFTypeID
@available(iOS 4.0, *)
func CGImageDestinationCopyTypeIdentifiers() -> CFArray
@available(iOS 4.0, *)
func CGImageDestinationCreateWithDataConsumer(consumer: CGDataConsumer, _ type: CFString, _ count: Int, _ options: CFDictionary?) -> CGImageDestination?
@available(iOS 4.0, *)
func CGImageDestinationCreateWithData(data: CFMutableData, _ type: CFString, _ count: Int, _ options: CFDictionary?) -> CGImageDestination?
@available(iOS 4.0, *)
func CGImageDestinationCreateWithURL(url: CFURL, _ type: CFString, _ count: Int, _ options: CFDictionary?) -> CGImageDestination?
@available(iOS 4.0, *)
func CGImageDestinationSetProperties(idst: CGImageDestination, _ properties: CFDictionary?)
@available(iOS 4.0, *)
func CGImageDestinationAddImage(idst: CGImageDestination, _ image: CGImage, _ properties: CFDictionary?)
@available(iOS 4.0, *)
func CGImageDestinationAddImageFromSource(idst: CGImageDestination, _ isrc: CGImageSource, _ index: Int, _ properties: CFDictionary?)
@available(iOS 4.0, *)
func CGImageDestinationFinalize(idst: CGImageDestination) -> Bool
@available(iOS 7.0, *)
func CGImageDestinationAddImageAndMetadata(idst: CGImageDestination, _ image: CGImage, _ metadata: CGImageMetadata?, _ options: CFDictionary?)

/**
 ** Keys which may be used in the 'options' dictionary of
 ** "CGImageDestinationCopyImageSource" to effect the output.
 **/
@available(iOS 7.0, *)
let kCGImageDestinationMetadata: CFString
@available(iOS 7.0, *)
let kCGImageDestinationMergeMetadata: CFString
@available(iOS 7.0, *)
let kCGImageMetadataShouldExcludeXMP: CFString
@available(iOS 8.0, *)
let kCGImageMetadataShouldExcludeGPS: CFString
@available(iOS 7.0, *)
let kCGImageDestinationDateTime: CFString
@available(iOS 7.0, *)
let kCGImageDestinationOrientation: CFString
@available(iOS 7.0, *)
func CGImageDestinationCopyImageSource(idst: CGImageDestination, _ isrc: CGImageSource, _ options: CFDictionary?, _ err: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
 * @typedef CGImageMetadataRef 
 * @abstract an immutable container for CGImageMetadataTags
 */
typealias CGImageMetadataRef = CGImageMetadata

///*! @functiongroup Creating and identifying CGImageMetadata containers */
/*!
 * @function CGImageMetadataGetTypeID
 * @abstract Gets the type identifier for the CGImageMetadata opaque type
 * @return the type identifier for the CGImageMetadata opaque type
 */
func CGImageMetadataGetTypeID() -> CFTypeID

/*!
 * @typedef CGMutableImageMetadataRef
 * @abstract a mutable container for CGImageMetadataTags
 * @discussion A CGMutableImageMetadataRef can be used in any function that
 * accepts a CGImageMetadataRef.
 */
typealias CGMutableImageMetadataRef = CGMutableImageMetadata

/*!
 * @function CGImageMetadataCreateMutable
 * @abstract Creates an empty CGMutableImageMetadataRef
 */
@available(iOS 7.0, *)
func CGImageMetadataCreateMutable() -> CGMutableImageMetadata

/*!
 * @function CGImageMetadataCreateMutableCopy
 * @abstract Creates a deep mutable copy of another CGImageMetadataRef
 * @discussion Before modifying an immutable CGImageMetadataRef (such as metadata
 * from CGImageSourceCopyMetadataAtIndex) you must first make a copy.
 * This function makes a deep copy of all CGImageMetadataTags and their values.
 */
@available(iOS 7.0, *)
func CGImageMetadataCreateMutableCopy(metadata: CGImageMetadata) -> CGMutableImageMetadata?

/*!
 * @typedef CGImageMetadataTagRef
 * @abstract an individual metadata tag
 * @discussion A CGImageMetadataTag encapsulates an EXIF, IPTC, or XMP property.
 * All tags contain a namespace, prefix, name, type, and value. Please see
 * @link CGImageMetadataTagCreate @/link for more details.
 */
typealias CGImageMetadataTagRef = CGImageMetadataTag

///*! @functiongroup Creating and identifying CGImageMetadataTags */
/*!
 * @function CGImageMetadataTagGetTypeID
 * @abstract Gets the type identifier for the CGImageMetadataTag opaque type
 * @return the type identifier for the CGImageMetadataTagGetTypeID opaque type
 */
@available(iOS 7.0, *)
func CGImageMetadataTagGetTypeID() -> CFTypeID
@available(iOS 7.0, *)
let kCGImageMetadataNamespaceExif: CFString
@available(iOS 7.0, *)
let kCGImageMetadataNamespaceExifAux: CFString
@available(iOS 7.0, *)
let kCGImageMetadataNamespaceExifEX: CFString
@available(iOS 7.0, *)
let kCGImageMetadataNamespaceDublinCore: CFString
@available(iOS 7.0, *)
let kCGImageMetadataNamespaceIPTCCore: CFString
@available(iOS 7.0, *)
let kCGImageMetadataNamespacePhotoshop: CFString
@available(iOS 7.0, *)
let kCGImageMetadataNamespaceTIFF: CFString
@available(iOS 7.0, *)
let kCGImageMetadataNamespaceXMPBasic: CFString
@available(iOS 7.0, *)
let kCGImageMetadataNamespaceXMPRights: CFString
@available(iOS 7.0, *)
let kCGImageMetadataPrefixExif: CFString
@available(iOS 7.0, *)
let kCGImageMetadataPrefixExifAux: CFString
@available(iOS 7.0, *)
let kCGImageMetadataPrefixExifEX: CFString
@available(iOS 7.0, *)
let kCGImageMetadataPrefixDublinCore: CFString
@available(iOS 7.0, *)
let kCGImageMetadataPrefixIPTCCore: CFString
@available(iOS 7.0, *)
let kCGImageMetadataPrefixPhotoshop: CFString
@available(iOS 7.0, *)
let kCGImageMetadataPrefixTIFF: CFString
@available(iOS 7.0, *)
let kCGImageMetadataPrefixXMPBasic: CFString
@available(iOS 7.0, *)
let kCGImageMetadataPrefixXMPRights: CFString

/*!
 * @typedef CGImageMetadataType
 * @abstract The XMP type for a CGImageMetadataTag
 * @discussion CGImageMetadataType defines a list of constants used to indicate
 * the type for a CGImageMetadataTag. If you are reading metadata, use the type 
 * to determine how to interpret the CGImageMetadataTag's value. If you are 
 * creating a CGImageMetadataTag, use the type to specify how the tag 
 * should be serialized in XMP. String types have CFStringRef values, array 
 * types have CFArray values, and structure types have CFDictionary values.
 * @const kCGImageMetadataTypeDefault The type will be interpretted based on the
 * CFType of the tag's value. This is only used when creating a new 
 * CGImageMetadataTag - no existing tags should have this value. CFString 
 * defaults to kCGImageMetadataTypeString, CFArray defaults to 
 * kCGImageMetadataTypeArrayOrdered, and CFDictionary defaults to
 * kCGImageMetadataTypeStructure.
 * @const kCGImageMetadataTypeString A string value. CFNumber and CFBoolean 
 * values will be converted to a string.
 * @const kCGImageMetadataTypeArrayUnordered An array where order does not matter.
 * Serialized in XMP as <rdf:Bag>.
 * @const kCGImageMetadataTypeArrayOrdered An array where order is preserved.
 * Serialized in XMP as <rdf:Seq>.
 * @const kCGImageMetadataTypeAlternateArray An ordered array where all elements
 * are alternates for the same value. Serialized in XMP as <rdf:Alt>.
 * @const kCGImageMetadataTypeAlternateText A special case of an alternate array
 * where all elements are different localized strings for the same value. 
 * Serialized in XMP as an alternate array of strings with xml:lang qualifiers.
 * @const kCGImageMetadataTypeStructure A collection of keys and values. Unlike
 * array elements, fields of a structure may belong to different namespaces.
 */
enum CGImageMetadataType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Invalid
  case Default
  case String
  case ArrayUnordered
  case ArrayOrdered
  case AlternateArray
  case AlternateText
  case Structure
}

/*!
 * @function CGImageMetadataTagCreate
 * @abstract Creates a new CGImageMetadataTag
 * @param xmlns The namespace for the tag. The value can be a common XMP namespace
 * defined above, such as kCGImageMetadataNamespaceExif, or a CFString with a
 * custom namespace URI. Custom namespaces must be a valid XML namespace. By
 * convention, namespaces should end with either '/' or '#'. For example, exif
 * uses the namespace "http://ns.adobe.com/exif/1.0/".
 * @param prefix An abbreviation for the XML namespace. The value can be NULL if
 * the namespace is defined as a constant. Custom prefixes must be a valid XML
 * name. For example, the prefix used for "http://ns.adobe.com/exif/1.0/" is "exif".
 * The XMP serialization of the tag will use the prefix. Prefixes are also
 * important for path-based CGImageMetadata functions, such as 
 * @link CGImageMetadataCopyStringValueWithPath @/link or 
 * @link CGImageMetadataSetValueWithPath @/link.
 * @param name The name of the tag. It must be a valid XMP name.
 * @param type The type of the tag's value. Must be a constant from @link 
 * CGImageMetadataType @/link.
 * @param value The value of the tag. Allowable CFTypes include CFStringRef,
 * CFNumberRef, CFBooleanRef, CFArrayRef, and CFDictionaryRef. The CFType of 'value'
 * must correspond to the 'type'. The elements of a CFArray must be either a 
 * CFStringRef or CGImageMetadataTagRef. The keys of a CFDictionary must be 
 * CFStringRefs with valid XMP names. The values of a CFDictionary must be either
 * CFStringRefs or CGImageMetadataTagRefs. A shallow copy of the value is stored
 * in the tag. Therefore, modifying a mutable value after the tag is created 
 * will not affect the tag's value.
 * @result Returns a pointer to a new CGImageMetadataTag. Returns NULL if a tag
 * could not be created with the specified parameters.
 */
@available(iOS 7.0, *)
func CGImageMetadataTagCreate(xmlns: CFString, _ prefix: CFString?, _ name: CFString, _ type: CGImageMetadataType, _ value: AnyObject) -> CGImageMetadataTag?

///*! @functiongroup Getting attributes of a CGImageMetadataTag */
/*!
 * @function CGImageMetadataTagCopyNamespace 
 * @abstract Returns a copy of the tag's namespace
 */
@available(iOS 7.0, *)
func CGImageMetadataTagCopyNamespace(tag: CGImageMetadataTag) -> CFString?

/*!
 * @function CGImageMetadataTagCopyPrefix 
 * @abstract Returns a copy of the tag's prefix
 */
@available(iOS 7.0, *)
func CGImageMetadataTagCopyPrefix(tag: CGImageMetadataTag) -> CFString?

/*!
 * @function CGImageMetadataTagCopyName 
 * @abstract Returns a copy of the tag's name
 */
@available(iOS 7.0, *)
func CGImageMetadataTagCopyName(tag: CGImageMetadataTag) -> CFString?

/*!
 * @function CGImageMetadataTagCopyValue 
 * @abstract Returns a shallow copy of the tag's value
 * @discussion This function should only be used to read the tag's value. 
 * CGImageMetadataCopyTagWithPath returns a copy of the tag (including a copy of
 * the tag's value). Therefore mutating a tag's value returned from this function
 * may not actually mutate the value in the CGImageMetadata. It is recommended 
 * to create a new tag followed by CGImageMetadataSetTagWithPath, or use 
 * CGImageMetadataSetValueWithPath to mutate a metadata value. 
 */
@available(iOS 7.0, *)
func CGImageMetadataTagCopyValue(tag: CGImageMetadataTag) -> AnyObject?

/*!
 * @function CGImageMetadataTagGetType
 * @abstract Get the type of the CGImageMetadataTag
 * @return Returns a CGImageMetadataType constant for the CGImageMetadataTag.
 * This is primarily used to determine how to interpret the tag's value.
 */
@available(iOS 7.0, *)
func CGImageMetadataTagGetType(tag: CGImageMetadataTag) -> CGImageMetadataType

/*!
 * @function CGImageMetadataTagCopyQualifiers
 * @abstract Return a copy of the tag's qualifiers
 * @discussion XMP allows properties to contain supplemental properties called
 * qualifiers. Qualifiers are themselves CGImageMetadataTags with their own 
 * namespace, prefix, name, and value. A common use is the xml:lang qualifier
 * for elements of an alternate-text array.
 * @return Returns a copy of the array of qualifiers. Elements of the array are 
 * CGImageMetadataTags. Returns NULL if the tag does not have any qualifiers. 
 * The copy is shallow, the qualifiers are not deep copied.
 */
@available(iOS 7.0, *)
func CGImageMetadataTagCopyQualifiers(tag: CGImageMetadataTag) -> CFArray?

///*! @functiongroup Retrieving CGImageMetadataTagRefs from a CGImageMetadataRef */
/*!
 * @function CGImageMetadataCopyTags
 * @abstract Obtain an array of tags from a CGImageMetadataRef
 * @return Returns an array with a shallow copy of all top-level 
 * CGImageMetadataTagRefs in a CGImageMetadataRef.
 */
@available(iOS 7.0, *)
func CGImageMetadataCopyTags(metadata: CGImageMetadata) -> CFArray?

/*!
 * @function CGImageMetadataCopyTagWithPath
 * @abstract Searches for a specific CGImageMetadataTag in a CGImageMetadataRef
 * @discussion This is the primary function for clients to obtain specific 
 * metadata properties from an image. The 'path' mechanism provides a way to 
 * access both simple top-level properties, such as Date & Time, or complex 
 * deeply-nested properties with ease.
 * @param metadata A collection of metadata tags.
 * @param parent A parent tag. If NULL, the path is relative to the root of the
 * CGImageMetadataRef (i.e. it is not a child of another property). If the parent
 * is provided, the effective path will be the concatenation of the parent's path
 * and the 'path' parameter. This is useful for accessing array elements or 
 * structure fields inside nested tags.
 * @param path A string representing a path to the desired tag. Paths consist of
 * a tag prefix (i.e. "exif") joined with a tag name (i.e. "Flash") by a colon 
 * (":"), such as CFSTR("exif:Flash"). 
 * Elements of ordered and unordered arrays are accessed via 0-based indices inside square [] brackets.
 * Elements of alternate-text arrays are accessed by an RFC 3066 language code inside square [] brackets.
 * Fields of a structure are delimited by a period, '.'.
 * Qualifiers are delimited by the '?' character. Only tags with string values (kCGImageMetadataTypeString)
 * are allowed to have qualifiers - arrays and structures may not contain qualifiers.
 *
 * If parent is NULL, a prefix must be specified for the first tag. Prefixes for
 * all subsequent tags are optional. If unspecified, the prefix is 
 * inherented from the nearest parent tag with a prefix. Custom prefixes must be
 * registered using @link CGImageMetadataRegisterNamespaceForPrefix @/link prior to use 
 * in any path-based functions.
 *
 * Examples:
 *  <ul>
 *    <li>'path' = CFSTR("xmp:CreateDate")</li>       
 *    <li>'path' = CFSTR("exif:Flash.Fired")</li>
 *    <li>'parent' = tag at path CFSTR("exif:Flash"), path = CFSTR("exif:Fired") (equivilent to previous)</li>
 *    <li>'path' = CFSTR("exif:Flash.RedEyeMode")</li>
 *    <li>'path' = CFSTR("dc:title")</li>
 *    <li>'path' = CFSTR("dc:subject")</li>
 *    <li>'path' = CFSTR("dc:subject[2]") </li>
 *    <li>'parent' = tag at path CFSTR("dc:subject"), path = CFSTR("[2]") (equivilent to previous)</li>
 *    <li>'path' = CFSTR("dc:description[x-default])"</li>
 *    <li>'path' = CFSTR("dc.description[de])"</li>
 *    <li>'path' = CFSTR("dc.description[fr])"</li>
 *    <li>'path' = CFSTR("foo:product)"</li>
 *    <li>'path' = CFSTR("foo:product?bar:manufacturer)"</li>
 *  </ul>
 * @return Returns a copy of CGImageMetadataTag matching 'path', or NULL if no 
 * match is found. The copy of the tag's value is shallow. Tags
 * copied from an immutable CGImageMetadataRef are also immutable. Because this
 * function returns a copy of the tag's value, any modification of the tag's 
 * value must be followed by a CGImageMetadataSetTagWithPath to commit the 
 * change to the metadata container.
 */
@available(iOS 7.0, *)
func CGImageMetadataCopyTagWithPath(metadata: CGImageMetadata, _ parent: CGImageMetadataTag?, _ path: CFString) -> CGImageMetadataTag?

/*!
 * @function CGImageMetadataCopyStringValueWithPath
 * @abstract Searches for a specific tag in a CGImageMetadataRef and returns its
 * string value.
 * @discussion This is a convenience method for searching for a tag at path and
 * extracting the string value.
 * @param metadata A collection of metadata tags.
 * @param parent A parent tag. If NULL, the path is relative to the root of the
 * CGImageMetadataRef (i.e. it is not a child of another property).
 * @param path A string with the path to the desired tag. Please consult
 * the documentation of @link CGImageMetadataCopyTagWithPath @/link for 
 * information about path syntax.
 * @return Returns a string from a CGImageMetadataTag located at 'path'. The 
 * tag must be of type kCGImageMetadataTypeString or kCGImageMetadataTypeAlternateText.
 * For AlternateText tags, the element with the "x-default" language qualifier 
 * will be returned. For other types, NULL will be returned.
 */
@available(iOS 7.0, *)
func CGImageMetadataCopyStringValueWithPath(metadata: CGImageMetadata, _ parent: CGImageMetadataTag?, _ path: CFString) -> CFString?

///*! @functiongroup Modifying a CGMutableImageMetadataRef */
/*!
 * @function CGImageMetadataRegisterNamespaceForPrefix
 * @abstract Associates an XMP namespace URI with a prefix string.
 * @discussion This allows ImageIO to create custom metadata when it encounters 
 * an unrecognized prefix in a path (see CGImageMetadataCopyTagWithPath for more
 * information about path syntax). A namespace must be registered before it can 
 * be used to add custom metadata. All namespaces found in the image's metadata,
 * or defined as a constant above, will be pre-registered. Namespaces and 
 * prefixes must be unique.
 * @return Returns true if successful. Returns false and sets 'err' if an error 
 * or conflict occurs.
 */
@available(iOS 7.0, *)
func CGImageMetadataRegisterNamespaceForPrefix(metadata: CGMutableImageMetadata, _ xmlns: CFString, _ prefix: CFString, _ err: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
 * @function CGImageMetadataSetTagWithPath
 * @abstract Sets the tag at a specific path in a CGMutableImageMetadata container or a parent tag
 * @discussion This is the primary function for adding new metadata tags to a 
 * metadata container, or updating existing tags. All tags required to reach 
 * the final tag (at the end of the path) will be created, if needed. Tags will
 * created with default types (ordered arrays). Creating tags will fail if a 
 * prefix is encountered that has not been registered. Use
 * @link CGImageMetadataRegisterNamespaceForPrefix @/link to associate a prefix
 * with a namespace prior to using a path-based CGImageMetadata function.
 * Note that if a parent tag is provided,
 * the children of that tag reference will be modified, which may be a different
 * reference from the tag stored in the metadata container. Since tags are normally
 * obtained as a copy, it is typically neccesary to use CGImageMetadataSetTagWithPath
 * to commit the changed parent object back to the metadata container (using
 * the parent's path and NULL for the parent).
 * @param metadata A mutable collection of metadata tags. 
 * Use @link CGImageMetadataCreateMutableCopy @/link or 
 * @link CGImageMetadataCreateMutable @/link to obtain a mutable metadata container.
 * @param parent A parent tag. If NULL, the path is relative to the root of the
 * CGImageMetadataRef (i.e. it is not a child of another property). 
 * Note that if a parent tag is provided,
 * the children of that tag reference will be modified, which may be a different
 * reference from the tag stored in the metadata container. Since tags are normally
 * obtained as a copy, it is typically neccesary to use CGImageMetadataSetTagWithPath
 * to commit the changed parent object back to the metadata container (using
 * the parent's path and NULL for the parent).
 * @param path A string with the path to the desired tag. Please consult
 * the documentation of @link CGImageMetadataCopyTagWithPath @/link for 
 * information about path syntax.
 * @param tag The CGImageMetadataTag to be added to the metadata. The tag
 * will be retained.
 * @return Returns true if successful, false otherwise.
 */
@available(iOS 7.0, *)
func CGImageMetadataSetTagWithPath(metadata: CGMutableImageMetadata, _ parent: CGImageMetadataTag?, _ path: CFString, _ tag: CGImageMetadataTag) -> Bool

/*!
 * @function CGImageMetadataSetValueWithPath
 * @abstract Sets the value of the tag at a specific path in a CGMutableImageMetadataRef container or a parent tag
 * @discussion This function is used to add new metadata values to a 
 * metadata container, or update existing tag values. All tags required to reach 
 * the final tag (at the end of the path) are created, if needed. Tags are
 * created with default types (i.e. arrays will be ordered). Creating tags will 
 * fail if a prefix is encountered that has not been registered. Use
 * @link CGImageMetadataRegisterNamespaceForPrefix @/link to associate a prefix
 * with a namespace prior to using a path-based CGImageMetadata function.
 *
 * Examples
 * <ul>
 *     <li>'path' = CFSTR("xmp:CreateDate"), 'value' = CFSTR("2011-09-20T14:54:47-08:00")</li>
 *     <li>'path' = CFSTR("dc:subject[0]"), 'value' = CFSTR("San Francisco")</li>
 *     <li>'path' = CFSTR("dc:subject[1]"), 'value' = CFSTR("Golden Gate Bridge")</li>
 *     <li>'path' = CFSTR("dc:description[en]") 'value' = CFSTR("my image description")</li>
 *     <li>'path' = CFSTR("dc:description[de]") 'value' = CFSTR("meine bildbeschreibung")</li>
 * </ul>
 * Note that if a parent tag is provided,
 * the children of that tag reference will be modified, which may be a different
 * reference from the tag stored in the metadata container. Since tags are normally
 * obtained as a copy, it is typically neccesary to use CGImageMetadataSetTagWithPath
 * to commit the changed parent object back to the metadata container (using
 * the parent's path and NULL for the parent).
 * @param metadata A mutable collection of metadata tags. 
 * Use @link CGImageMetadataCreateMutableCopy @/link or 
 * @link CGImageMetadataCreateMutable @/link to obtain a mutable metadata container.
 * @param parent A parent tag. If NULL, the path is relative to the root of the
 * CGImageMetadataRef (i.e. it is not a child of another property).
 * @param path A string with the path to the desired tag. Please consult
 * the documentation of @link CGImageMetadataCopyTagWithPath @/link for 
 * information about path syntax.
 * @param value The value to be added to the CGImageMetadataTag matching the path.
 * The tag will be retained. The restrictions for the value are the same as in @link
 * CGImageMetadataTagCreate @/link.
 * @return Returns true if successful, false otherwise.
 */
@available(iOS 7.0, *)
func CGImageMetadataSetValueWithPath(metadata: CGMutableImageMetadata, _ parent: CGImageMetadataTag?, _ path: CFString, _ value: AnyObject) -> Bool

/*!
 * @function CGImageMetadataRemoveTagWithPath
 * @abstract Removes the tag at a specific path from a CGMutableImageMetadata container or from the parent tag
 * @discussion Use this function to delete a metadata tag matching a specific 
 * path from a mutable metadata container. Note that if a parent tag is provided,
 * the children of that tag reference will be modified, which may be a different
 * reference from the tag stored in the metadata container. Since tags are normally
 * obtained as a copy, it is typically neccesary to use CGImageMetadataSetTagWithPath
 * to commit the changed parent object back to the metadata container (using
 * the parent's path and NULL for the parent).
 * @param parent A parent tag. If NULL, the path is relative to the root of the
 * CGImageMetadataRef (i.e. it is not a child of another property).
 * @param path A string with the path to the desired tag. Please consult
 * the documentation of @link CGImageMetadataCopyTagWithPath @/link for 
 * information about path syntax.
 */
@available(iOS 7.0, *)
func CGImageMetadataRemoveTagWithPath(metadata: CGMutableImageMetadata, _ parent: CGImageMetadataTag?, _ path: CFString) -> Bool

///*! @functiongroup Iterating through tags of CGImageMetadataRef */
/*!
 * @typedef CGImageMetadataTagBlock
 * @abstract The block type used by CGImageMetadataEnumerateTagsUsingBlock
 * @param path The full path to the tag in the metadata container.
 * @param tag The CGImageMetadataTagRef corresponding to the path in metadata.
 * @return Return true to continue iterating through the tags, or return false to stop.
 */
typealias CGImageMetadataTagBlock = (CFString, CGImageMetadataTag) -> Bool

/*!
 * @function CGImageMetadataEnumerateTagsUsingBlock
 * @abstract Executes a given block using each tag in the metadata
 * @discussion This function iterates over all of the tags in a
 * CGImageMetadataRef, executing the block for each tag. The default behavior 
 * iterates over all top-level tags in the metadata. The path of the tag and 
 * the tag itself is passed to the block. The metadata cannot be modified inside
 * the block - consider adding the tags of interest into another collection.
 * @param metadata A collection of metadata tags.
 * @param rootPath Iteration will occur for all children of the tag matching
 * the root path. Please refer to CGImageMetadataCopyTagWithPath for information
 * about path syntax. If NULL or an empty string, the block will be executed 
 * for all top-level tags in the metadata container.
 * @param options A dictionary of options for iterating through the tags.
 * Currently the only supported option is kCGImageMetadataEnumerateRecursively,
 * which should be set to a CFBoolean.
 * @param block The block that is executed for each tag in metadata.
 */
@available(iOS 7.0, *)
func CGImageMetadataEnumerateTagsUsingBlock(metadata: CGImageMetadata, _ rootPath: CFString?, _ options: CFDictionary?, _ block: CGImageMetadataTagBlock)
@available(iOS 7.0, *)
let kCGImageMetadataEnumerateRecursively: CFString

///*! @functiongroup Working with CGImageProperties */
/*!
 * @function CGImageMetadataCopyTagMatchingImageProperty
 * @abstract Searches for a specific CGImageMetadataTag matching a kCGImageProperty constant
 * @discussion Provides a bridge for values from CGImageCopyPropertiesAtIndex, simplifying 
 * access for properties defined in EXIF and IPTC standards, which have no notion of 
 * namespaces, prefixes, or XMP property types.
 * Metadata Working Group guidance is factored into the mapping of CGImageProperties to 
 * XMP compatible CGImageMetadataTags.
 * For example, kCGImagePropertyExifDateTimeOriginal will get the value of the 
 * corresponding XMP tag, which is photoshop:DateCreated. Note that property values will 
 * still be in their XMP forms, such as "YYYY-MM-DDThh:mm:ss" for DateTime, rather than
 * the EXIF or IPTC DateTime formats.
 * @param metadata A collection of metadata tags
 * @param dictionaryName the metadata subdictionary to which the image property belongs,
 * such as kCGImagePropertyExifDictionary or kCGImagePropertyIPTCDictionary. Not all
 * dictionaries and properties are supported at this time.
 * @param propertyName the name of the property. This must be a defined property constant
 * corresponding to the 'dictionaryName'. For example, kCGImagePropertyTIFFOrientation,
 * kCGImagePropertyExifDateTimeOriginal, or kCGImagePropertyIPTCKeywords. A warning
 * will be logged if the CGImageProperty is unsupported by CGImageMetadata.
 * @return Returns a CGImageMetadataTagRef with the appropriate namespace, prefix, 
 * tag name, and XMP value for the corresponding CGImageProperty. Returns NULL if the 
 * property could not be found.
 */
@available(iOS 7.0, *)
func CGImageMetadataCopyTagMatchingImageProperty(metadata: CGImageMetadata, _ dictionaryName: CFString, _ propertyName: CFString) -> CGImageMetadataTag?

/*!
 * @function CGImageMetadataSetValueMatchingImageProperty
 * @abstract Sets the value of the CGImageMetadataTag matching a kCGImageProperty constant
 * @discussion Provides a bridge for values from CGImageCopyPropertiesAtIndex, simplifying 
 * changing property values defined in EXIF and IPTC standards, which have no notion of 
 * namespaces, prefixes, or XMP property types.
 * Metadata Working Group guidance is factored into the mapping of CGImageProperties to 
 * XMP compatible CGImageMetadataTags.
 * For example, setting kCGImagePropertyExifDateTimeOriginal will set the value of the 
 * corresponding XMP tag, which is photoshop:DateCreated. Note that property values should 
 * still be in their XMP forms, such as "YYYY-MM-DDThh:mm:ss" for DateTime, rather than
 * the EXIF or IPTC DateTime formats. Although this function will allow the caller to set
 * custom values for these properties, you should consult the appropriate specifications 
 * for details about property value formats for EXIF and IPTC tags in XMP.
 * @param metadata A mutable collection of metadata tags
 * @param dictionaryName the metadata subdictionary to which the image property belongs,
 * such as kCGImagePropertyExifDictionary or kCGImagePropertyIPTCDictionary. Not all
 * dictionaries and properties are supported at this time.
 * @param propertyName the name of the property. This must be a defined property constant
 * corresponding to the 'dictionaryName'. For example, kCGImagePropertyTIFFOrientation,
 * kCGImagePropertyExifDateTimeOriginal, or kCGImagePropertyIPTCKeywords. A warning
 * will be logged if the CGImageProperty is unsupported by CGImageMetadata.
 * @param value A CFTypeRef with the value for the tag. The same value restrictions apply
 * as in @link CGImageMetadataTagCreate @/link.
 * @return Returns true if successful, false otherwise.
 */
@available(iOS 7.0, *)
func CGImageMetadataSetValueMatchingImageProperty(metadata: CGMutableImageMetadata, _ dictionaryName: CFString, _ propertyName: CFString, _ value: AnyObject) -> Bool

/*!
 * @function CGImageMetadataCreateXMPData
 * @abstract Serializes the CGImageMetadataRef to XMP data
 * @discussion This converts all of the metadata tags to a block of XMP data. Common uses
 * include creating sidecar files that contain metadata for image formats that do not 
 * support embedded XMP, or cannot be edited due to other format restrictions (such as
 * proprietary RAW camera formats).
 * @param metadata A collection of metadata tags.
 * @param options should be NULL. Options are currently not used, but may be used in 
 * future release.
 * @return Returns a CFData containing an XMP representation of the metadata. Returns
 * NULL if an error occurred. 
 */
@available(iOS 7.0, *)
func CGImageMetadataCreateXMPData(metadata: CGImageMetadata, _ options: CFDictionary?) -> CFData?

/*!
 * @function CGImageMetadataCreateFromXMPData
 * @abstract Creates a collection of CGImageMetadataTags from a block of XMP data
 * @discussion Converts XMP data into a collection of metadata tags.
 * The data must be a complete XMP tree. XMP packet  headers (<?xpacket .. ?>) are 
 * supported.
 * @param data The XMP data.
 * @return Returns a collection of CGImageMetadata tags. Returns NULL if an error occurred. 
 */
@available(iOS 7.0, *)
func CGImageMetadataCreateFromXMPData(data: CFData) -> CGImageMetadata?

/*!
 *  @constant kCFErrorDomainCGImageMetadata
 *  @discussion Error domain for all errors originating in ImageIO for CGImageMetadata APIs.
 *      Error codes may be interpreted using the list below.
 */
let kCFErrorDomainCGImageMetadata: CFString

/*!
 *  @enum CGImageMetadataErrors
 *  @discussion the list of all error codes returned under the error domain kCFErrorDomainCGImageMetadata
 */
enum CGImageMetadataErrors : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Unknown
  case UnsupportedFormat
  case BadArgument
  case ConflictingArguments
  case PrefixConflict
}
@available(iOS 4.0, *)
let kCGImagePropertyTIFFDictionary: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGIFDictionary: CFString
@available(iOS 4.0, *)
let kCGImagePropertyJFIFDictionary: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifDictionary: CFString
@available(iOS 4.0, *)
let kCGImagePropertyPNGDictionary: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCDictionary: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSDictionary: CFString
@available(iOS 4.0, *)
let kCGImagePropertyRawDictionary: CFString
@available(iOS 4.0, *)
let kCGImagePropertyCIFFDictionary: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerCanonDictionary: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerNikonDictionary: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerMinoltaDictionary: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerFujiDictionary: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerOlympusDictionary: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerPentaxDictionary: CFString
@available(iOS 4.0, *)
let kCGImageProperty8BIMDictionary: CFString
@available(iOS 4.0, *)
let kCGImagePropertyDNGDictionary: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifAuxDictionary: CFString
@available(iOS 7.0, *)
let kCGImagePropertyMakerAppleDictionary: CFString

/** Properties which may be returned by "CGImageSourceCopyProperties".  The
 ** values apply to the container in general but not necessarily to any
 ** individual image that it contains. **/
@available(iOS 4.0, *)
let kCGImagePropertyFileSize: CFString

/** Properties which may be returned by "CGImageSourceCopyPropertiesAtIndex".
 ** The values apply to a single image of an image source file. **/
@available(iOS 4.0, *)
let kCGImagePropertyPixelHeight: CFString
@available(iOS 4.0, *)
let kCGImagePropertyPixelWidth: CFString
@available(iOS 4.0, *)
let kCGImagePropertyDPIHeight: CFString
@available(iOS 4.0, *)
let kCGImagePropertyDPIWidth: CFString
@available(iOS 4.0, *)
let kCGImagePropertyDepth: CFString
@available(iOS 4.0, *)
let kCGImagePropertyOrientation: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIsFloat: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIsIndexed: CFString
@available(iOS 4.0, *)
let kCGImagePropertyHasAlpha: CFString
@available(iOS 4.0, *)
let kCGImagePropertyColorModel: CFString
@available(iOS 4.0, *)
let kCGImagePropertyProfileName: CFString
@available(iOS 4.0, *)
let kCGImagePropertyColorModelRGB: CFString
@available(iOS 4.0, *)
let kCGImagePropertyColorModelGray: CFString
@available(iOS 4.0, *)
let kCGImagePropertyColorModelCMYK: CFString
@available(iOS 4.0, *)
let kCGImagePropertyColorModelLab: CFString
@available(iOS 4.0, *)
let kCGImagePropertyTIFFCompression: CFString
@available(iOS 4.0, *)
let kCGImagePropertyTIFFPhotometricInterpretation: CFString
@available(iOS 4.0, *)
let kCGImagePropertyTIFFDocumentName: CFString
@available(iOS 4.0, *)
let kCGImagePropertyTIFFImageDescription: CFString
@available(iOS 4.0, *)
let kCGImagePropertyTIFFMake: CFString
@available(iOS 4.0, *)
let kCGImagePropertyTIFFModel: CFString
@available(iOS 4.0, *)
let kCGImagePropertyTIFFOrientation: CFString
@available(iOS 4.0, *)
let kCGImagePropertyTIFFXResolution: CFString
@available(iOS 4.0, *)
let kCGImagePropertyTIFFYResolution: CFString
@available(iOS 4.0, *)
let kCGImagePropertyTIFFResolutionUnit: CFString
@available(iOS 4.0, *)
let kCGImagePropertyTIFFSoftware: CFString
@available(iOS 4.0, *)
let kCGImagePropertyTIFFTransferFunction: CFString
@available(iOS 4.0, *)
let kCGImagePropertyTIFFDateTime: CFString
@available(iOS 4.0, *)
let kCGImagePropertyTIFFArtist: CFString
@available(iOS 4.0, *)
let kCGImagePropertyTIFFHostComputer: CFString
@available(iOS 4.0, *)
let kCGImagePropertyTIFFCopyright: CFString
@available(iOS 4.0, *)
let kCGImagePropertyTIFFWhitePoint: CFString
@available(iOS 4.0, *)
let kCGImagePropertyTIFFPrimaryChromaticities: CFString
@available(iOS 9.0, *)
let kCGImagePropertyTIFFTileWidth: CFString
@available(iOS 9.0, *)
let kCGImagePropertyTIFFTileLength: CFString
@available(iOS 4.0, *)
let kCGImagePropertyJFIFVersion: CFString
@available(iOS 4.0, *)
let kCGImagePropertyJFIFXDensity: CFString
@available(iOS 4.0, *)
let kCGImagePropertyJFIFYDensity: CFString
@available(iOS 4.0, *)
let kCGImagePropertyJFIFDensityUnit: CFString
@available(iOS 4.0, *)
let kCGImagePropertyJFIFIsProgressive: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifExposureTime: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifFNumber: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifExposureProgram: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifSpectralSensitivity: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifISOSpeedRatings: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifOECF: CFString
@available(iOS 7.0, *)
let kCGImagePropertyExifSensitivityType: CFString
@available(iOS 7.0, *)
let kCGImagePropertyExifStandardOutputSensitivity: CFString
@available(iOS 7.0, *)
let kCGImagePropertyExifRecommendedExposureIndex: CFString
@available(iOS 7.0, *)
let kCGImagePropertyExifISOSpeed: CFString
@available(iOS 7.0, *)
let kCGImagePropertyExifISOSpeedLatitudeyyy: CFString
@available(iOS 7.0, *)
let kCGImagePropertyExifISOSpeedLatitudezzz: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifVersion: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifDateTimeOriginal: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifDateTimeDigitized: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifComponentsConfiguration: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifCompressedBitsPerPixel: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifShutterSpeedValue: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifApertureValue: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifBrightnessValue: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifExposureBiasValue: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifMaxApertureValue: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifSubjectDistance: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifMeteringMode: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifLightSource: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifFlash: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifFocalLength: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifSubjectArea: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifMakerNote: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifUserComment: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifSubsecTime: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifSubsecTimeOriginal: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifSubsecTimeDigitized: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifFlashPixVersion: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifColorSpace: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifPixelXDimension: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifPixelYDimension: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifRelatedSoundFile: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifFlashEnergy: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifSpatialFrequencyResponse: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifFocalPlaneXResolution: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifFocalPlaneYResolution: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifFocalPlaneResolutionUnit: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifSubjectLocation: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifExposureIndex: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifSensingMethod: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifFileSource: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifSceneType: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifCFAPattern: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifCustomRendered: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifExposureMode: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifWhiteBalance: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifDigitalZoomRatio: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifFocalLenIn35mmFilm: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifSceneCaptureType: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifGainControl: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifContrast: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifSaturation: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifSharpness: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifDeviceSettingDescription: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifSubjectDistRange: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifImageUniqueID: CFString
@available(iOS 5.0, *)
let kCGImagePropertyExifCameraOwnerName: CFString
@available(iOS 5.0, *)
let kCGImagePropertyExifBodySerialNumber: CFString
@available(iOS 5.0, *)
let kCGImagePropertyExifLensSpecification: CFString
@available(iOS 5.0, *)
let kCGImagePropertyExifLensMake: CFString
@available(iOS 5.0, *)
let kCGImagePropertyExifLensModel: CFString
@available(iOS 5.0, *)
let kCGImagePropertyExifLensSerialNumber: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifGamma: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifSubsecTimeOrginal: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifAuxLensInfo: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifAuxLensModel: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifAuxSerialNumber: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifAuxLensID: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifAuxLensSerialNumber: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifAuxImageNumber: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifAuxFlashCompensation: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifAuxOwnerName: CFString
@available(iOS 4.0, *)
let kCGImagePropertyExifAuxFirmware: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGIFLoopCount: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGIFDelayTime: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGIFImageColorMap: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGIFHasGlobalColorMap: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGIFUnclampedDelayTime: CFString
@available(iOS 4.0, *)
let kCGImagePropertyPNGGamma: CFString
@available(iOS 4.0, *)
let kCGImagePropertyPNGInterlaceType: CFString
@available(iOS 4.0, *)
let kCGImagePropertyPNGXPixelsPerMeter: CFString
@available(iOS 4.0, *)
let kCGImagePropertyPNGYPixelsPerMeter: CFString
@available(iOS 4.0, *)
let kCGImagePropertyPNGsRGBIntent: CFString
@available(iOS 4.0, *)
let kCGImagePropertyPNGChromaticities: CFString
@available(iOS 5.0, *)
let kCGImagePropertyPNGAuthor: CFString
@available(iOS 5.0, *)
let kCGImagePropertyPNGCopyright: CFString
@available(iOS 5.0, *)
let kCGImagePropertyPNGCreationTime: CFString
@available(iOS 5.0, *)
let kCGImagePropertyPNGDescription: CFString
@available(iOS 5.0, *)
let kCGImagePropertyPNGModificationTime: CFString
@available(iOS 5.0, *)
let kCGImagePropertyPNGSoftware: CFString
@available(iOS 5.0, *)
let kCGImagePropertyPNGTitle: CFString
@available(iOS 8.0, *)
let kCGImagePropertyAPNGLoopCount: CFString
@available(iOS 8.0, *)
let kCGImagePropertyAPNGDelayTime: CFString
@available(iOS 8.0, *)
let kCGImagePropertyAPNGUnclampedDelayTime: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSVersion: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSLatitudeRef: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSLatitude: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSLongitudeRef: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSLongitude: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSAltitudeRef: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSAltitude: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSTimeStamp: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSSatellites: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSStatus: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSMeasureMode: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSDOP: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSSpeedRef: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSSpeed: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSTrackRef: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSTrack: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSImgDirectionRef: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSImgDirection: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSMapDatum: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSDestLatitudeRef: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSDestLatitude: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSDestLongitudeRef: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSDestLongitude: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSDestBearingRef: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSDestBearing: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSDestDistanceRef: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSDestDistance: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSProcessingMethod: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSAreaInformation: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSDateStamp: CFString
@available(iOS 4.0, *)
let kCGImagePropertyGPSDifferental: CFString
@available(iOS 8.0, *)
let kCGImagePropertyGPSHPositioningError: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCObjectTypeReference: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCObjectAttributeReference: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCObjectName: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCEditStatus: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCEditorialUpdate: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCUrgency: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCSubjectReference: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCCategory: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCSupplementalCategory: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCFixtureIdentifier: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCKeywords: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCContentLocationCode: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCContentLocationName: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCReleaseDate: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCReleaseTime: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCExpirationDate: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCExpirationTime: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCSpecialInstructions: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCActionAdvised: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCReferenceService: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCReferenceDate: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCReferenceNumber: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCDateCreated: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCTimeCreated: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCDigitalCreationDate: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCDigitalCreationTime: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCOriginatingProgram: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCProgramVersion: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCObjectCycle: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCByline: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCBylineTitle: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCCity: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCSubLocation: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCProvinceState: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCCountryPrimaryLocationCode: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCCountryPrimaryLocationName: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCOriginalTransmissionReference: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCHeadline: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCCredit: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCSource: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCCopyrightNotice: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCContact: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCCaptionAbstract: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCWriterEditor: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCImageType: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCImageOrientation: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCLanguageIdentifier: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCStarRating: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCCreatorContactInfo: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCRightsUsageTerms: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCScene: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCContactInfoCity: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCContactInfoCountry: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCContactInfoAddress: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCContactInfoPostalCode: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCContactInfoStateProvince: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCContactInfoEmails: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCContactInfoPhones: CFString
@available(iOS 4.0, *)
let kCGImagePropertyIPTCContactInfoWebURLs: CFString
@available(iOS 4.0, *)
let kCGImageProperty8BIMLayerNames: CFString
@available(iOS 8.0, *)
let kCGImageProperty8BIMVersion: CFString
@available(iOS 4.0, *)
let kCGImagePropertyDNGVersion: CFString
@available(iOS 4.0, *)
let kCGImagePropertyDNGBackwardVersion: CFString
@available(iOS 4.0, *)
let kCGImagePropertyDNGUniqueCameraModel: CFString
@available(iOS 4.0, *)
let kCGImagePropertyDNGLocalizedCameraModel: CFString
@available(iOS 4.0, *)
let kCGImagePropertyDNGCameraSerialNumber: CFString
@available(iOS 4.0, *)
let kCGImagePropertyDNGLensInfo: CFString
@available(iOS 4.0, *)
let kCGImagePropertyCIFFDescription: CFString
@available(iOS 4.0, *)
let kCGImagePropertyCIFFFirmware: CFString
@available(iOS 4.0, *)
let kCGImagePropertyCIFFOwnerName: CFString
@available(iOS 4.0, *)
let kCGImagePropertyCIFFImageName: CFString
@available(iOS 4.0, *)
let kCGImagePropertyCIFFImageFileName: CFString
@available(iOS 4.0, *)
let kCGImagePropertyCIFFReleaseMethod: CFString
@available(iOS 4.0, *)
let kCGImagePropertyCIFFReleaseTiming: CFString
@available(iOS 4.0, *)
let kCGImagePropertyCIFFRecordID: CFString
@available(iOS 4.0, *)
let kCGImagePropertyCIFFSelfTimingTime: CFString
@available(iOS 4.0, *)
let kCGImagePropertyCIFFCameraSerialNumber: CFString
@available(iOS 4.0, *)
let kCGImagePropertyCIFFImageSerialNumber: CFString
@available(iOS 4.0, *)
let kCGImagePropertyCIFFContinuousDrive: CFString
@available(iOS 4.0, *)
let kCGImagePropertyCIFFFocusMode: CFString
@available(iOS 4.0, *)
let kCGImagePropertyCIFFMeteringMode: CFString
@available(iOS 4.0, *)
let kCGImagePropertyCIFFShootingMode: CFString
@available(iOS 4.0, *)
let kCGImagePropertyCIFFLensModel: CFString
@available(iOS 4.0, *)
let kCGImagePropertyCIFFLensMaxMM: CFString
@available(iOS 4.0, *)
let kCGImagePropertyCIFFLensMinMM: CFString
@available(iOS 4.0, *)
let kCGImagePropertyCIFFWhiteBalanceIndex: CFString
@available(iOS 4.0, *)
let kCGImagePropertyCIFFFlashExposureComp: CFString
@available(iOS 4.0, *)
let kCGImagePropertyCIFFMeasuredEV: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerNikonISOSetting: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerNikonColorMode: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerNikonQuality: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerNikonWhiteBalanceMode: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerNikonSharpenMode: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerNikonFocusMode: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerNikonFlashSetting: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerNikonISOSelection: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerNikonFlashExposureComp: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerNikonImageAdjustment: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerNikonLensAdapter: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerNikonLensType: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerNikonLensInfo: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerNikonFocusDistance: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerNikonDigitalZoom: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerNikonShootingMode: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerNikonCameraSerialNumber: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerNikonShutterCount: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerCanonOwnerName: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerCanonCameraSerialNumber: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerCanonImageSerialNumber: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerCanonFlashExposureComp: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerCanonContinuousDrive: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerCanonLensModel: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerCanonFirmware: CFString
@available(iOS 4.0, *)
let kCGImagePropertyMakerCanonAspectRatioInfo: CFString
enum CGImagePropertyOrientation : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Up
  case UpMirrored
  case Down
  case DownMirrored
  case LeftMirrored
  case Right
  case RightMirrored
  case Left
}
@available(iOS 9.0, *)
let kCGImagePropertyPNGCompressionFilter: CFString
var IMAGEIO_PNG_NO_FILTERS: Int32 { get }
var IMAGEIO_PNG_FILTER_NONE: Int32 { get }
var IMAGEIO_PNG_FILTER_SUB: Int32 { get }
var IMAGEIO_PNG_FILTER_UP: Int32 { get }
var IMAGEIO_PNG_FILTER_AVG: Int32 { get }
var IMAGEIO_PNG_FILTER_PAETH: Int32 { get }
typealias CGImageSourceRef = CGImageSource
enum CGImageSourceStatus : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case StatusUnexpectedEOF
  case StatusInvalidData
  case StatusUnknownType
  case StatusReadingHeader
  case StatusIncomplete
  case StatusComplete
}

/** Keys for the options dictionary when creating a CGImageSourceRef. **/
@available(iOS 4.0, *)
let kCGImageSourceTypeIdentifierHint: CFString

/** Keys for the options dictionary of "CGImageSourceCopyPropertiesAtIndex"
 ** and "CGImageSourceCreateImageAtIndex". **/
@available(iOS 4.0, *)
let kCGImageSourceShouldCache: CFString
@available(iOS 7.0, *)
let kCGImageSourceShouldCacheImmediately: CFString
@available(iOS 4.0, *)
let kCGImageSourceShouldAllowFloat: CFString
@available(iOS 4.0, *)
let kCGImageSourceCreateThumbnailFromImageIfAbsent: CFString
@available(iOS 4.0, *)
let kCGImageSourceCreateThumbnailFromImageAlways: CFString
@available(iOS 4.0, *)
let kCGImageSourceThumbnailMaxPixelSize: CFString
@available(iOS 4.0, *)
let kCGImageSourceCreateThumbnailWithTransform: CFString
@available(iOS 9.0, *)
let kCGImageSourceSubsampleFactor: CFString
@available(iOS 4.0, *)
func CGImageSourceGetTypeID() -> CFTypeID
@available(iOS 4.0, *)
func CGImageSourceCopyTypeIdentifiers() -> CFArray
@available(iOS 4.0, *)
func CGImageSourceCreateWithDataProvider(provider: CGDataProvider, _ options: CFDictionary?) -> CGImageSource?
@available(iOS 4.0, *)
func CGImageSourceCreateWithData(data: CFData, _ options: CFDictionary?) -> CGImageSource?
@available(iOS 4.0, *)
func CGImageSourceCreateWithURL(url: CFURL, _ options: CFDictionary?) -> CGImageSource?
@available(iOS 4.0, *)
func CGImageSourceGetType(isrc: CGImageSource) -> CFString?
@available(iOS 4.0, *)
func CGImageSourceGetCount(isrc: CGImageSource) -> Int
@available(iOS 4.0, *)
func CGImageSourceCopyProperties(isrc: CGImageSource, _ options: CFDictionary?) -> CFDictionary?
@available(iOS 4.0, *)
func CGImageSourceCopyPropertiesAtIndex(isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CFDictionary?
@available(iOS 7.0, *)
func CGImageSourceCopyMetadataAtIndex(isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CGImageMetadata?
@available(iOS 4.0, *)
func CGImageSourceCreateImageAtIndex(isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CGImage?
@available(iOS 7.0, *)
func CGImageSourceRemoveCacheAtIndex(isrc: CGImageSource, _ index: Int)
@available(iOS 4.0, *)
func CGImageSourceCreateThumbnailAtIndex(isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CGImage?
@available(iOS 4.0, *)
func CGImageSourceCreateIncremental(options: CFDictionary?) -> CGImageSource
@available(iOS 4.0, *)
func CGImageSourceUpdateData(isrc: CGImageSource, _ data: CFData, _ final: Bool)
@available(iOS 4.0, *)
func CGImageSourceUpdateDataProvider(isrc: CGImageSource, _ provider: CGDataProvider, _ final: Bool)
@available(iOS 4.0, *)
func CGImageSourceGetStatus(isrc: CGImageSource) -> CGImageSourceStatus
@available(iOS 4.0, *)
func CGImageSourceGetStatusAtIndex(isrc: CGImageSource, _ index: Int) -> CGImageSourceStatus
var IIO_HAS_IOSURFACE: Int32 { get }
