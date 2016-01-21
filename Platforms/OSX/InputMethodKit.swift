
var kIMKSingleColumnScrollingCandidatePanel: Int { get }
var kIMKScrollingGridCandidatePanel: Int { get }
var kIMKSingleRowSteppingCandidatePanel: Int { get }
typealias IMKCandidatePanelType = Int
var kIMKMain: Int { get }
var kIMKAnnotation: Int { get }
var kIMKSubList: Int { get }
typealias IMKStyleType = Int
var kIMKLocateCandidatesAboveHint: Int { get }
var kIMKLocateCandidatesBelowHint: Int { get }
var kIMKLocateCandidatesLeftHint: Int { get }
var kIMKLocateCandidatesRightHint: Int { get }
typealias IMKCandidatesLocationHint = Int

/*!
 @const		IMKCandidatesOpacityAttributeName
 @abstract	The level of opacity.
 
 @discussion Value must be a NSNumber with a value from 0 to 1.
 */
let IMKCandidatesOpacityAttributeName: String

/*! 
 @const		IMKCandidatesSendServerKeyEventFirst
 @abstract	Control when key events are sent to a candidate window.
 
 @discussion	Value is a NSNumber with a boolean value of NO (keyevents are sent to the candidate window first) or YES (keyevents are sent to the IMKInputController first). Note this is only applicable when a candidate window is displayed.  The default behavior is to send the key event to the candidate window first.  Then if it is not processed there to send it on to the input controller.
 */
let IMKCandidatesSendServerKeyEventFirst: String
class IMKCandidates : NSResponder {

  /*!
   @method     
   @abstract   Default initializer for the class.
   @discussion When an input method allocates an IMKCandidate object is should initialize that object by calling this method passing the IMKServer that will manage the candiates and the initial panel type.
   */
  init!(server: IMKServer!, panelType: IMKCandidatePanelType)
  init!(server: IMKServer!, panelType: IMKCandidatePanelType, styleType style: IMKStyleType)

  /*!
   @method     
   @abstract   Return the panel type.
   */
  func panelType() -> IMKCandidatePanelType

  /*!
   @method     
   @abstract   Change the panel type.
   */
  func setPanelType(panelType: IMKCandidatePanelType)

  /*!
   @method     
   @abstract   If a candidate window type has been provided show the candidate window. The caller provides a location hint that is used to position the window.
   
   Input method's call this method when it is appropriate during text conversion to display a list of candidates.  
   */
  func show(locationHint: IMKCandidatesLocationHint)

  /*!
   @method     
   @abstract   If the candidate window is visible hide it.
   */
  func hide()

  /*!
   @method     
   @abstract   Utility method returns YES if a candidate display is visble.
   */
  func isVisible() -> Bool

  /*!
   @method     
   @abstract   Call this method to update the candidates displayed in the candidate window.
   @discussion Calling this method will result in a call being made to the IMKInputController's candidates method. Note that the candidate list will be updated, but the window's visible state will not change.  That is to say if the window is hidden it will remain hidden and vice versa.
   */
  func updateCandidates()

  /*!
   @method     
   @abstract   Displays an annotation window whose contents are the annotationString.
   @discussion An annotation is additional text that explains or somehow adds to the candidate string in a candidate window. Annotations are displayed in a small borderless window that is aligned with the current candidate panel. An input method calls showAnnotation: when the method [IMKInputController candidateSelectionChanged:] is called, and the candidateString has annotations.  
   */
  func showAnnotation(annotationString: AttributedString!)
  func showSublist(candidates: [AnyObject]!, subListDelegate delegate: AnyObject!)

  /*!
   @method     
   @abstract   Returns the current selection.
   @discussion Call this to get the string that the user has selected.  Will return nil if no selection or window is not visible.  
   */
  func selectedCandidateString() -> AttributedString!

  /*!
   @method
   @abstract	Positions the top-left corner of the candidate window’s frame rectangle at a given point in screen coordinates. 
   */
  func setCandidateFrameTopLeft(point: Point)
  func candidateFrame() -> Rect

  /*!
   @method     
   @abstract   Set the selection keys for the candidates.
   @discussion Selection keys are an array of NSNumbers where each NSNumber is a virtual key codes that the controller will map to characters that are displayed either across the top of the candidates, if the candidates are laid out horizontally, or along the left edge of the candidates if they are aligned vertically.  
   
   The number of selection keys determines how many candidates are displayed per page.  For example, if you
   passed an array of 4 key codes then 4 candidates are displayed per page.  If you passed 11 key codes then 11 candidates would be displayed.
   
   By default the key codes are mapped using the keyboard layout whose source id is com.apple.keylayout.US.  The default layout can be replaced by calling
   setSelectionKeysKeylayout (see below).
   
   The default selection keys are the digits 1 through 9 or in terms of key codes: 18-21,23,22, 26, 28, 25.
   */
  func setSelectionKeys(keyCodes: [AnyObject]!)

