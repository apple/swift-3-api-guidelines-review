
var kLSMMapOutOfState: Int { get }
var kLSMMapNoSuchCategory: Int { get }
var kLSMMapWriteError: Int { get }
var kLSMMapBadPath: Int { get }
var kLSMMapBadCluster: Int { get }
var kLSMMapOverflow: Int { get }

/*! @typedef LSMMapRef
 *	
 * An opaque Core Foundation type representing an LSM map (mutable).
 */
class LSMMap {
}

/*! @typedef LSMMapRef
 *	
 * An opaque Core Foundation type representing an LSM map (mutable).
 */
typealias LSMMapRef = LSMMap

/*! @function LSMMapGetTypeID
 *
 * Returns the Core Foundation type identifier for LSM maps.
 */
func LSMMapGetTypeID() -> CFTypeID

/*! @typedef LSMTextRef
 *	
 * An opaque Core Foundation type representing an input text (mutable).
 */
class LSMText {
}

/*! @typedef LSMTextRef
 *	
 * An opaque Core Foundation type representing an input text (mutable).
 */
typealias LSMTextRef = LSMText

/*! @function LSMTextGetTypeID
 *
 * Returns the Core Foundation type identifier for LSM texts.
 */
func LSMTextGetTypeID() -> CFTypeID

/*! @typedef LSMResult
 *
 * An opaque Core Foundation type representing the result of a lookup (immutable).
 */
typealias LSMResultRef = LSMResult

/*! @typedef LSMResult
 *
 * An opaque Core Foundation type representing the result of a lookup (immutable).
 */
class LSMResult {
}

/*! @function LSMResultGetTypeID
 *
 * Returns the Core Foundation type identifier for LSM results.
 */
func LSMResultGetTypeID() -> CFTypeID

/*! @typedef LSMCategory
 *
 * An integral type representing a category.
 */
typealias LSMCategory = UInt32

/*! @function LSMMapCreate
 *
 *	Creates a new LSM map. Call CFRelease to dispose.
 */
func LSMMapCreate(alloc: CFAllocator!, _ flags: CFOptionFlags) -> Unmanaged<LSMMap>!
var kLSMMapPairs: Int { get }
var kLSMMapTriplets: Int { get }
var kLSMMapHashText: Int { get }

/*! @function LSMMapSetProperties
 *
 *	Set a dictionary of properties for the map. LSM makes its own copy
 *	of the properties, there's no need to retain them past this call.
 */
func LSMMapSetProperties(mapref: LSMMap!, _ properties: CFDictionary!)

/*! @function LSMMapGetProperties
 *
 *	Get a dictionary of properties for the map. LSM retains ownership of
 *	this dictionary, do not release it.
 */
func LSMMapGetProperties(mapref: LSMMap!) -> Unmanaged<CFDictionary>!
var kLSMAlgorithmKey: String { get }
var kLSMAlgorithmDense: String { get }
var kLSMAlgorithmSparse: String { get }
var kLSMPrecisionKey: String { get }
var kLSMPrecisionFloat: String { get }
var kLSMPrecisionDouble: String { get }
var kLSMDimensionKey: String { get }
var kLSMIterationsKey: String { get }
var kLSMSweepAgeKey: String { get }
var kLSMSweepCutoffKey: String { get }

/*! @function LSMMapStartTraining
 *
 *	Puts the map into training mode, preparing it for the addition of more
 *	categories and/or texts. This function will be somewhat expensive, as it
 *	requires substantial data structure reorganization.
 */
func LSMMapStartTraining(mapref: LSMMap!) -> OSStatus

/*! @function LSMMapAddCategory
 *
 *	Adds another category and returns its category identifier.
 */
func LSMMapAddCategory(mapref: LSMMap!) -> LSMCategory

/*! @function LSMMapGetCategoryCount
 *
 * Returns the number of categories in the map.
 */
func LSMMapGetCategoryCount(mapref: LSMMap!) -> CFIndex

/*! @function LSMMapSetStopWords
 *
 *	The specified words will be omitted from all classification efforts.
 *	Needs to be called before any other texts are created.
 *	The textref is no longer needed after this call.
 */
func LSMMapSetStopWords(mapref: LSMMap!, _ textref: LSMText!) -> OSStatus

/*! @function LSMMapAddText
 *
 *	Adds a training text to the given category. 
 *	The textref is no longer needed after this call.
 */
func LSMMapAddText(mapref: LSMMap!, _ textref: LSMText!, _ category: LSMCategory) -> OSStatus

/*! @function LSMMapAddTextWithWeight
 *
 *	Adds a training text to the given category with a weight different from 1.
 *      The weight may be negative, but global counts will be pinned to 0.
 *	The textref is no longer needed after this call.
 */
func LSMMapAddTextWithWeight(mapref: LSMMap!, _ textref: LSMText!, _ category: LSMCategory, _ weight: Float) -> OSStatus

/*! @function LSMMapCompile
 *
 *	Compiles the map into executable form and puts it into mapping mode,
 *	preparing it for the classification of texts. This function is
 *	computationally expensive.
 */
