

/*!
    @protocol   IMServicePlugInChatRoomSupport

    @discussion Implementing this protocol on your service plug-in's principal class indicates that your
                service supports chat-room-based messaging.

                If implementing this protocol, you must also include "IMServiceCapabilityChatRoomSupport"
                in the "IMServiceCapabilities" key in the Info.plist of your service plug-in.

                IMServicePlugInChatRoomSupport and IMServiceApplicationChatRoomSupport are
                paired protocols.  If your service plug-in's principal class implements the
                IMServicePlugInChatRoomSupport protocol, the IMServiceApplication object handed to your
                IMServicePlugIn will implement the IMServiceApplicationChatRoomSupport protocol.
*/
protocol IMServicePlugInChatRoomSupport {

  /*!
      @method     joinChatRoom:
  
      @discussion Messages calls this method on the IMServicePlugIn instance when the user attempts
                  to join a chat room.
                  
                  To indicate success, -plugInDidJoinChatRoom: should be called by the service plug-in on the
                  service application, followed by -handles:didJoinChatRoom: to indicate the current
                  chat room member handles.
  
                  To indicate failure, -plugInDidLeaveChatRoom:error: should be called by the service plug-in
                  with a non-nil error.
                  
                  This method may also be called by Messages when the user clicks "Accept" to a chat
                  room invitation.
                  
      @param      roomName  The name of the room which the user wishes to join.
  */
  func joinChatRoom(roomName: String!)

  /*!
      @method     leaveChatRoom:
  
      @discussion Messages calls this method on the IMServicePlugIn instance when the user closes
                  the chat room window, or when the service disconnects.
                  
                  The service plug-in should attempt to cleanly leave the chat room, and then
                  call -plugInDidLeaveChatRoom:error: on the service application once the room is left.
  
      @param      roomName  The name of the room which the user wishes to leave.
  */
  func leaveChatRoom(roomName: String!)

  /*!
      @method     inviteHandles:toChatRoom:withMessage:
  
      @discussion Messages calls this method on the IMServicePlugIn instance when the user 
                  invites handles to a specific chatRoom
  
      @param      handles   The handles to invite.
      @param      roomName  The name of the room which the user wishes to leave
      @param      message   The invitation message
  */
  func inviteHandles(handles: [AnyObject]!, toChatRoom roomName: String!, withMessage message: IMServicePlugInMessage!)

  /*!
      @method     sendMessage:toChatRoom:
  
      @discussion Messages calls this method on the IMServicePlugIn instance when the user sends
                  a message to a chat room.
  
                  The service plug-in should use -plugInDidSendMessage:toChatRoom:error: to report 
                  delivery of the message.
                  
                  Some instant messaging services do not report message delivery status of
                  messages sent to chat rooms.  Instead, the message is received in a similar
                  fashion to other incoming chat room messages.  In this case, the service
                  plug-in may choose to reflect successful message delievery status via
                  a call to -plugInDidReceiveMessage:forChatRoom:fromHandle:, with the handle
                  parameter set to the handle name.
  
      @param      message  The message to send.
      @param      roomName The recipient chat room.
  */
  func send(message: IMServicePlugInMessage!, toChatRoom roomName: String!)

  /*!
      @method     declineChatRoomInvitation:
  
      @discussion Messages calls this method on the IMServicePlugIn instance when the user clicks
                  the "Decline" button of an incoming chat room invitation.
                  
                  This method is always called in response to Messages receiving
                  -plugInDidReceiveInvitation:forChatRoom:fromHandle: from the service plug-in.
  
      @param      roomName  The name of the room which the user has declined.
  */
  func declineChatRoomInvitation(roomName: String!)
}
protocol IMServiceApplicationChatRoomSupport : IMServiceApplication {

  /*!
      @method     plugInDidReceiveInvitation:forChatRoom:fromHandle:
  
      @discussion When the IMServicePlugIn instance calls this method on the service application, Messages
                  displays an invitation window from the specified handle for the chat room.
  
                  If the user clicks "Accept" on the window, Messages then calls -joinChatRoom: on the
                  service plug-in.  If the user clicks "Decline", Messages calls -declineChatRoomInvitation:
                  instead.
  
      @param      invitation An invitation message.  If nil, Messages uses a default invitation message.
      @param      roomName   The name of the chat room.
      @param      handle     The handle of the inviter.
  */
  func plugInDidReceiveInvitation(invitation: IMServicePlugInMessage!, forChatRoom roomName: String!, fromHandle handle: String!)