  /*!
   @method     
   @abstract   Returns an NSArray of NSNumbers where each NSNumber is a virtual key code.
   
   The NSArray is an autorelease object. Do not release unless it is first retained.
   */
  func selectionKeys() -> [AnyObject]!

  /*!
   @method     
   @abstract   Sets the key layout that is used to map virtual key codes to characters.
   */
  func setSelectionKeysKeylayout(layout: TISInputSource!)

  /*!
   @method     
   @abstract   Returns the key layout that is used to map virtual key codes for the selection keys.  By default this is the key layout whose source id is com.apple.keylayout.US.
   
   This is an autorelease object.  Retain it if you need to keep it.
   */
  func selectionKeysKeylayout() -> Unmanaged<TISInputSource>!

  /*!
   @method     
   @abstract   Sets the "style" attributes for the candidates window.  The keys for the attributes dictionary and the values are:
   
   NSFontAttributeName (value = NSFont)  Setting the font attribute sets the font that is used to draw Candidates.  It does not effect the selection keys which are always drawn in the same font.  Note that to set the font size you should use this key/value pair.
   
   IMKCandidatesOpacityAttributeName (value = NSNumber with a float value between 0 and 1).  Sets the opacity level to transparent (0.0) to completely opaque (1.0). The default opacity is 1.0.  This constant is declared above.
   
   NSForegroundColorAttributeName (value = NSColor) Sets the text color used for the candidate text.  By default it is black.
   
   NSBackgroundColorDocumentAttribute (value = NSColor).  Set the background color that is drawn behind the candidate text.
   
   IMKCandidatesSendServerKeyEventFirst (value = NSNumber).  NO (default) gives the candidate window first chance at key events.  YES causes events to first be routed to the current IMKInputController.  In that case, if the event is not handled it will then be sent to the candidate window.
   */
  func setAttributes(attributes: [Object : AnyObject]!)

  /*!
   @method     
   @abstract   Returns the attributes dictionary.
   */
  func attributes() -> [Object : AnyObject]!

  /*!
   @method     
   @abstract   Setting the dismissesAutomatically flag determines what happens to displayed candidates when the return key or enter key is typed.  
   @discussion By default if a return or enter key is typed the candidates are dismissed and a candidateSelected: message is sent to the input controller.  However if  setDismissesAutomatically is passed a NO flag  the candidate display will not be dismissed when a return or enter key is typed.  The input controller will still be sent the candidatesSelected: message, but, as stated, the candidates display will not be dismissed.  
   
   Setting this flag to NO lets an input method process text input while keeping a dynamically changing candidates display in view throughout the text input process.
   
   When you set this to NO the candidate display will still be hidden when when a session deactivates.
   */
  func setDismissesAutomatically(flag: Bool)

  /*!
   @method     
   @abstract   Returns the dismissesAutomatically flag.
   */
  func dismissesAutomatically() -> Bool

  /*!
   @method
   @abstract	Returns the currently selected candidate identifer.
   @discussion Attempts to determine the identifier for the selected candidate.  If there is no selection the return value will be NSNotFound.
   */
  @available(OSX 10.7, *)
  func selectedCandidate() -> Int

  /*!
   @method
   @abstract	If the current selection has a child IMKCandidates object that will be shown.
   @discussion If there is a failure in showing the child this method will throw an exception.
  */
  @available(OSX 10.7, *)
  func showChild()

  /*!
   @method
   @abstract	If the current selection has a child IMKCandidates that is being shown hide it.
   @discussion Typically a client will not need to call this as IMKCandidates automatically hides and shows children.
   */
  @available(OSX 10.7, *)
  func hideChild()

  /*!
   @method
   @abstract	Attach an IMKCandidates object to the specified selection.
   @discussion The IMKCandidate can be a sublist or an annotation.
   */
  @available(OSX 10.7, *)
  func attachChild(child: IMKCandidates!, toCandidate candidateIdentifier: Int, type theType: IMKStyleType)

  /*!
   @method
   @abstract	Detach the IMKCandidates object attached to candidate
   */
  @available(OSX 10.7, *)
  func detachChild(candidateIdentifier: Int)

  /*!
   @method
   @abstract	Set the candidates data directly rather than supplying data via [IMKInputContoller candidates:].
   @discussion The elements of the array can be strings or attributed strings.
   */
  @available(OSX 10.7, *)
  func setCandidateData(candidatesArray: [AnyObject]!)

