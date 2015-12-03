
typealias CGImageDestinationRef = CGImageDestination

/** Properties which may be passed to "CGImageDestinationAddImage"
 ** or "CGImageDestinationAddImageFromSource" to effect the output.
 ** The values apply to a single image of an image destination. **/
@available(OSX 10.4, *)
let kCGImageDestinationLossyCompressionQuality: CFString
@available(OSX 10.4, *)
let kCGImageDestinationBackgroundColor: CFString
@available(OSX 10.10, *)
let kCGImageDestinationImageMaxPixelSize: CFString
@available(OSX 10.10, *)
let kCGImageDestinationEmbedThumbnail: CFString
@available(OSX 10.4, *)
func CGImageDestinationGetTypeID() -> CFTypeID
@available(OSX 10.4, *)
func CGImageDestinationCopyTypeIdentifiers() -> CFArray
@available(OSX 10.4, *)
func CGImageDestinationCreateWithDataConsumer(consumer: CGDataConsumer, _ type: CFString, _ count: Int, _ options: CFDictionary?) -> CGImageDestination?
@available(OSX 10.4, *)
func CGImageDestinationCreateWithData(data: CFMutableData, _ type: CFString, _ count: Int, _ options: CFDictionary?) -> CGImageDestination?
@available(OSX 10.4, *)
func CGImageDestinationCreateWithURL(url: CFURL, _ type: CFString, _ count: Int, _ options: CFDictionary?) -> CGImageDestination?
@available(OSX 10.4, *)
func CGImageDestinationSetProperties(idst: CGImageDestination, _ properties: CFDictionary?)
@available(OSX 10.4, *)
func CGImageDestinationAddImage(idst: CGImageDestination, _ image: CGImage, _ properties: CFDictionary?)
@available(OSX 10.4, *)
func CGImageDestinationAddImageFromSource(idst: CGImageDestination, _ isrc: CGImageSource, _ index: Int, _ properties: CFDictionary?)
@available(OSX 10.4, *)
func CGImageDestinationFinalize(idst: CGImageDestination) -> Bool
@available(OSX 10.8, *)
func CGImageDestinationAddImageAndMetadata(idst: CGImageDestination, _ image: CGImage, _ metadata: CGImageMetadata?, _ options: CFDictionary?)

/**
 ** Keys which may be used in the 'options' dictionary of
 ** "CGImageDestinationCopyImageSource" to effect the output.
 **/
@available(OSX 10.8, *)
let kCGImageDestinationMetadata: CFString
@available(OSX 10.8, *)
let kCGImageDestinationMergeMetadata: CFString
@available(OSX 10.8, *)
let kCGImageMetadataShouldExcludeXMP: CFString
@available(OSX 10.10, *)
let kCGImageMetadataShouldExcludeGPS: CFString
@available(OSX 10.8, *)
let kCGImageDestinationDateTime: CFString
@available(OSX 10.8, *)
let kCGImageDestinationOrientation: CFString
@available(OSX 10.8, *)
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
@available(OSX 10.8, *)
func CGImageMetadataCreateMutable() -> CGMutableImageMetadata

/*!
 * @function CGImageMetadataCreateMutableCopy
 * @abstract Creates a deep mutable copy of another CGImageMetadataRef
 * @discussion Before modifying an immutable CGImageMetadataRef (such as metadata
 * from CGImageSourceCopyMetadataAtIndex) you must first make a copy.
 * This function makes a deep copy of all CGImageMetadataTags and their values.
 */