  /*!
      @method     plugInDidReceiveMessage:forChatRoom:fromHandle:
  
      @discussion When the IMServicePlugIn instance calls this method on the service application, Messages
                  appends the sender and message to the transcript for the specified chat room.
                   
                  This call may be used to indicate successful delivery of a message sent via
                  -sendMessage:toChatRoom:
  
      @param      message    The message.
      @param      roomName   The name of the chat room.
      @param      handle     The sender of the message.
  */
  func plugInDidReceive(message: IMServicePlugInMessage!, forChatRoom roomName: String!, fromHandle handle: String!)

  /*!
      @method     plugInDidReceiveNotice:forChatRoom:
  
      @discussion When the IMServicePlugIn instance calls this method on the service application, Messages
                  appends an information message to the transcript for the specified chat room.
  
                  Since the IMServicePlugIn API does not support chat room properties such as topic,
                  moderator status, or chat room settings; clients may use this method to display
                  additional information which would otherwise be hidden to the user.
  
      @param      notice    An informational message to be displayed.
      @param      roomName  The name of the chat room.
  */
  func plugInDidReceiveNotice(notice: String!, forChatRoom roomName: String!)

  /*!
      @method     plugInDidSendMessage:toChatRoom:error:
  
      @discussion When the IMServicePlugIn instance calls this method on the service application, Messages
                  appends the message to the transcript for the specified chat room.
                   
                  This call may be used to indicate successful delivery of a message sent via
                  -sendMessage:toChatRoom:
  
      @param      message    The message.
      @param      roomName   The name of the chat room.
      @param      error      An error, if one occurred during message delivery.
  */
  func plugInDidSend(message: IMServicePlugInMessage!, toChatRoom roomName: String!, error: NSError!)

  /*!
      @method     plugInDidJoinChatRoom:
  
      @discussion When the IMServicePlugIn instance calls this method on the service application, Messages
                  indicates to the user that the specified chat room is now joined and ready to receive
                  messages.
                   
                  This call should be used in response to joinChatRoom: being called on the service plug-in.
  
      @param      roomName   The name of the chat room
  */
  func plugInDidJoinChatRoom(roomName: String!)

  /*!
      @method     plugInDidLeaveChatRoom:error:
  
      @discussion The IMServicePlugIn should call this method on the service application to indiciate that
                  a chat room has been successfully left, and that the user may attempt to re-enter that
                  room in the future.
  
                  This call may also be used in response to joinChatRoom: to indicate that an error occurred
                  while joining the room.
  
      @param      roomName   The name of the chat room.
      @param      error      An error, if any, which caused the user to be removed from the chat room,
                             or prevented the user from joining the chat room.
  */
  func plugInDidLeaveChatRoom(roomName: String!, error: NSError!)

  /*!
      @method     handles:didJoinChatRoom:
  
      @discussion The IMServicePlugIn should call this method on the service application to indiciate that
                  a handle, or multiple handles, have joined the chat room.
  
                  This method may also be used after plugInDidJoinChatRoom: to report the initial list
                  of chat room members.
  
      @param      handles   An NSArray of NSString objects, corresponding to the handles which joined the room.
      @param      roomName  The name of the chat room.
  */
  func handles(handles: [AnyObject]!, didJoinChatRoom roomName: String!)

  /*!
      @method     handles:didLeaveChatRoom:
  
      @discussion The IMServicePlugIn should call this method on the service application to indiciate that
                  a handle, or multiple handles, have left or been removed from the chat room.
  
      @param      handles   An NSArray of NSString objects, corresponding to the handles which left the room.
      @param      roomName  The name of the chat room.
  */
  func handles(handles: [AnyObject]!, didLeaveChatRoom roomName: String!)
}