  /*!
   @method
   @abstract	Select the candidate whose identifier matches the identifier parameter.
   @result YES if the candidateIdentifier is valid an the selection was made.  NO if canidateIdentifier is invalid or it was not possible make the selection.
   @param An identifier for a candidate.  You can obtain an identifier by mapping a candidate to an identifier via the [IMKCandidates candidateStringIdentifier:].
   */
  @available(OSX 10.7, *)
  func selectCandidateWithIdentifier(candidateIdentifier: Int) -> Bool
  func selectCandidate(candidateIdentifier: Int)

  /*!
   @method
   @abstract	Show the candidate window.
   @discussion This simply shows the candidates.  No effort is made to position the candidate.  The caller should move the candidate window to an appropriate location prior to showing.
   */
  @available(OSX 10.7, *)
  func show()

  /*!
   @method
   @abstract	Map a candidateString to an identifier.
   @discussion Beginning with MacOS 10.7 candidates strings are mapped internally to an unique identifier of type NSInteger.  Using identifiers to identify a particular candidate is the first stage of enabling data types other than NSString and NSAttributedString for containing the contents of a candidate.
   */
  @available(OSX 10.7, *)
  func candidateStringIdentifier(candidateString: AnyObject!) -> Int

  /*!
   @method
   @abstract	 Returns the candidate identifier for a given line in the candidate window display.
   @discussion Maps the lineNumber to a candidate identifier.  Line number 0 corresponds to the candidate in the cell currently in the first (top for vertical) line of the candidate window.  This is convienient for input methods that support selecting a candidate by a number key. Line Number values depend on the column arrangement of your candidate.  If you are displaying a single column candidate window than lines that have been scrolled out of view will have negative values.  For other a single row grid line numbers will correspond to the cell's position in the row (i.e. the first cell will be 0, the second 1, etc).  Finally for a grid the line numbers correspond to the grid row.  If the line number is invalid NSNotFound is returned.
   @param lineNumber a number representing a cells position in the candidate window.
   */
  @available(OSX 10.7, *)
  func candidateIdentifierAtLineNumber(lineNumber: Int) -> Int

  /*!
   @method
   @abstract	Returns the line number for a given CandidateID.
   @result  The line number.  NSNotFound if the candidateID is invalid.
   @param  candidateIdentifier - A valid identifier for a candidate.
   @discussion If the cell that contains the candidate is at the top line of the candidate window the return value will be 0.
   */
  @available(OSX 10.7, *)
  func lineNumberForCandidateWithIdentifier(candidateIdentifier: Int) -> Int

  /*!
   @method
   @abstract	Clears the current selection.
   */
  @available(OSX 10.7, *)
  func clearSelection()
  init()
  init?(coder: Coder)
}

/*!
	@const		kIMKCommandMenuItem
	@abstract	An NSMenuItem in the infoDictionary passed to menu item actions.

	@discussion Use as a key to find the NSMenuItem in the infoDictionary.
*/
let kIMKCommandMenuItemName: String

/*!
	@const		kIMKCommandClient
	@abstract	A client object that conforms to the IMKInputText and NSObject protocols.

	@discussion Use as a key to find the client in the infoDictionary.
*/
let kIMKCommandClientName: String

/*!
    @protocol    IMKServerInput
    @abstract    Informal protocol which is used to send user events to an input method.
    @discussion  This is not a formal protocol by choice.  The reason for that is that there are three ways to receive events here. An input method should choose one of those ways and  implement the appropriate methods.  
                 
                 Here are the three approaches:
                 
                 1.  Support keybinding.  
                        In this approach the system takes each keydown and trys to map the keydown to an action method that the input method has implemented.  If an action is found the system calls didCommandBySelector:client:.  If no action method is found inputText:client: is called.  An input method choosing this approach should implement
                        -(BOOL)inputText:(NSString*)string client:(id)sender;
                        -(BOOL)didCommandBySelector:(SEL)aSelector client:(id)sender;
                        
                2. Receive all key events without the keybinding, but do "unpack" the relevant text data.
                        Key events are broken down into the Unicodes, the key code that generated them, and modifier flags.  This data is then sent to the input method's inputText:key:modifiers:client: method.  For this approach implement:
                        -(BOOL)inputText:(NSString*)string key:(NSInteger)keyCode modifiers:(NSUInteger)flags client:(id)sender;
                        
                3. Receive events directly from the Text Services Manager as NSEvent objects.  For this approach implement:
                        -(BOOL)handleEvent:(NSEvent*)event client:(id)sender;
*/
extension Object {

  /*!
      @method     
      @abstract   Receive the Unicodes, the key code that generated them and modifier flags.  
      @discussion Input methods implementing this method should return YES if the input was excepted, and NO if not excepted.
  */
  class func inputText(string: String!, key keyCode: Int, modifiers flags: Int, client sender: AnyObject!) -> Bool

  /*!
      @method     
      @abstract   Receive the Unicodes, the key code that generated them and modifier flags.  
      @discussion Input methods implementing this method should return YES if the input was excepted, and NO if not excepted.
  */
  func inputText(string: String!, key keyCode: Int, modifiers flags: Int, client sender: AnyObject!) -> Bool