@available(OSX 10.8, *)
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
@available(OSX 10.8, *)
func CGImageMetadataTagGetTypeID() -> CFTypeID
@available(OSX 10.8, *)
let kCGImageMetadataNamespaceExif: CFString
@available(OSX 10.8, *)
let kCGImageMetadataNamespaceExifAux: CFString
@available(OSX 10.9, *)
let kCGImageMetadataNamespaceExifEX: CFString
@available(OSX 10.8, *)
let kCGImageMetadataNamespaceDublinCore: CFString
@available(OSX 10.8, *)
let kCGImageMetadataNamespaceIPTCCore: CFString
@available(OSX 10.8, *)
let kCGImageMetadataNamespacePhotoshop: CFString
@available(OSX 10.8, *)
let kCGImageMetadataNamespaceTIFF: CFString
@available(OSX 10.8, *)
let kCGImageMetadataNamespaceXMPBasic: CFString
@available(OSX 10.8, *)
let kCGImageMetadataNamespaceXMPRights: CFString
@available(OSX 10.8, *)
let kCGImageMetadataPrefixExif: CFString
@available(OSX 10.8, *)
let kCGImageMetadataPrefixExifAux: CFString
@available(OSX 10.9, *)
let kCGImageMetadataPrefixExifEX: CFString
@available(OSX 10.8, *)
let kCGImageMetadataPrefixDublinCore: CFString
@available(OSX 10.8, *)
let kCGImageMetadataPrefixIPTCCore: CFString
@available(OSX 10.8, *)
let kCGImageMetadataPrefixPhotoshop: CFString
@available(OSX 10.8, *)
let kCGImageMetadataPrefixTIFF: CFString
@available(OSX 10.8, *)
let kCGImageMetadataPrefixXMPBasic: CFString
@available(OSX 10.8, *)
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
@available(OSX 10.8, *)
func CGImageMetadataTagCreate(xmlns: CFString, _ prefix: CFString?, _ name: CFString, _ type: CGImageMetadataType, _ value: AnyObject) -> CGImageMetadataTag?

///*! @functiongroup Getting attributes of a CGImageMetadataTag */
/*!
 * @function CGImageMetadataTagCopyNamespace 
 * @abstract Returns a copy of the tag's namespace
 */
@available(OSX 10.8, *)
func CGImageMetadataTagCopyNamespace(tag: CGImageMetadataTag) -> CFString?

/*!
 * @function CGImageMetadataTagCopyPrefix 
 * @abstract Returns a copy of the tag's prefix
 */
@available(OSX 10.8, *)
func CGImageMetadataTagCopyPrefix(tag: CGImageMetadataTag) -> CFString?

/*!
 * @function CGImageMetadataTagCopyName 
 * @abstract Returns a copy of the tag's name
 */
@available(OSX 10.8, *)
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
@available(OSX 10.8, *)
func CGImageMetadataTagCopyValue(tag: CGImageMetadataTag) -> AnyObject?

/*!
 * @function CGImageMetadataTagGetType
 * @abstract Get the type of the CGImageMetadataTag
 * @return Returns a CGImageMetadataType constant for the CGImageMetadataTag.
 * This is primarily used to determine how to interpret the tag's value.
 */
@available(OSX 10.8, *)
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
@available(OSX 10.8, *)
func CGImageMetadataTagCopyQualifiers(tag: CGImageMetadataTag) -> CFArray?

///*! @functiongroup Retrieving CGImageMetadataTagRefs from a CGImageMetadataRef */
/*!
 * @function CGImageMetadataCopyTags
 * @abstract Obtain an array of tags from a CGImageMetadataRef
 * @return Returns an array with a shallow copy of all top-level 
 * CGImageMetadataTagRefs in a CGImageMetadataRef.
 */
@available(OSX 10.8, *)
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
@available(OSX 10.8, *)
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
@available(OSX 10.8, *)
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
@available(OSX 10.8, *)
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
@available(OSX 10.8, *)
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
@available(OSX 10.8, *)
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
@available(OSX 10.8, *)
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
@available(OSX 10.8, *)
func CGImageMetadataEnumerateTagsUsingBlock(metadata: CGImageMetadata, _ rootPath: CFString?, _ options: CFDictionary?, _ block: CGImageMetadataTagBlock)
@available(OSX 10.8, *)
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
@available(OSX 10.8, *)
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
@available(OSX 10.8, *)
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
@available(OSX 10.8, *)
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
@available(OSX 10.8, *)
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
@available(OSX 10.4, *)
let kCGImagePropertyTIFFDictionary: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGIFDictionary: CFString
@available(OSX 10.4, *)
let kCGImagePropertyJFIFDictionary: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifDictionary: CFString
@available(OSX 10.4, *)
let kCGImagePropertyPNGDictionary: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCDictionary: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSDictionary: CFString
@available(OSX 10.4, *)
let kCGImagePropertyRawDictionary: CFString
@available(OSX 10.4, *)
let kCGImagePropertyCIFFDictionary: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerCanonDictionary: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerNikonDictionary: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerMinoltaDictionary: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerFujiDictionary: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerOlympusDictionary: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerPentaxDictionary: CFString
@available(OSX 10.4, *)
let kCGImageProperty8BIMDictionary: CFString
@available(OSX 10.5, *)
let kCGImagePropertyDNGDictionary: CFString
@available(OSX 10.5, *)
let kCGImagePropertyExifAuxDictionary: CFString
@available(OSX 10.9, *)
let kCGImagePropertyOpenEXRDictionary: CFString
@available(OSX 10.10, *)
let kCGImagePropertyMakerAppleDictionary: CFString