/*!
    @protocol   IMServicePlugInGroupListSupport

    @discussion Implementing this protocol on your service plug-in's principal class indicates that your
                service supports a group list.

                If implementing this protocol, you must also include "IMServiceCapabilityGroupListSupport"
                in the "IMServiceCapabilities" key in the Info.plist of your service plug-in.

                IMServicePlugInGroupListSupport and IMServiceApplicationGroupListSupport are
                paired protocols.  If your service plug-in's principal class implements the
                IMServicePlugInGroupListSupport protocol, the IMServiceApplication object handed to your
                IMServicePlugIn will implement the IMServiceApplicationGroupListSupport protocol.
*/
protocol IMServicePlugInGroupListSupport {

  /*!
      @method     requestGroupList
  
      @discussion Messages calls this method on the IMServicePlugIn when the user
                  finishes modifying the group list.
                  
                  After a -requestGroupList is requested, the service plug-in should
                  respond with -plugInDidUpdateGroupList:error: with the current "truth"
                  of the group list.
                  
                  If any operations from IMServicePlugInGroupListEditingSupport
                  are still pending, -plugInDidUpdateGroupList:error: should not be
                  called until they finish.
  */
  func requestGroupList()
}

/*!
    @protocol   IMServicePlugInGroupListEditingSupport

    @discussion Implementing this protocol on your service plug-in's principal class indicates that your
                service supports editing the group list.  It requires that you also implement the
                IMServicePlugInGroupListSupport protocol.
                
                If implementing this protocol, you must also include "IMServiceCapabilityGroupListEditingSupport"
                in the "IMServiceCapabilities" key in the Info.plist of your service plug-in.
*/
protocol IMServicePlugInGroupListEditingSupport : IMServicePlugInGroupListSupport {

  /*!
      @method     addGroups:
  
      @discussion Messages calls this method when the user had added one or 
                  more groups to the group list.
  
      @param      groupNames  An array of NSString objects, corresponding to the
                              names of the added groups
  */
  func addGroups(groupNames: [AnyObject]!)

  /*!
      @method     removeGroups:
  
      @discussion Messages calls this method when the user had removed one or
                  more groups from the group list.
  
      @param      groupNames  An array of NSString objects, corresponding to the
                              names of the removed groups
  */
  func removeGroups(groupNames: [AnyObject]!)

  /*!
      @method     renameGroup:toGroup:
  
      @discussion Messages calls this method when the user renames a group.
  
      @param      oldGroupName  The former name of the group
      @param      newGroupName  The new name of the group
  */
  func renameGroup(oldGroupName: String!, toGroup newGroupName: String!)

  /*!
      @method     addHandles:toGroup:
  
      @discussion Messages calls this method when the user adds member handles to a group.
  
                  In the event that the user moves a member from one group to
                  another group, Messages will first call this method for the
                  destination group, and then call -removeHandles:fromGroup:
                  for the source group.
  
      @param      handles    The added handles
      @param      groupName  The name of the group
  */
  func addHandles(handles: [AnyObject]!, toGroup groupName: String!)

  /*!
      @method     removeHandles:fromGroup:
  
      @discussion Messages calls this method when the adds member handles to a group.
  
                  In the event that the user moves a member from one group to
                  another group, Messages will first call -addHandles:toGroup: 
                  for the destination group, and then call this method for
                  the source group.
  
      @param      handles    The removed handles
      @param      groupName  The name of the group
  */
  func removeHandles(handles: [AnyObject]!, fromGroup groupName: String!)
}

/*!
    @protocol   IMServicePlugInGroupListOrderingSupport

    @discussion Implementing this protocol on your service plug-in's principal class indicates
                that your service supports ordered group list.  It requires that you also implement the
                IMServicePlugInGroupListSupport protocol.

                If implementing this protocol, you must also include "IMServiceCapabilityGroupListOrderingSupport"
                in the "IMServiceCapabilities" key in the Info.plist of your service plug-in.
*/
protocol IMServicePlugInGroupListOrderingSupport : IMServicePlugInGroupListSupport {

  /*!
      @method     reorderGroups:
  
      @discussion Messages calls this method when the user modifies the order of groups.
  
      @param      groupNames  An NSArray of NSStrings, corresponding to group names in the new order
  */
  func reorderGroups(groupNames: [AnyObject]!)