  /*!
      @method     
      @abstract   Each keydown that does not map to an action method is delivered to the input method as an NSString.  
      @discussion If the input string is not excepted the input method should return NO.  When text is accepted return YES.  Input methods should implement this method when they are using keybinding (i.e. have implemented didCommandBySelector:client:).
  */
  class func inputText(string: String!, client sender: AnyObject!) -> Bool

  /*!
      @method     
      @abstract   Each keydown that does not map to an action method is delivered to the input method as an NSString.  
      @discussion If the input string is not excepted the input method should return NO.  When text is accepted return YES.  Input methods should implement this method when they are using keybinding (i.e. have implemented didCommandBySelector:client:).
  */
  func inputText(string: String!, client sender: AnyObject!) -> Bool

  /*!
      @method     
      @abstract   Receive all keydown and mouse events as an NSEvent (i.e. the event is simply forwarded onto the input method).
      @discussion Return YES if the event was handled. NO if not handled.
  */
  class func handle(event: NSEvent!, client sender: AnyObject!) -> Bool

  /*!
      @method     
      @abstract   Receive all keydown and mouse events as an NSEvent (i.e. the event is simply forwarded onto the input method).
      @discussion Return YES if the event was handled. NO if not handled.
  */
  func handle(event: NSEvent!, client sender: AnyObject!) -> Bool

  /*!
      @method     
      @abstract   Called when system binds a keyDown event to an action method.  
      @discussion This method is designed to return YES if the command is handled and NO if the command is not handled. It is called to process a command that was generated by user action such as typing certain keys or mousing down. It is necessary for this method to return YES or NO so the  event can be passed through to the client if it is not handled.  The selector can be an action specified in the input method's dictionary of keys and actions (i.e. an action specific to the input method) or one of the NSResponder action methods such as insertNewline: or deleteBackward:.  By definition such action methods do not return a value.  For that reason if you implement this method you should test if it is appropriate to call the action method before calling it since calling the action method is agreeing to handle the command
  				
  			For example.  Suppose you have implemented a version of insertNewline: that terminates the conversion session and sends the fully converted text to the client.  However, if you conversion buffer is empty you want the application to receive the return key that triggered the call to insertNewline:.  In that case when didCommandBySelector:client: is called you should test your buffer before calling your implementation of insertNewline:.  If the buffer is empty you would return NO indicating that the return key should be passed on to the application.  If the buffer is not empty you would call insertNewline: and then return YES as the result of didCommandBySelector:client:.
  */
  class func didCommandBy(aSelector: Selector, client sender: AnyObject!) -> Bool

  /*!
      @method     
      @abstract   Called when system binds a keyDown event to an action method.  
      @discussion This method is designed to return YES if the command is handled and NO if the command is not handled. It is called to process a command that was generated by user action such as typing certain keys or mousing down. It is necessary for this method to return YES or NO so the  event can be passed through to the client if it is not handled.  The selector can be an action specified in the input method's dictionary of keys and actions (i.e. an action specific to the input method) or one of the NSResponder action methods such as insertNewline: or deleteBackward:.  By definition such action methods do not return a value.  For that reason if you implement this method you should test if it is appropriate to call the action method before calling it since calling the action method is agreeing to handle the command
  				
  			For example.  Suppose you have implemented a version of insertNewline: that terminates the conversion session and sends the fully converted text to the client.  However, if you conversion buffer is empty you want the application to receive the return key that triggered the call to insertNewline:.  In that case when didCommandBySelector:client: is called you should test your buffer before calling your implementation of insertNewline:.  If the buffer is empty you would return NO indicating that the return key should be passed on to the application.  If the buffer is not empty you would call insertNewline: and then return YES as the result of didCommandBySelector:client:.
  */
  func didCommandBy(aSelector: Selector, client sender: AnyObject!) -> Bool

  /*!
      @method     
      @abstract   Return the current composed string.  This may be an NSString or NSAttributedString. 
      
      			A composed string refers to the buffer that an input method typically maintains to mirror the text contained in the active inline area.  It is called the composed string to reflect the fact that the input method composed the string by converting the characters input by the user.  In addition, using the term composed string makes it easier to differentiate between an input method's buffer and the text in the active inline area that the user sees. The returned object should be an autoreleased object.
  */
  class func composedString(sender: AnyObject!) -> AnyObject!

  /*!
      @method     
      @abstract   Return the current composed string.  This may be an NSString or NSAttributedString. 
      
      			A composed string refers to the buffer that an input method typically maintains to mirror the text contained in the active inline area.  It is called the composed string to reflect the fact that the input method composed the string by converting the characters input by the user.  In addition, using the term composed string makes it easier to differentiate between an input method's buffer and the text in the active inline area that the user sees. The returned object should be an autoreleased object.
  */
  func composedString(sender: AnyObject!) -> AnyObject!