/** Properties which may be returned by "CGImageSourceCopyProperties".  The
 ** values apply to the container in general but not necessarily to any
 ** individual image that it contains. **/
@available(OSX 10.4, *)
let kCGImagePropertyFileSize: CFString

/** Properties which may be returned by "CGImageSourceCopyPropertiesAtIndex".
 ** The values apply to a single image of an image source file. **/
@available(OSX 10.4, *)
let kCGImagePropertyPixelHeight: CFString
@available(OSX 10.4, *)
let kCGImagePropertyPixelWidth: CFString
@available(OSX 10.4, *)
let kCGImagePropertyDPIHeight: CFString
@available(OSX 10.4, *)
let kCGImagePropertyDPIWidth: CFString
@available(OSX 10.4, *)
let kCGImagePropertyDepth: CFString
@available(OSX 10.4, *)
let kCGImagePropertyOrientation: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIsFloat: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIsIndexed: CFString
@available(OSX 10.4, *)
let kCGImagePropertyHasAlpha: CFString
@available(OSX 10.4, *)
let kCGImagePropertyColorModel: CFString
@available(OSX 10.4, *)
let kCGImagePropertyProfileName: CFString
@available(OSX 10.4, *)
let kCGImagePropertyColorModelRGB: CFString
@available(OSX 10.4, *)
let kCGImagePropertyColorModelGray: CFString
@available(OSX 10.4, *)
let kCGImagePropertyColorModelCMYK: CFString
@available(OSX 10.4, *)
let kCGImagePropertyColorModelLab: CFString
@available(OSX 10.4, *)
let kCGImagePropertyTIFFCompression: CFString
@available(OSX 10.4, *)
let kCGImagePropertyTIFFPhotometricInterpretation: CFString
@available(OSX 10.4, *)
let kCGImagePropertyTIFFDocumentName: CFString
@available(OSX 10.4, *)
let kCGImagePropertyTIFFImageDescription: CFString
@available(OSX 10.4, *)
let kCGImagePropertyTIFFMake: CFString
@available(OSX 10.4, *)
let kCGImagePropertyTIFFModel: CFString
@available(OSX 10.4, *)
let kCGImagePropertyTIFFOrientation: CFString
@available(OSX 10.4, *)
let kCGImagePropertyTIFFXResolution: CFString
@available(OSX 10.4, *)
let kCGImagePropertyTIFFYResolution: CFString
@available(OSX 10.4, *)
let kCGImagePropertyTIFFResolutionUnit: CFString
@available(OSX 10.4, *)
let kCGImagePropertyTIFFSoftware: CFString
@available(OSX 10.4, *)
let kCGImagePropertyTIFFTransferFunction: CFString
@available(OSX 10.4, *)
let kCGImagePropertyTIFFDateTime: CFString
@available(OSX 10.4, *)
let kCGImagePropertyTIFFArtist: CFString
@available(OSX 10.4, *)
let kCGImagePropertyTIFFHostComputer: CFString
@available(OSX 10.4, *)
let kCGImagePropertyTIFFCopyright: CFString
@available(OSX 10.4, *)
let kCGImagePropertyTIFFWhitePoint: CFString
@available(OSX 10.4, *)
let kCGImagePropertyTIFFPrimaryChromaticities: CFString
@available(OSX 10.11, *)
let kCGImagePropertyTIFFTileWidth: CFString
@available(OSX 10.11, *)
let kCGImagePropertyTIFFTileLength: CFString
@available(OSX 10.4, *)
let kCGImagePropertyJFIFVersion: CFString
@available(OSX 10.4, *)
let kCGImagePropertyJFIFXDensity: CFString
@available(OSX 10.4, *)
let kCGImagePropertyJFIFYDensity: CFString
@available(OSX 10.4, *)
let kCGImagePropertyJFIFDensityUnit: CFString
@available(OSX 10.4, *)
let kCGImagePropertyJFIFIsProgressive: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifExposureTime: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifFNumber: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifExposureProgram: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifSpectralSensitivity: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifISOSpeedRatings: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifOECF: CFString
@available(OSX 10.9, *)
let kCGImagePropertyExifSensitivityType: CFString
@available(OSX 10.9, *)
let kCGImagePropertyExifStandardOutputSensitivity: CFString
@available(OSX 10.9, *)
let kCGImagePropertyExifRecommendedExposureIndex: CFString
@available(OSX 10.9, *)
let kCGImagePropertyExifISOSpeed: CFString
@available(OSX 10.9, *)
let kCGImagePropertyExifISOSpeedLatitudeyyy: CFString
@available(OSX 10.9, *)
let kCGImagePropertyExifISOSpeedLatitudezzz: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifVersion: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifDateTimeOriginal: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifDateTimeDigitized: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifComponentsConfiguration: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifCompressedBitsPerPixel: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifShutterSpeedValue: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifApertureValue: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifBrightnessValue: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifExposureBiasValue: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifMaxApertureValue: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifSubjectDistance: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifMeteringMode: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifLightSource: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifFlash: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifFocalLength: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifSubjectArea: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifMakerNote: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifUserComment: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifSubsecTime: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifSubsecTimeOriginal: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifSubsecTimeDigitized: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifFlashPixVersion: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifColorSpace: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifPixelXDimension: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifPixelYDimension: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifRelatedSoundFile: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifFlashEnergy: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifSpatialFrequencyResponse: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifFocalPlaneXResolution: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifFocalPlaneYResolution: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifFocalPlaneResolutionUnit: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifSubjectLocation: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifExposureIndex: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifSensingMethod: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifFileSource: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifSceneType: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifCFAPattern: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifCustomRendered: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifExposureMode: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifWhiteBalance: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifDigitalZoomRatio: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifFocalLenIn35mmFilm: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifSceneCaptureType: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifGainControl: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifContrast: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifSaturation: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifSharpness: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifDeviceSettingDescription: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifSubjectDistRange: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifImageUniqueID: CFString
@available(OSX 10.7, *)
let kCGImagePropertyExifCameraOwnerName: CFString
@available(OSX 10.7, *)
let kCGImagePropertyExifBodySerialNumber: CFString
@available(OSX 10.7, *)
let kCGImagePropertyExifLensSpecification: CFString
@available(OSX 10.7, *)
let kCGImagePropertyExifLensMake: CFString
@available(OSX 10.7, *)
let kCGImagePropertyExifLensModel: CFString
@available(OSX 10.7, *)
let kCGImagePropertyExifLensSerialNumber: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifGamma: CFString
@available(OSX 10.4, *)
let kCGImagePropertyExifSubsecTimeOrginal: CFString
@available(OSX 10.5, *)
let kCGImagePropertyExifAuxLensInfo: CFString
@available(OSX 10.5, *)
let kCGImagePropertyExifAuxLensModel: CFString
@available(OSX 10.5, *)
let kCGImagePropertyExifAuxSerialNumber: CFString
@available(OSX 10.5, *)
let kCGImagePropertyExifAuxLensID: CFString
@available(OSX 10.5, *)
let kCGImagePropertyExifAuxLensSerialNumber: CFString
@available(OSX 10.5, *)
let kCGImagePropertyExifAuxImageNumber: CFString
@available(OSX 10.5, *)
let kCGImagePropertyExifAuxFlashCompensation: CFString
@available(OSX 10.5, *)
let kCGImagePropertyExifAuxOwnerName: CFString
@available(OSX 10.5, *)
let kCGImagePropertyExifAuxFirmware: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGIFLoopCount: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGIFDelayTime: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGIFImageColorMap: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGIFHasGlobalColorMap: CFString
@available(OSX 10.7, *)
let kCGImagePropertyGIFUnclampedDelayTime: CFString
@available(OSX 10.4, *)
let kCGImagePropertyPNGGamma: CFString
@available(OSX 10.4, *)
let kCGImagePropertyPNGInterlaceType: CFString
@available(OSX 10.4, *)
let kCGImagePropertyPNGXPixelsPerMeter: CFString
@available(OSX 10.4, *)
let kCGImagePropertyPNGYPixelsPerMeter: CFString
@available(OSX 10.4, *)
let kCGImagePropertyPNGsRGBIntent: CFString
@available(OSX 10.4, *)
let kCGImagePropertyPNGChromaticities: CFString
@available(OSX 10.7, *)
let kCGImagePropertyPNGAuthor: CFString
@available(OSX 10.7, *)
let kCGImagePropertyPNGCopyright: CFString
@available(OSX 10.7, *)
let kCGImagePropertyPNGCreationTime: CFString
@available(OSX 10.7, *)
let kCGImagePropertyPNGDescription: CFString
@available(OSX 10.7, *)
let kCGImagePropertyPNGModificationTime: CFString
@available(OSX 10.7, *)
let kCGImagePropertyPNGSoftware: CFString
@available(OSX 10.7, *)
let kCGImagePropertyPNGTitle: CFString
@available(OSX 10.10, *)
let kCGImagePropertyAPNGLoopCount: CFString
@available(OSX 10.10, *)
let kCGImagePropertyAPNGDelayTime: CFString
@available(OSX 10.10, *)
let kCGImagePropertyAPNGUnclampedDelayTime: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSVersion: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSLatitudeRef: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSLatitude: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSLongitudeRef: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSLongitude: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSAltitudeRef: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSAltitude: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSTimeStamp: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSSatellites: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSStatus: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSMeasureMode: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSDOP: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSSpeedRef: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSSpeed: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSTrackRef: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSTrack: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSImgDirectionRef: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSImgDirection: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSMapDatum: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSDestLatitudeRef: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSDestLatitude: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSDestLongitudeRef: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSDestLongitude: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSDestBearingRef: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSDestBearing: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSDestDistanceRef: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSDestDistance: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSProcessingMethod: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSAreaInformation: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSDateStamp: CFString
@available(OSX 10.4, *)
let kCGImagePropertyGPSDifferental: CFString
@available(OSX 10.10, *)
let kCGImagePropertyGPSHPositioningError: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCObjectTypeReference: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCObjectAttributeReference: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCObjectName: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCEditStatus: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCEditorialUpdate: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCUrgency: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCSubjectReference: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCCategory: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCSupplementalCategory: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCFixtureIdentifier: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCKeywords: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCContentLocationCode: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCContentLocationName: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCReleaseDate: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCReleaseTime: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCExpirationDate: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCExpirationTime: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCSpecialInstructions: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCActionAdvised: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCReferenceService: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCReferenceDate: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCReferenceNumber: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCDateCreated: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCTimeCreated: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCDigitalCreationDate: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCDigitalCreationTime: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCOriginatingProgram: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCProgramVersion: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCObjectCycle: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCByline: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCBylineTitle: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCCity: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCSubLocation: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCProvinceState: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCCountryPrimaryLocationCode: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCCountryPrimaryLocationName: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCOriginalTransmissionReference: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCHeadline: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCCredit: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCSource: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCCopyrightNotice: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCContact: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCCaptionAbstract: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCWriterEditor: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCImageType: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCImageOrientation: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCLanguageIdentifier: CFString
@available(OSX 10.4, *)
let kCGImagePropertyIPTCStarRating: CFString
@available(OSX 10.6, *)
let kCGImagePropertyIPTCCreatorContactInfo: CFString
@available(OSX 10.6, *)
let kCGImagePropertyIPTCRightsUsageTerms: CFString
@available(OSX 10.6, *)
let kCGImagePropertyIPTCScene: CFString
@available(OSX 10.6, *)
let kCGImagePropertyIPTCContactInfoCity: CFString
@available(OSX 10.6, *)
let kCGImagePropertyIPTCContactInfoCountry: CFString
@available(OSX 10.6, *)
let kCGImagePropertyIPTCContactInfoAddress: CFString
@available(OSX 10.6, *)
let kCGImagePropertyIPTCContactInfoPostalCode: CFString
@available(OSX 10.6, *)
let kCGImagePropertyIPTCContactInfoStateProvince: CFString
@available(OSX 10.6, *)
let kCGImagePropertyIPTCContactInfoEmails: CFString
@available(OSX 10.6, *)
let kCGImagePropertyIPTCContactInfoPhones: CFString
@available(OSX 10.6, *)
let kCGImagePropertyIPTCContactInfoWebURLs: CFString
@available(OSX 10.4, *)
let kCGImageProperty8BIMLayerNames: CFString
@available(OSX 10.10, *)
let kCGImageProperty8BIMVersion: CFString
@available(OSX 10.5, *)
let kCGImagePropertyDNGVersion: CFString
@available(OSX 10.5, *)
let kCGImagePropertyDNGBackwardVersion: CFString
@available(OSX 10.5, *)
let kCGImagePropertyDNGUniqueCameraModel: CFString
@available(OSX 10.5, *)
let kCGImagePropertyDNGLocalizedCameraModel: CFString
@available(OSX 10.5, *)
let kCGImagePropertyDNGCameraSerialNumber: CFString
@available(OSX 10.5, *)
let kCGImagePropertyDNGLensInfo: CFString
@available(OSX 10.5, *)
let kCGImagePropertyCIFFDescription: CFString
@available(OSX 10.5, *)
let kCGImagePropertyCIFFFirmware: CFString
@available(OSX 10.5, *)
let kCGImagePropertyCIFFOwnerName: CFString
@available(OSX 10.5, *)
let kCGImagePropertyCIFFImageName: CFString
@available(OSX 10.5, *)
let kCGImagePropertyCIFFImageFileName: CFString
@available(OSX 10.5, *)
let kCGImagePropertyCIFFReleaseMethod: CFString
@available(OSX 10.5, *)
let kCGImagePropertyCIFFReleaseTiming: CFString
@available(OSX 10.5, *)
let kCGImagePropertyCIFFRecordID: CFString
@available(OSX 10.5, *)
let kCGImagePropertyCIFFSelfTimingTime: CFString
@available(OSX 10.5, *)
let kCGImagePropertyCIFFCameraSerialNumber: CFString
@available(OSX 10.5, *)
let kCGImagePropertyCIFFImageSerialNumber: CFString
@available(OSX 10.5, *)
let kCGImagePropertyCIFFContinuousDrive: CFString
@available(OSX 10.5, *)
let kCGImagePropertyCIFFFocusMode: CFString
@available(OSX 10.5, *)
let kCGImagePropertyCIFFMeteringMode: CFString
@available(OSX 10.5, *)
let kCGImagePropertyCIFFShootingMode: CFString
@available(OSX 10.5, *)
let kCGImagePropertyCIFFLensModel: CFString
@available(OSX 10.5, *)
let kCGImagePropertyCIFFLensMaxMM: CFString
@available(OSX 10.5, *)
let kCGImagePropertyCIFFLensMinMM: CFString
@available(OSX 10.5, *)
let kCGImagePropertyCIFFWhiteBalanceIndex: CFString
@available(OSX 10.5, *)
let kCGImagePropertyCIFFFlashExposureComp: CFString
@available(OSX 10.5, *)
let kCGImagePropertyCIFFMeasuredEV: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerNikonISOSetting: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerNikonColorMode: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerNikonQuality: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerNikonWhiteBalanceMode: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerNikonSharpenMode: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerNikonFocusMode: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerNikonFlashSetting: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerNikonISOSelection: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerNikonFlashExposureComp: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerNikonImageAdjustment: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerNikonLensAdapter: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerNikonLensType: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerNikonLensInfo: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerNikonFocusDistance: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerNikonDigitalZoom: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerNikonShootingMode: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerNikonCameraSerialNumber: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerNikonShutterCount: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerCanonOwnerName: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerCanonCameraSerialNumber: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerCanonImageSerialNumber: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerCanonFlashExposureComp: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerCanonContinuousDrive: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerCanonLensModel: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerCanonFirmware: CFString
@available(OSX 10.5, *)
let kCGImagePropertyMakerCanonAspectRatioInfo: CFString
@available(OSX 10.9, *)
let kCGImagePropertyOpenEXRAspectRatio: CFString
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
@available(OSX 10.11, *)
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
@available(OSX 10.4, *)
let kCGImageSourceTypeIdentifierHint: CFString