  /*!
      @method     reorderGroups:
  
      @discussion Messages calls this method when the user modifies the order of handles in a specific group.
      
      @param      handles    An NSArray of NSStrings, corresponding to handles in the new order
      @param      groupName  The containing group
  */
  func reorderHandles(handles: [AnyObject]!, inGroup groupName: String!)
}

/*!
    @protocol   IMServicePlugInGroupListAuthorizationSupport

    @discussion Implementing this protocol on your service plug-in's principal class indicates that your
                service requires authorization when adding a handle to the group list.

                If implementing this protocol, you must also include "IMServiceCapabilityGroupListAuthorizationSupport"
                in the "IMServiceCapabilities" key in the Info.plist of your service plug-in.

                IMServicePlugInGroupListAuthorizationSupport and IMServiceApplicationGroupListAuthorizationSupport are
                paired protocols.  If your service plug-in's principal class implements the
                IMServicePlugInGroupListAuthorizationSupport protocol, the IMServiceApplication object handed to your
                IMServicePlugIn will implement the IMServiceApplicationGroupListAuthorizationSupport protocol.
*/
protocol IMServicePlugInGroupListAuthorizationSupport : IMServicePlugInGroupListSupport {

  /*!
      @method     sendAuthorizationRequestToHandle:
  
      @discussion When Messages adds a handle to the group list on a service which requires authorization,
                  it will call -sendAuthorizationRequestToHandle: for each handle after 
                  -addHandles:toGroup:
  
      @param      handle     The handle from which to request authorization
  */
  func sendAuthorizationRequestToHandle(handle: String!)

  /*!
      @method     acceptAuthorizationRequestFromHandle:
  
      @discussion When the user clicks the "Accept" button on a pending authorization request.  Messages
                  calls this method on the service plug-in
  
      @param      handle     The handle to authorize
  */
  func acceptAuthorizationRequestFromHandle(handle: String!)

  /*!
      @method     declineAuthorizationRequestFromHandle:
  
      @discussion When the user clicks the "Decline" button on a pending authorization request.  Messages
                  calls this method on the service plug-in
  
      @param      handle     The handle to not authorize
  */
  func declineAuthorizationRequestFromHandle(handle: String!)
}

/*!
    @protocol   IMServicePlugInGroupListHandlePictureSupport

    @discussion Implementing this protocol on your service plug-in's principal class indicates that your
                service supports handle pictures.

                If implementing this protocol, you must also include "IMServiceCapabilityGroupListHandlePictureSupport"
                in the "IMServiceCapabilities" key in the Info.plist of your service plug-in.

                Messages uses a caching mechanism for dealing with user pictures.  A unique identifier
                should be provided/calculated for each buddy picture and pass up to the application
                via the IMHandlePropertyPictureIdentifier handle property via:
                id<IMServiceApplicationGroupListSupport> plugInDidUpdateProperties:ofHandle:]
                
                If Messages does not have the user picture cached, it will request it via:
                id<IMServicePlugInGroupListHandlePictureSupport> requestHandlePictureWithIdentifier:]
                
                The service plug-in then fetches the image data and responds with:
                id<IMServiceApplicationGroupListSupport> plugInDidUpdateProperties:ofHandle:]
                with both the IMHandlePropertyPictureIdentifier and IMHandlePropertyPictureData
                properties set
*/
protocol IMServicePlugInGroupListHandlePictureSupport : NSObjectProtocol {

  /*!
      @method     requestPictureForHandle:withIdentifier:
  
      @discussion Messages calls this method on the IMServicePlugIn instance when it needs the handle picture data
                  for the specified identifier.
  
                  Once the service plug-in obtains this data, it should call
                  -[id<IMServiceApplication> plugInDidUpdateProperties:ofHandle:] 
  				with the IMHandlePropertyPictureData property set
  				
  				Further calls to -plugInDidUpdateProperties:ofHandle: must NOT include the 
  				IMHandlePropertyPictureData key.
  
      @param      handle      The handle to fetch
      @param      identifier  A unqiue handle picture identifier
  */
  func requestPictureForHandle(handle: String!, withIdentifier identifier: String!)
}