func LSMMapCompile(mapref: LSMMap!) -> OSStatus

/*! @function LSMMapCreateClusters
 *
 *  Compute a set of clusters grouping similar categories or words.
 *  If subset is non-NULL, only perform clustering on the categories 
 *  or words listed.
 */
func LSMMapCreateClusters(alloc: CFAllocator!, _ mapref: LSMMap!, _ subset: CFArray!, _ numClusters: CFIndex, _ flags: CFOptionFlags) -> Unmanaged<CFArray>!
var kLSMClusterCategories: Int { get }
var kLSMClusterWords: Int { get }
var kLSMClusterTokens: Int { get }
var kLSMClusterKMeans: Int { get }
var kLSMClusterAgglomerative: Int { get }

/*! @function LSMMapApplyClusters
 *
 *  Group categories or words (tokens) into the specified sets of clusters.
 */
func LSMMapApplyClusters(mapref: LSMMap!, _ clusters: CFArray!) -> OSStatus

/*! @function LSMResultCreate
 *
 *	Returns, in decreasing order of likelihood, the categories or words
 *	that best match when a text is mapped into a map.
 */
func LSMResultCreate(alloc: CFAllocator!, _ mapref: LSMMap!, _ textref: LSMText!, _ numResults: CFIndex, _ flags: CFOptionFlags) -> Unmanaged<LSMResult>!
var kLSMResultBestWords: Int { get }

/*! @function LSMResultGetCount
 * 	Returns the number of results.
 */
func LSMResultGetCount(result: LSMResult!) -> CFIndex

/*! @function LSMResultGetCategory
 * 	Returns the category of the n-th best (zero based) result.
 */
func LSMResultGetCategory(result: LSMResult!, _ n: CFIndex) -> LSMCategory

/*! @function LSMResultGetScore
 * 	Returns the likelihood of the n-th best (zero based) result. 
 * A nan score often indicates that the category does not contain
 * any token.
 */
func LSMResultGetScore(result: LSMResult!, _ n: CFIndex) -> Float

/*! @function LSMResultCopyWord
 *
 * Returns the word for the n-th best (zero based) result.
 */
func LSMResultCopyWord(result: LSMResult!, _ n: CFIndex) -> Unmanaged<CFString>!

/*! @function LSMResultCopyToken
 *
 * Returns the token for the n-th best (zero based) result.
 */
func LSMResultCopyToken(mapref: LSMResult!, _ n: CFIndex) -> Unmanaged<CFData>!

/*! @function LSMResultCopyWordCluster
 *
 * Returns the cluster of words for the n-th best (zero based) result.
 */
func LSMResultCopyWordCluster(result: LSMResult!, _ n: CFIndex) -> Unmanaged<CFArray>!

/*! @function LSMResultCopyTokenCluster
 *
 * Returns the cluster of tokens for the n-th best (zero based) result.
 */
func LSMResultCopyTokenCluster(mapref: LSMResult!, _ n: CFIndex) -> Unmanaged<CFArray>!

/*! @function LSMMapWriteToURL
 *
 *	Compiles the map if necessary and then stores it into the given file.
 */
func LSMMapWriteToURL(mapref: LSMMap!, _ file: CFURL!, _ flags: CFOptionFlags) -> OSStatus

/*! @function LSMMapCreateFromURL
 *
 *	Loads a map from a given file.
 */
func LSMMapCreateFromURL(alloc: CFAllocator!, _ file: CFURL!, _ flags: CFOptionFlags) -> Unmanaged<LSMMap>!
var kLSMMapDiscardCounts: Int { get }
var kLSMMapLoadMutable: Int { get }

/*! @function LSMMapWriteToStream
 *	
 * 	Writes information about a map and/or text to a stream in text form
 */
func LSMMapWriteToStream(mapref: LSMMap!, _ textref: LSMText!, _ stream: CFWriteStream!, _ options: CFOptionFlags) -> OSStatus

/*! @function LSMTextCreate
 *
 *	Creates a new text.
 */
func LSMTextCreate(alloc: CFAllocator!, _ mapref: LSMMap!) -> Unmanaged<LSMText>!

/*! @function LSMTextAddWord
 *
 *	Adds a word to the text. The order of words is significant if the map
 *	uses pairs or triplets, and the count of words is always significant.
 */
func LSMTextAddWord(textref: LSMText!, _ word: CFString!) -> OSStatus

/*! @function LSMTextAddWords
 *
 *	Breaks a string into words using the locale provided and adds the words 
 *  to the text. 
 */
func LSMTextAddWords(textref: LSMText!, _ words: CFString!, _ locale: CFLocale!, _ flags: CFOptionFlags) -> OSStatus
var kLSMTextPreserveCase: Int { get }
var kLSMTextPreserveAcronyms: Int { get }
var kLSMTextApplySpamHeuristics: Int { get }

/*! @function LSMTextAddToken
 *
 *	Adds an arbitrary binary token to the text. The order of tokens is 
 *	significant if the map uses pairs or triplets, and the count of 
 *	tokens is always significant.
 */
func LSMTextAddToken(textref: LSMText!, _ token: CFData!) -> OSStatus