  /*!
      @method     
      @abstract   Return the a string consisting of the original pre-composition unicodes.
      @discussion If an input method stores the original input text it should return that text here.  The return value is an attributed string so that input method's can potentially restore changes they may have made to the font, etc.  The returned object should be an autoreleased object.
  */
  class func originalString(sender: AnyObject!) -> AttributedString!

  /*!
      @method     
      @abstract   Return the a string consisting of the original pre-composition unicodes.
      @discussion If an input method stores the original input text it should return that text here.  The return value is an attributed string so that input method's can potentially restore changes they may have made to the font, etc.  The returned object should be an autoreleased object.
  */
  func originalString(sender: AnyObject!) -> AttributedString!

  /*!
      @method     
      @abstract   Called to inform the controller that the composition should be committed.
      @discussion If an input method implements this method it will be called when the client wishes to end the composition session immediately. A typical response would be to call the client's insertText method and then clean up any per-session buffers and variables.  After receiving this message an input method should consider the given composition session finished.
  */
  class func commitComposition(sender: AnyObject!)

  /*!
      @method     
      @abstract   Called to inform the controller that the composition should be committed.
      @discussion If an input method implements this method it will be called when the client wishes to end the composition session immediately. A typical response would be to call the client's insertText method and then clean up any per-session buffers and variables.  After receiving this message an input method should consider the given composition session finished.
  */
  func commitComposition(sender: AnyObject!)

  /*!
      @method     
      @abstract   Called to get an array of candidates.
      @discussion An input method would look up its currently composed string and return a list of candidate strings that that string might map to. The returned NSArray should be an autoreleased object.
      
  				
  */
  class func candidates(sender: AnyObject!) -> [AnyObject]!

  /*!
      @method     
      @abstract   Called to get an array of candidates.
      @discussion An input method would look up its currently composed string and return a list of candidate strings that that string might map to. The returned NSArray should be an autoreleased object.
      
  				
  */
  func candidates(sender: AnyObject!) -> [AnyObject]!
}

/*!
    @protocol    IMKStateSetting
    @abstract    This protocol sets or accesses values that indicate the state of an input method.
*/
protocol IMKStateSetting {

  /*!
      @method     
      @abstract   Activates the input method.
  */
  func activateServer(sender: AnyObject!)

  /*!
      @method     
      @abstract   Deactivate the input method.
  */
  func deactivateServer(sender: AnyObject!)

  /*!
      @method     
      @abstract   Return a object value whose key is tag.  The returned object should be autoreleased.
  */
  func valueForTag(tag: Int, client sender: AnyObject!) -> AnyObject!

  /*!
      @method     
      @abstract   Set the tagged value to the object specified by value.
  */
  func setValue(value: AnyObject!, forTag tag: Int, client sender: AnyObject!)

  /*!
      @method     
      @abstract   This is called to obtain the input method's modes dictionary.  
      @discussion Typically this is called to to build the text input menu.  By calling the input method rather than reading the modes from the info.plist the input method can dynamically modify he modes supported. The returned NSDictionary should be an autoreleased object.
  */
  @available(OSX 10.0, *)
  func modes(sender: AnyObject!) -> [Object : AnyObject]!

  /*!
      @method      
      @abstract   Returns an unsigned integer containing a union of event masks (see NSEvent.h)
      @discussion A client will check with an input method to see if an event is supported by calling the method.  The default implementation returns NSKeyDownMask. 
  				If your input method only handles key downs the InputMethodKit provides default mouse handling.  The default mousedown handling behavior is as follows: if there is an active composition area and the user clicks in the text but outside of the composition area the InputMethodKit will send your input method a commitComposition: message. Note that this will only happen for input methods that return just NSKeyDownMask (i.e. the default value) as the result of recognizedEvents.
  */
  func recognizedEvents(sender: AnyObject!) -> Int

  /*!
      @method      
      @abstract   Looks for a nib file containing a windowController class and a preferences utility. If found the panel is displayed.
      @discussion To use this method include a menu item whose action is showPreferences: in your input method's menu.  If that is done the method will be called automatically when a user selects the item in the Text Input Menu.  
      The default implementation looks for a nib file called preferences.nib.  If found a windowController class is allocated and the nib is loaded.  You can provide a custom windowController class by naming the class in your input methods info.plist file.  To do that provide a string value that names the custom class with a key of InputMethodServerPreferencesWindowControllerClass.  
  */
  func showPreferences(sender: AnyObject!)
}

/*!
    @protocol    IMKMouseHandling
    @abstract    This protocol receives mouse events.
*/
protocol IMKMouseHandling {