/*!
    @protocol   IMServiceApplicationGroupListSupport

    @discussion This protocol is used to pass the group list information up to Messages
                Messages, and to provide response callbacks to IMServicePlugInInstantMessagingSupport 
                methods.
                
                IMServicePlugInGroupListSupport and IMServiceApplicationGroupListSupport are
                paired protocols.  If your service plug-in's principal class implements the
                IMServicePlugInGroupListSupport protocol, the IMServiceApplication object handed to your
                IMServicePlugIn will implement the IMServiceApplicationGroupListSupport protocol.
*/
protocol IMServiceApplicationGroupListSupport : IMServiceApplication {

  /*!
      @method     plug-inDidUpdateGroupList:error:
  
      @discussion The IMServicePlugIn instance should call this method on Messages in response to 
                  a downwards -requestGroupList request (which will be called after each user
                  modification of the group list).
  
                  The current "truth" state of the group list should be passed up.
  
                  To indicate that a requested modification operation failed, pass up an error
                  in addition to the truth state.
                  
      @param      groups  An array of NSDictionary objects, representing the service's group list.
  
                          Each dictionary should contain the following keys:
  
                          IMGroupListNameKey        - The name of the group
                          IMGroupListPermissionsKey - An NSNumber of IMGroupListPermissions
                          IMGroupListHandlesKey     - An NSArray containing NSStrings, corresponding to the handles in the group
                  
      @param      error   An error for any requested group list modification operation, if one occurred
  */
  func plugInDidUpdateGroupList(groups: [AnyObject]!, error: NSError!)
}

/*!
    @protocol   IMServiceApplicationGroupListAuthorizationSupport

    @discussion This protocol is used to pass authorization requests from the server up to Messages.
                
                IMServicePlugInGroupListAuthorizationSupport and IMServiceApplicationGroupListAuthorizationSupport are
                paired protocols.  If your service plug-in's principal class implements the
                IMServicePlugInGroupListAuthorizationSupport protocol, the IMServiceApplication object handed to your
                IMServicePlugIn will implement the IMServiceApplicationGroupListAuthorizationSupport protocol.
*/
protocol IMServiceApplicationGroupListAuthorizationSupport : IMServiceApplicationGroupListSupport {

  /*!
      @method     plugInDidReceiveAuthorizationRequestFromHandle:
  
  	@discussion When the IMServicePlugIn instance calls this method on the service application, Messages
  	            displays an authorization request window from the specified handle.
  
  	            If the user clicks "Accept" on the window, Messages then calls -acceptAuthorizationRequestFromHandle:
  	 			on the service plug-in.
  				
  				If the user clicks "Decline", Messages instead calls -declineAuthorizationRequestFromHandle:
  	            on the service plug-in.
  
  	@param      handle   The handle requesting authorization
  */
  func plugInDidReceiveAuthorizationRequestFromHandle(handle: String!)
}

/*!
    @protocol   IMServicePlugInInstantMessagingSupport

    @discussion Implementing this protocol on your service plug-in's principal class indicates that your
                service supports one-to-one instant messaging.

                If implementing this protocol, you must also include "IMServiceCapabilityInstantMessagingSupport"
                in the "IMServiceCapabilities" key in the Info.plist of your service plug-in.
                
                If your service supports delivery of messages to offline users, you must also include
                "IMServiceCapabilityOfflineMessagingSupport" in the "IMServiceCapabilities" key in the Info.plist
                of your service plug-in.
 
                IMServicePlugInInstantMessagingSupport and IMServiceApplicationInstantMessagingSupport are
                paired protocols.  If your service plug-in's principal class implements the
                IMServicePlugInInstantMessagingSupport protocol, the IMServiceApplication object handed to your
                IMServicePlugIn will implement the IMServiceApplicationInstantMessagingSupport protocol.
*/
protocol IMServicePlugInInstantMessagingSupport {

  /*!
      @method     userDidStartTypingToHandle:
  
      @discussion Messages calls this method on the IMServicePlugIn instance when the user starts
                  typing a message to a specific handle from the input line.
  
      @param      handle  The handle to which the user has started typing.
  */
  func userDidStartTypingToHandle(handle: String!)

  /*!
      @method     userDidStopTypingToHandle:
  
      @discussion Messages calls this method on the IMServicePlugIn instance if the user clears the input line
                  after typing instead of sending the message.
  
      @param      handle  The handle to which the user started typing, but then cleared the input line.
  */
  func userDidStopTypingToHandle(handle: String!)