/** Keys for the options dictionary of "CGImageSourceCopyPropertiesAtIndex"
 ** and "CGImageSourceCreateImageAtIndex". **/
@available(OSX 10.4, *)
let kCGImageSourceShouldCache: CFString
@available(OSX 10.9, *)
let kCGImageSourceShouldCacheImmediately: CFString
@available(OSX 10.4, *)
let kCGImageSourceShouldAllowFloat: CFString
@available(OSX 10.4, *)
let kCGImageSourceCreateThumbnailFromImageIfAbsent: CFString
@available(OSX 10.4, *)
let kCGImageSourceCreateThumbnailFromImageAlways: CFString
@available(OSX 10.4, *)
let kCGImageSourceThumbnailMaxPixelSize: CFString
@available(OSX 10.4, *)
let kCGImageSourceCreateThumbnailWithTransform: CFString
@available(OSX 10.11, *)
let kCGImageSourceSubsampleFactor: CFString
@available(OSX 10.4, *)
func CGImageSourceGetTypeID() -> CFTypeID
@available(OSX 10.4, *)
func CGImageSourceCopyTypeIdentifiers() -> CFArray
@available(OSX 10.4, *)
func CGImageSourceCreateWithDataProvider(provider: CGDataProvider, _ options: CFDictionary?) -> CGImageSource?
@available(OSX 10.4, *)
func CGImageSourceCreateWithData(data: CFData, _ options: CFDictionary?) -> CGImageSource?
@available(OSX 10.4, *)
func CGImageSourceCreateWithURL(url: CFURL, _ options: CFDictionary?) -> CGImageSource?
@available(OSX 10.4, *)
func CGImageSourceGetType(isrc: CGImageSource) -> CFString?
@available(OSX 10.4, *)
func CGImageSourceGetCount(isrc: CGImageSource) -> Int
@available(OSX 10.4, *)
func CGImageSourceCopyProperties(isrc: CGImageSource, _ options: CFDictionary?) -> CFDictionary?
@available(OSX 10.4, *)
func CGImageSourceCopyPropertiesAtIndex(isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CFDictionary?
@available(OSX 10.8, *)
func CGImageSourceCopyMetadataAtIndex(isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CGImageMetadata?
@available(OSX 10.4, *)
func CGImageSourceCreateImageAtIndex(isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CGImage?
@available(OSX 10.9, *)
func CGImageSourceRemoveCacheAtIndex(isrc: CGImageSource, _ index: Int)
@available(OSX 10.4, *)
func CGImageSourceCreateThumbnailAtIndex(isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CGImage?
@available(OSX 10.4, *)
func CGImageSourceCreateIncremental(options: CFDictionary?) -> CGImageSource
@available(OSX 10.4, *)
func CGImageSourceUpdateData(isrc: CGImageSource, _ data: CFData, _ final: Bool)
@available(OSX 10.4, *)
func CGImageSourceUpdateDataProvider(isrc: CGImageSource, _ provider: CGDataProvider, _ final: Bool)
@available(OSX 10.4, *)
func CGImageSourceGetStatus(isrc: CGImageSource) -> CGImageSourceStatus
@available(OSX 10.4, *)
func CGImageSourceGetStatusAtIndex(isrc: CGImageSource, _ index: Int) -> CGImageSourceStatus
var IIO_HAS_IOSURFACE: Int32 { get }