  /*!
      @method
      
      @abstract   Sends a mouseDown to an input method.
      @discussion A mouse down event happened at given index within the sender� text storage, at the given point, and with modifier keys identified in flags. Return YES if handled.  Set keepTracking to YES if you want to receive subsequent mouseMoved and mouseUp events.
  */
  func mouseDownOnCharacterIndex(index: Int, coordinate point: Point, withModifier flags: Int, continueTracking keepTracking: UnsafeMutablePointer<ObjCBool>, client sender: AnyObject!) -> Bool

  /*!
      @method
      
      @abstract   Sends a mouseUp to an input method.
      @discussion A mouse up event happened at given index within the sender text view� text storage, at the given point, with modifier keys identified in flags. Return YES if handled.
  */
  func mouseUpOnCharacterIndex(index: Int, coordinate point: Point, withModifier flags: Int, client sender: AnyObject!) -> Bool

  /*!
      @method
      
      @abstract   Passes a mouseMoved event to the input method.
      @discussion A mouse moved event happened at given index within the sender text view� text storage, at the given point, with modifier keys identified in flags. Return YES if handled.
  */
  func mouseMovedOnCharacterIndex(index: Int, coordinate point: Point, withModifier flags: Int, client sender: AnyObject!) -> Bool
}

/*!
    @class      IMKInputController
    @abstract    The basic class that controls input on the input method side.
    @discussion  IMKInputController implements fully implements the protocols defined above.  Typically a developer does not override this class, but provides a delegate object that implements the methods that developer is interested in.  The IMKInputController versions of the protocol methods check if the delegate object implements a method, and  call the delegate version if it exists. 
    
    			The IMKServer class which is allocated in an input method's main function creates a controller class for each input session created by a client application. Therefore for every input session there is a corresponding IMKInputController.
*/
class IMKInputController : Object, IMKStateSetting, IMKMouseHandling {

  /*!
      @method     
      @abstract   Initializes the controller class setting the delegate.
  				
  				The inputClient parameter is the client side object that will be sending messages to the controller via the IMKServer.  The client object always conforms to the IMKTextInput protocol. 
  				
  				Methods in the protocols that are implemented by the delegate object always include a client parameter.  Methods in the IMKInputController class do not take a client.  This is because the client is stored as an ivar in the IMKInputController.
  */
  init!(server: IMKServer!, delegate: AnyObject!, client inputClient: AnyObject!)

  /*!
      @method     
      @abstract   Called to inform the controller that the composition has changed.
      @discussion This method will call the protocol method composedString: to obtain the current composition. The current composition will be sent to the client by a call to the method setMarkedText:
  */
  func updateComposition()

  /*!
      @method     
      @abstract   Stops the current composition and replaces marked text with the original text.
      @discussion Calls the method originalString to obtain the original text and sends that to the client via a call to IMKInputSession protocol method insertText:
  */
  func cancelComposition()

  /*!
      @method    
      @abstract   Called to obtain a dictionary of text attributes.
      @discussion The default implementation returns an empty dictionary.  You should override this method if your input method wants to provide font or glyphInformation. The returned object should be an autoreleased object.
  */
  func compositionAttributesAt(range: NSRange) -> MutableDictionary!

  /*!
      @method    
      @abstract   Returns where the selection should be placed inside markedText.
      @discussion This method is called by updateComposition: to obtain the selection range for markedText.  The default implementation sets the selection range at the end of the marked text.
  */
  func selectionRange() -> NSRange

  /*!
      @method     
      @abstract   Returns the range in the client document that text should replace.
      @discussion This method is called by updateComposition to obtain the range in the client's document where markedText should be placed.  The default implementation returns an NSRange whose location and length are NSNotFound.  That indicates that the marked text should be placed at the current insertion point.  Input methods that wish to insert marked text somewhere other than at the current insertion point should override this method.  
                  
                  An example of an input method that might override this method would be one replaced words with synonyms.  That input method would watch for certain words and when one of those words was seen it would be replaced by marked text that was a synonym of the word.
  */
  func replacementRange() -> NSRange

  /*!
      @method     
      @abstract   Returns a dictionary of text attributes that can be used to mark a range of an attributed string that is going to be sent to a client.
      @discussion This utility function can be called by input methods to mark each range (i.e. clause ) of marked text.  The style parameter should be one of the following values: kTSMHiliteSelectedRawText, kTSMHiliteConvertedText or kTSMHiliteSelectedConvertedText. See AERegistry.h for the definition of these values.
                  
                  The default implementation begins by calling compositionAttributesAtRange: to obtain extra attributes that an input method wants to include such as font or  glyph information.  Then the appropriate underline and underline color information is added to the attributes dictionary for the style parameter.
                  
                  Finally the style value is added as dictionary value.  The key for the style value is NSMarkedClauseSegment. The returned object should be an autoreleased object.
  */
  func markForStyle(style: Int, at range: NSRange) -> [Object : AnyObject]!