  /*!
      @method     sendMessage:toHandle:
  
      @discussion Messages calls this method on the IMServicePlugIn instance when the user sends a message
                  to a specific handle.
                  
                  To indicate successful delivery of the message (and have it show up in Messages), the
                  IMServicePlugIn should reflect the message via
                  
                  -[id<IMServiceApplicationInstantMessagingSupport> plug-inDidSendMessage:toHandle:error:]
                  
                  with a nil error.  A non-nil error indicates that the message could not be sent.
  
      @param      message  The message to send
      @param      handle   The receipient of the message
  */
  func send(message: IMServicePlugInMessage!, toHandle handle: String!)
}

/*!
    @protocol   IMServiceApplicationInstantMessagingSupport

    @discussion This protocol is used to pass incoming instant messaging events from the server up to
                Messages, and to provide response callbacks to IMServicePlugInInstantMessagingSupport 
                methods.
                
                IMServicePlugInInstantMessagingSupport and IMServiceApplicationInstantMessagingSupport are
                paired protocols.  If your service plug-in's principal class implements the
                IMServicePlugInInstantMessagingSupport protocol, the IMServiceApplication object handed to your
                IMServicePlugIn will implement the IMServiceApplicationInstantMessagingSupport protocol.
*/
protocol IMServiceApplicationInstantMessagingSupport {

  /*!
      @method     handleDidStartTyping:
  
      @discussion When the IMServicePlugIn instance calls this method on the service application, Messages displays
                  the "thought bubble" for the specified handle.  
                  
                  A call to -handleDidStopTyping: will clear the thought bubble.
                  
                  A call to -plugInDidReceiveMessage:fromHandle: will replace the thought bubble with an actual message.
  
      @param      handle   The handle that started typing
  */
  func handleDidStartTyping(handle: String!)

  /*!
      @method     handleDidStopTyping:
  
      @discussion When the IMServicePlugIn instance calls this method on the service application, Messages removes
                  any thought bubble for the specified handle.  
  
      @param      handle   The handle that stopped typing
  */
  func handleDidStopTyping(handle: String!)

  /*!
      @method     plugInDidReceiveMessage:fromHandle:
  
      @discussion When the IMServicePlugIn instance calls this method on the service application, Messages appends
                  the message to the active chat with the handle.
                  
                  If no chat is present, Messages displays the message in a notifier window.
  
      @param      message  The incoming message
      @param      handle   The sender of the message
  */
  func plugInDidReceive(message: IMServicePlugInMessage!, fromHandle handle: String!)

  /*!
      @method     plugInDidSendMessage:toHandle:error:
  
      @discussion When the IMServicePlugIn instance calls this method on the service application with a nil
                  error, Messages appends the message to the active chat with the handle.
      
                  If an error is non-nil, Messages displays an error informing the user that the message
                  could not be delivered.
                  
                  This method should be called once in response to every:
                  -[id<IMServicePlugInInstantMessageSupport> sendMessage:toHandle:]
      
      @param      message  The incoming message
      @param      handle   The sender of the message
      @param      error    An error that occurred during message delivery
  */
  func plugInDidSend(message: IMServicePlugInMessage!, toHandle handle: String!, error: NSError!)
}
class IMServicePlugInMessage : NSObject, NSCoding, NSCopying {
  class func servicePlugInMessageWithContent(content: NSAttributedString!) -> AnyObject!
  init!(content: NSAttributedString!)
  class func servicePlugInMessageWithContent(content: NSAttributedString!, date: NSDate!) -> AnyObject!
  init!(content: NSAttributedString!, date: NSDate!)
  var guid: String! { get }
  @NSCopying var content: NSAttributedString!
  @NSCopying var date: NSDate!
  init()
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
    @protocol   IMServicePlugInPresenceSupport

    @discussion Implementing this protocol on your service plug-in's principal class indicates that your
                service supports presence information.
                
                If implementing this protocol, you must also include "IMServiceCapabilityPresenceSupport"
                in the "IMServiceCapabilities" key in the Info.plist of your service plug-in.