  /*!
      @method     
      @abstract   Called to pass commands that are not generated as part of the text input.
      @discussion The default implementation checks if the controller object (i.e. self) responds to the selector.  If that is true the message performSelector:withObject  is sent to the controller class.  The object parameter in that case is the infoDictionary.
      
      This method is called when a user selects a command item from the text input menu.  To support this an input method merely needs to provide actions for each menu item that will be placed in the menu.
      
      i.e. -(void)menuAction:(id)sender
      
      Note that the sender in this instance will be the infoDictionary.  The dictionary contains two values:
      
    	kIMKCommandMenuItemName			NSMenuItem  -- the NSMenuItem that was selected
    	kIMKCommandClientName			id<IMKTextInput, NSObject> - the current client
  */
  func doCommandBy(aSelector: Selector, command infoDictionary: [Object : AnyObject]!)

  /*!
      @method     
      @abstract   Called to inform an input method that any visible UI should be closed.
  */
  func hidePalettes()

  /*!
      @method     
      @abstract   Returns a menu of input method specific commands.
      @discussion This method is called whenever the menu needs to be drawn so that input methods can update the menu to reflect their current state. The returned NSMenu is an autoreleased object.
  */
  func menu() -> NSMenu!

  /*!
      @method     - (id)delegate;
      @abstract   Returns the input controller's delegate object. The returned id is an autoreleased object.
  */
  func delegate() -> AnyObject!

  /*!
      @method     
      @abstract   Set the input controller's delegate object.
  */
  func setDelegate(newDelegate: AnyObject!)

  /*!
      @method     
      @abstract   Return the server object which is managing this input controller. The returned IMKServer is an autoreleased object.
  */
  func server() -> IMKServer!

  /*!
      @method     
      @abstract   Returns this controller's client object.
      @discussion The client object will conform to the IMKTextInput protocol. The returned object is an autoreleased object.
  */
  func client() -> protocol<IMKTextInput, ObjectProtocol>!

  /*!
   @method     
   @abstract   Called to notify an input controller that it is about to be closed.
  */
  @available(OSX 10.7, *)
  func inputControllerWillClose()

  /*!
      @method     
      @abstract   Called when a user has selected a annotation in a candidate window.
      @discussion When a candidate window is displayed and the user selects an annotation the selected annotation is sent to the input controller via this method.  The currently selected candidateString is also sent to the input method.
  */
  func annotationSelected(annotationString: AttributedString!, forCandidate candidateString: AttributedString!)

  /*!
      @method     
      @abstract   Informs an input controller that the current candidate selection in the candidate window has changed.
      @discussion The candidate parameter is the candidate string that the selection changed to.  Note this method is called to indicate that the user is moving around in the candidate window.  The candidate object is not a final selection.
  */
  func candidateSelectionChanged(candidateString: AttributedString!)

  /*!
      @method     
      @abstract   Called when a new candidate has been finally selected.
      @discussion The candidate parameter is the users final choice from the candidate window. The candidate window will have been closed before this method is called.
  */
  func candidateSelected(candidateString: AttributedString!)
  init()

  /*!
      @method     
      @abstract   Activates the input method.
  */
  func activateServer(sender: AnyObject!)

  /*!
      @method     
      @abstract   Deactivate the input method.
  */
  func deactivateServer(sender: AnyObject!)

  /*!
      @method     
      @abstract   Return a object value whose key is tag.  The returned object should be autoreleased.
  */
  func valueForTag(tag: Int, client sender: AnyObject!) -> AnyObject!

  /*!
      @method     
      @abstract   Set the tagged value to the object specified by value.
  */
  func setValue(value: AnyObject!, forTag tag: Int, client sender: AnyObject!)

  /*!
      @method     
      @abstract   This is called to obtain the input method's modes dictionary.  
      @discussion Typically this is called to to build the text input menu.  By calling the input method rather than reading the modes from the info.plist the input method can dynamically modify he modes supported. The returned NSDictionary should be an autoreleased object.
  */
  @available(OSX 10.0, *)
  func modes(sender: AnyObject!) -> [Object : AnyObject]!

  /*!
      @method      
      @abstract   Returns an unsigned integer containing a union of event masks (see NSEvent.h)
      @discussion A client will check with an input method to see if an event is supported by calling the method.  The default implementation returns NSKeyDownMask. 
  				If your input method only handles key downs the InputMethodKit provides default mouse handling.  The default mousedown handling behavior is as follows: if there is an active composition area and the user clicks in the text but outside of the composition area the InputMethodKit will send your input method a commitComposition: message. Note that this will only happen for input methods that return just NSKeyDownMask (i.e. the default value) as the result of recognizedEvents.
  */
  func recognizedEvents(sender: AnyObject!) -> Int