                If implementing this protocol, you may optionally include "IMServiceCapabilityPresenceInvisibilitySupport"
                in the "IMServiceCapabilities" key in the Info.plist of your service plug-in.  Doing so indicates that
                your service supports a value of YES for the IMSessionPropertyIsInvisible key of
                updateSessionProperties:.
*/
protocol IMServicePlugInPresenceSupport {

  /*!
      @method     updateSessionProperties:
  
      @discussion Messages calls this method on the IMServicePlugIn instance when the 
                  the user's availability, status message, idle state, or picture
                  changes.
  
      @param      properties  A dictionary, corresponding to the modified session properties
      
                  Available keys include:
                  IMSessionPropertyAvailability   - the user's availablility
                  IMSessionPropertyStatusMessage  - the user's status message
                  IMSessionPropertyPictureData    - the user's icon
                  IMSessionPropertyIdleDate       - the time of the last user activity
                  IMSessionPropertyIsInvisible    - If YES, the user wishes to appear offline to other users
  */
  @available(OSX 10.0, *)
  func updateSessionProperties(properties: [NSObject : AnyObject]!)
}

/*!
    @protocol   IMServicePlugIn

    @discussion The principal class for each service plug-in must implement the IMServicePlugIn protocol.
    
                Messages messages your service plug-in instance to perform basic tasks such as
                logging in, logging out, and updating account settings.
*/
protocol IMServicePlugIn : NSObjectProtocol {

  /*!
      @method     initWithServiceApplication:
  
      @discussion Messages calls this method to instantiate your service plug-in.
                  
                  At instantiation time, you are handed an IMServiceApplication
                  which implements the corresponding protocols for each 
                  optional protocol that your IMServicePlugIn implements.
  
      @param      serviceApplication  Your service application interface, used
                  to communicate upwards to Messages.
  */
  init!(serviceApplication: IMServiceApplication!)

  /*!
      @method     updateAccountSettings:
  
      @discussion Messages calls this method on the IMServicePlugIn prior to login
                  with the user's account settings.
  
      @param      accountSettings  An NSDictionary containing the account settings.
      
                  Common keys:
                  IMServerHostAccountSetting     NSString - the server hostname
                  IMServerPortAccountSetting     NSNumber - the server port number
                  IMLoginHandleAccountSetting    NSString - the login handle to use
                  IMPasswordAccountSetting       NSString - the password
                  IMUsesSSLAccountSetting        NSNumber - (YES = use SSL, NO = do not use SSL)
  */
  @available(OSX 10.0, *)
  func updateAccountSettings(accountSettings: [NSObject : AnyObject]!)

  /*!
      @method     login
  
      @discussion Messages calls this method on the IMServicePlugIn instance when the user 
                  wishes to log into your service.
  
                  Messages will show your service in the "Connecting" state until
                  -plugInDidLogIn is called on the service application.
  */
  func login()

  /*!
      @method     logout
  
      @discussion Messages calls this method on the IMServicePlugIn instance when the user 
                  wishes to disconnect from your service.
  
                  Messages will show your service in the "Disconnecting" state until
                  -plugInDidLogOutWithError: is called on the service application.
  */
  func logout()
}

/*!
    @protocol   IMServiceApplication

    @discussion The IMServiceApplication is the base protocol your service plug-in uses to communicate
                information back to Messages.
                
                An object implementing the IMServiceApplication protocol is handed to your service
                plug-in in the -initWithServiceApplication: method.
*/
protocol IMServiceApplication : NSObjectProtocol {

  /*!
      @method     plugInDidLogIn
  
      @discussion When the IMServicePlugIn instance calls this method on the service application, Messages
                  changes the connection state from "Connecting" to "Connected"
  */
  func plugInDidLogIn()

  /*!
      @method     plugInDidLogOutWithError:
  
      @discussion When the IMServicePlugIn instance calls this method on the service application, Messages
                  changes the connection state to "Disconnected".
           
      @param      error      An error, if any, that caused the disconnection.  If plugInDidLogOutWithError:
                             is called in response to a requested -logout, error should be nil
      @param      reconnect  If set to YES, Messages will attempt to reconnect to the service when the
                             IMAccountSettingServerHost associated with the account becomes reachable.
                             reconnect should only be set to YES when a network error causes a log out.
  */
  func plugInDidLogOutWithError(error: NSError!, reconnect: Bool)

  /*!
       @method     plugInDidFailToAuthenticate
       
       @discussion When the IMServicePlugIn instance calls this method on the service application during
                   the login process, Messages will re-request the user name and password. It will then call
                   updateAccountSettings: with the new settings or logout if the user cancels.
  */
  func plugInDidFailToAuthenticate()

  /*!
      @method     plugInDidUpdateProperties:ofHandle:
  
      @discussion The IMServicePlugIn instance should call this method on Messages in response to 
                  a change in one or more of a handle's properties.
  
                  In addition, this method should be called once for each handle in the group 
                  list after the first call to -plugInDidUpdateGroupList:error:
  
                  Note:
                  Messages may discard the properties of handles which are neither in the group list nor have
                  an active conversation.  For this reason, only call -plugInDidUpdateProperties:ofHandle:
                  to update the properties of a handle after specifying the handle in
                  -plugInDidUpdateGroupList:error:, -plugInDidReceiveMessage:fromHandle:, or
                  -plugInDidSendMessage:toHandle:error:
                  
      @param      handle  A handle
                  changes An NSDictionary, corresponding to new handle properties for the handle
                  
                          Available keys include:
                          IMHandlePropertyAvailability      - The IMHandleAvailability of the handle
                          IMHandlePropertyStatusMessage     - Current status message as plaintext NSString
                          IMHandlePropertyIdleDate          - The time of the last user activity
                          IMHandlePropertyAlias             - A "prettier" version of the handle, if available
                          IMHandlePropertyFirstName         - The first name (given name) of a handle
                          IMHandlePropertyLastName          - The last name (family name) of a handle
                          IMHandlePropertyEmailAddress      - The e-mail address for a handle
                          IMHandlePropertyPictureIdentifier - A unique identifier for the handle's picture
                          IMHandlePropertyCapabilities      - The capabilities of the handle                
  */
  @available(OSX 10.0, *)
  func plugInDidUpdateProperties(changes: [NSObject : AnyObject]!, ofHandle handle: String!)
}
let IMAccountSettingServerHost: String
let IMAccountSettingServerPort: String
let IMAccountSettingLoginHandle: String
let IMAccountSettingPassword: String
let IMAccountSettingUsesSSL: String
enum IMSessionAvailability : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Away
  case Available
}
let IMSessionPropertyAvailability: String
let IMSessionPropertyStatusMessage: String
let IMSessionPropertyPictureData: String
let IMSessionPropertyIdleDate: String
let IMSessionPropertyIsInvisible: String
enum IMGroupListPermissions : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case CanReorderGroup
  case CanRenameGroup
  case CanAddNewMembers
  case CanRemoveMembers
  case CanReorderMembers
}
let IMGroupListDefaultGroup: String
let IMGroupListNameKey: String
let IMGroupListPermissionsKey: String
let IMGroupListHandlesKey: String
enum IMHandleAvailability : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Offline
  case Away
  case Available
}
enum IMHandleAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Accepted
  case Pending
  case Declined
}
let IMHandlePropertyAvailability: String
let IMHandlePropertyStatusMessage: String
let IMHandlePropertyAuthorizationStatus: String
let IMHandlePropertyIdleDate: String
let IMHandlePropertyAlias: String
let IMHandlePropertyFirstName: String
let IMHandlePropertyLastName: String
let IMHandlePropertyEmailAddress: String
let IMHandlePropertyPictureIdentifier: String
let IMHandlePropertyPictureData: String
let IMHandlePropertyCapabilities: String
let IMHandleCapabilityMessaging: String
let IMHandleCapabilityOfflineMessaging: String
let IMHandleCapabilityChatRoom: String
let IMHandleCapabilityHandlePicture: String
let IMHandleCapabilityFileTransfer: String
let IMAttributeFontFamily: String
let IMAttributeFontSize: String
let IMAttributeItalic: String
let IMAttributeBold: String
let IMAttributeUnderline: String
let IMAttributeStrikethrough: String
let IMAttributeLink: String
let IMAttributePreformatted: String
let IMAttributeBaseWritingDirection: String
let IMAttributeForegroundColor: String
let IMAttributeBackgroundColor: String
let IMAttributeMessageBackgroundColor: String