  /*!
      @method      
      @abstract   Looks for a nib file containing a windowController class and a preferences utility. If found the panel is displayed.
      @discussion To use this method include a menu item whose action is showPreferences: in your input method's menu.  If that is done the method will be called automatically when a user selects the item in the Text Input Menu.  
      The default implementation looks for a nib file called preferences.nib.  If found a windowController class is allocated and the nib is loaded.  You can provide a custom windowController class by naming the class in your input methods info.plist file.  To do that provide a string value that names the custom class with a key of InputMethodServerPreferencesWindowControllerClass.  
  */
  func showPreferences(sender: AnyObject!)

  /*!
      @method
      
      @abstract   Sends a mouseDown to an input method.
      @discussion A mouse down event happened at given index within the sender� text storage, at the given point, and with modifier keys identified in flags. Return YES if handled.  Set keepTracking to YES if you want to receive subsequent mouseMoved and mouseUp events.
  */
  func mouseDownOnCharacterIndex(index: Int, coordinate point: Point, withModifier flags: Int, continueTracking keepTracking: UnsafeMutablePointer<ObjCBool>, client sender: AnyObject!) -> Bool

  /*!
      @method
      
      @abstract   Sends a mouseUp to an input method.
      @discussion A mouse up event happened at given index within the sender text view� text storage, at the given point, with modifier keys identified in flags. Return YES if handled.
  */
  func mouseUpOnCharacterIndex(index: Int, coordinate point: Point, withModifier flags: Int, client sender: AnyObject!) -> Bool

  /*!
      @method
      
      @abstract   Passes a mouseMoved event to the input method.
      @discussion A mouse moved event happened at given index within the sender text view� text storage, at the given point, with modifier keys identified in flags. Return YES if handled.
  */
  func mouseMovedOnCharacterIndex(index: Int, coordinate point: Point, withModifier flags: Int, client sender: AnyObject!) -> Bool
}

/*!
    @const      IMKModeDictionary
    @abstract   Key used to obtain an input method's mode dictionary from the input method's bundle.
*/
let IMKModeDictionary: String

/*!
    @const      IMKControllerClass
    @abstract   Key used to find an input method's input controller class name from the input method's bundle.
*/
let IMKControllerClass: String

/*!
    @const      IMKDelegateClass
    @abstract   Key used to find an input method's delegate class name from the input method's bundle.
*/
let IMKDelegateClass: String

/*!
    @class      IMKServer
    @abstract   This class manages input sessions.
    @discussion An input method should create one and only one of these objects.  An IMKServer creates an NSConnection that can be connected to by input clients.  After a connection has been made an IMKServer manages communication between the client and the input method.  For each communication session the IMKServer will create an IMKInputController class as well as delegate classes for that controller.  Each controller object then serves as a proxy for the input session on the client side.  This means that input methods do not have to concern themselves with managing client sessions.  A given controller will only receive communication from a single session.
    
    			IMKServer's also will manage a basic candidate window for an input method.  See IMKCandidates.h to understand how to create a candidate window and associate the candidate window with the IMKServer object.
*/
class IMKServer : Object {

  /*!
      @method     
      @abstract   Create a IMKServer from information in the bundle's Info.plist.
      @discussion This method will look into the info.plist for a controller class and delegate class.  The class names will be loaded, no classes will be instantiated.  Additionally, an NSConnection will be allocated and registered with the name parameter.
                  
  */
  init!(name: String!, bundleIdentifier: String!)

  /*!
      @method    
      @abstract   Creates an IMKServer using the parameters.
      @discussion This method creates an IMKServer object without attempting to examine the bundle instead the class names provided as parameters are used to create input controller objects and delegate objects.
                  
  */
  init!(name: String!, controllerClass controllerClassID: AnyClass!, delegateClass delegateClassID: AnyClass!)

  /*!
      @method     
      @abstract   Returns an NSBundle for the input method.
      @discussion If the IMKServer contains a bundle identifier the NSBundle is created from that.  Otherwise, the bundle  is created for the main bundle.  The returned NSBundle is an autoreleased object.
  */
  func bundle() -> Bundle!

  /*!
   @method     
   @abstract   Call this before terminating a palette IM.
   @discussion Palettes need to be able to terminate.  When this method is called the IMKServer will notify each client of the palette that
  			 the palette is about to terminate.  The palette can terminate safely if a value of YES is returned.  If the caller of this method is not
  			 an input method of type palette an exception will be thrown.
   
  			 If the method returns NO the palette should not terminate.  
   */
  @available(OSX 10.7, *)
  func paletteWillTerminate() -> Bool

  /*!
   @method     
   @abstract   Returns a BOOL indicating whether or not the last key press was a dead key.
   */
  @available(OSX 10.7, *)
  func lastKeyEventWasDeadKey() -> Bool
  init()
}
