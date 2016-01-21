/*
    Copyright (C) 2015 Apple Inc. All Rights Reserved.
    See LICENSE.txt for this sample’s licensing information
    
    Abstract:
    The `ListDocumentsViewController` displays a list of available documents for users to open.
*/

import UIKit
import WatchConnectivity
import ListerKit

class ListDocumentsViewController: UITableViewController, ListsControllerDelegate, UIDocumentMenuDelegate, UIDocumentPickerDelegate, WCSessionDelegate, SegueHandlerType {
    // MARK: Types

    struct MainStoryboard {
        struct ViewControllerIdentifiers {
            static let listViewController = "listViewController"
            static let listViewNavigationController = "listViewNavigationController"
        }
        
        struct TableViewCellIdentifiers {
            static let listDocumentCell = "listDocumentCell"
        }
    }
    
    // MARK: SegueHandlerType
    
    enum SegueIdentifier: String {
        case ShowNewListDocument
        case ShowListDocument
        case ShowListDocumentFromUserActivity
    }
    
    // MARK: Properties

    var listsController: ListsController! {
        didSet {
            listsController.delegate = self
        }
    }
    
    private var pendingLaunchContext: AppLaunchContext?
    
    private var watchAppInstalledAtLastStateChange = false
    
    // MARK: Initializers
    
    required init?(coder aDecoder: Coder) {
        super.init(coder: aDecoder)
        
        if WCSession.isSupported() {
            WCSession.defaultSession().delegate = self
            WCSession.defaultSession().activateSession()
        }
    }

    // MARK: View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 44.0
        
        navigationController?.navigationBar.titleTextAttributes = [
            NSFontAttributeName: UIFont.preferredFontForTextStyle(UIFontTextStyleHeadline),
            NSForegroundColorAttributeName: List.Color.Gray.colorValue
        ]
        
        NotificationCenter.defaultCenter().addObserver(self, selector: "handleContentSizeCategoryDidChangeNotification:", name: UIContentSizeCategoryDidChangeNotification, object: nil)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.titleTextAttributes = [
            NSFontAttributeName: UIFont.preferredFontForTextStyle(UIFontTextStyleHeadline),
            NSForegroundColorAttributeName: List.Color.Gray.colorValue
        ]
        
        let grayListColor = List.Color.Gray.colorValue
        navigationController?.navigationBar.tintColor = grayListColor
        navigationController?.toolbar?.tintColor = grayListColor
        tableView.tintColor = grayListColor
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        if let launchContext = pendingLaunchContext {
            configureViewControllerWithLaunchContext(launchContext)
        }
        
        pendingLaunchContext = nil
    }
    
    // MARK: Lifetime
    
    deinit {
        NotificationCenter.defaultCenter().removeObserver(self, name: UIContentSizeCategoryDidChangeNotification, object: nil)
    }
    
    // MARK: UIResponder
    
    override func restoreUserActivityState(activity: UserActivity) {
        // Obtain an app launch context from the provided activity and configure the view controller with it.
        guard let launchContext = AppLaunchContext(userActivity: activity, listsController: listsController) else { return }
        
        configureViewControllerWithLaunchContext(launchContext)
    }
    
    // MARK: IBActions

    /**
        Note that the document picker requires that code signing, entitlements, and provisioning for
        the project have been configured before you run Lister. If you run the app without configuring
        entitlements correctly, an exception when this method is invoked (i.e. when the "+" button is
        clicked).
    */
    @IBAction func pickDocument(barButtonItem: UIBarButtonItem) {
        let documentMenu = UIDocumentMenuViewController(documentTypes: [AppConfiguration.listerUTI], in: .Open)
        documentMenu.delegate = self

        let newDocumentTitle = NSLocalizedString("New List", comment: "")
        documentMenu.addOptionWithTitle(newDocumentTitle, image: nil, order: .First) {
            // Show the `NewListDocumentController`.
            self.performSegueWithIdentifier(.ShowNewListDocument, sender: self)
        }
        
        documentMenu.modalPresentationStyle = .Popover
        documentMenu.popoverPresentationController?.barButtonItem = barButtonItem
        
        present(documentMenu, animated: true)
    }
    
    // MARK: UIDocumentMenuDelegate
    
    func documentMenu(documentMenu: UIDocumentMenuViewController, didPickDocumentPicker documentPicker: UIDocumentPickerViewController) {
        documentPicker.delegate = self

        present(documentPicker, animated: true)
    }
    
    func documentMenuWasCancelled(documentMenu: UIDocumentMenuViewController) {
        /**
            The user cancelled interacting with the document menu. In your own app, you may want to
            handle this with other logic.
        */
    }
    
    // MARK: UIPickerViewDelegate
    
    func documentPicker(controller: UIDocumentPickerViewController, didPickDocumentAt url: URL) {
        // The user selected the document and it should be picked up by the `ListsController`.
    }

    func documentPickerWasCancelled(controller: UIDocumentPickerViewController) {
        /**
            The user cancelled interacting with the document picker. In your own app, you may want to
            handle this with other logic.
        */
    }
    
    // MARK: ListsControllerDelegate
    
    func listsControllerWillChangeContent(listsController: ListsController) {
        tableView.beginUpdates()
    }
    
    func listsController(listsController: ListsController, didInsertListInfo listInfo: ListInfo, atIndex index: Int) {
        let indexPath = IndexPath(forRow: index, inSection: 0)
        
        tableView.insertRowsAt([indexPath], withRowAnimation: .Automatic)
    }
    
    func listsController(listsController: ListsController, didRemoveListInfo listInfo: ListInfo, atIndex index: Int) {
        let indexPath = IndexPath(forRow: index, inSection: 0)
        
        tableView.deleteRowsAt([indexPath], withRowAnimation: .Automatic)
    }
    
    func listsController(listsController: ListsController, didUpdateListInfo listInfo: ListInfo, atIndex index: Int) {
        let indexPath = IndexPath(forRow: index, inSection: 0)
        
        tableView.reloadRowsAt([indexPath], withRowAnimation: .Automatic)
    }
    
    func listsControllerDidChangeContent(listsController: ListsController) {
        tableView.endUpdates()
        
        // This method will handle interactions with the watch connectivity session on behalf of the app.
        updateWatchConnectivitySessionApplicationContext()
    }
    
    func listsController(listsController: ListsController, didFailCreatingListInfo listInfo: ListInfo, withError error: Error) {
        let title = NSLocalizedString("Failed to Create List", comment: "")
        let message = error.localizedDescription
        let okActionTitle = NSLocalizedString("OK", comment: "")
        
        let errorOutController = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        
        let action = UIAlertAction(title: okActionTitle, style: .Cancel)
        errorOutController.addAction(action)
        
        present(errorOutController, animated: true)
    }
    
    func listsController(listsController: ListsController, didFailRemovingListInfo listInfo: ListInfo, withError error: Error) {
        let title = NSLocalizedString("Failed to Delete List", comment: "")
        let message = error.localizedFailureReason
        let okActionTitle = NSLocalizedString("OK", comment: "")
        
        let errorOutController = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        
        let action = UIAlertAction(title: okActionTitle, style: .Cancel)
        errorOutController.addAction(action)
        
        present(errorOutController, animated: true)
    }
    
    // MARK: UITableViewDataSource
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // If the controller is nil, return no rows. Otherwise return the number of total rows.
        return listsController?.count ?? 0
    }
    
    override func tableView(tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCellWithIdentifier(MainStoryboard.TableViewCellIdentifiers.listDocumentCell, forIndexPath: indexPath) as! ListCell
    }
    
    // MARK: UITableViewDelegate
    
    override func tableView(tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        switch cell {
            case let listCell as ListCell:
                let listInfo = listsController[indexPath.row]
                
                listCell.label.text = listInfo.name
                listCell.label.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
                listCell.listColorView.backgroundColor = UIColor.clear()
                
                // Once the list info has been loaded, update the associated cell's properties.
                listInfo.fetchInfoWithCompletionHandler {
                    /*
                        The fetchInfoWithCompletionHandler(_:) method calls its completion handler on a background
                        queue, dispatch back to the main queue to make UI updates.
                    */
                    dispatch_async(dispatch_get_main_queue()) {
                        // Make sure that the list info is still visible once the color has been fetched.
                        guard let indexPathsForVisibleRows = self.tableView.indexPathsForVisibleRows else { return }
                        
                        if indexPathsForVisibleRows.contains(indexPath) {
                            listCell.listColorView.backgroundColor = listInfo.color!.colorValue
                        }
                    }
                }
            default:
                fatalError("Attempting to configure an unknown or unsupported cell type in ListDocumentViewController.")
        }
    }

    override func tableView(tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return false
    }
    
    override func tableView(tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return false
    }
    
    // MARK: WCSessionDelegate
    
    func sessionWatchStateDidChange(session: WCSession) {
        if !watchAppInstalledAtLastStateChange && session.watchAppInstalled {
            watchAppInstalledAtLastStateChange = session.watchAppInstalled
            updateWatchConnectivitySessionApplicationContext()
        }
    }
    
    func session(session: WCSession, didFinishFileTransfer fileTransfer: WCSessionFileTransfer, error: Error?) {
        if error != nil {
            print("\(__FUNCTION__), file: \(fileTransfer.file.fileURL), error: \(error!.localizedDescription)")
        }
    }
    
    func session(session: WCSession, didReceive file: WCSessionFile) {
        guard let lastPathComponent = file.fileURL.lastPathComponent else { return }
        listsController.copyListFromURL(file.fileURL, toListWithName:(lastPathComponent as NSString).stringByDeletingPathExtension)
    }
    
    // MARK: UIStoryboardSegue Handling

    override func prepareFor(segue: UIStoryboardSegue, sender: AnyObject?) {
        let segueIdentifier = segueIdentifierForSegue(segue)
        
        switch segueIdentifier {
            case .ShowNewListDocument:
                let newListDocumentController = segue.destinationViewController as! NewListDocumentController
                
                newListDocumentController.listsController = listsController

            case .ShowListDocument, .ShowListDocumentFromUserActivity:
                let listNavigationController = segue.destinationViewController as! UINavigationController
                let listViewController = listNavigationController.topViewController as! ListViewController
                listViewController.listsController = listsController
                
                listViewController.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem()
                listViewController.navigationItem.leftItemsSupplementBackButton = true
            
                if segueIdentifier == .ShowListDocument {
                    let indexPath = tableView.indexPathForSelectedRow!
                    listViewController.configureWithListInfo(listsController[indexPath.row])
                }
                else {
                    let userActivityListInfo = sender as! ListInfo
                    listViewController.configureWithListInfo(userActivityListInfo)
                }
        }
    }

    // MARK: Notifications
    
    func handleContentSizeCategoryDidChangeNotification(_: Notification) {
        tableView.setNeedsLayout()
    }
    
    // MARK: Convenience
    
    func configureViewControllerWithLaunchContext(launchContext: AppLaunchContext) {
        /**
            If there is a list currently displayed; pop to the root view controller (this controller) and
            continue configuration from there. Otherwise, configure the view controller directly.
        */
        if navigationController?.topViewController is UINavigationController {
            dispatch_async(dispatch_get_main_queue()) {
                // Ensure that any UI updates occur on the main queue.
                self.navigationController?.popToRootViewControllerAnimated(false)
                self.pendingLaunchContext = launchContext
            }
            return
        }
        
        let listInfo = ListInfo(URL: launchContext.listURL)
        listInfo.color = launchContext.listColor
        
        dispatch_async(dispatch_get_main_queue()) {
            self.performSegueWithIdentifier(.ShowListDocumentFromUserActivity, sender: listInfo)
        }
    }
    
    func updateWatchConnectivitySessionApplicationContext() {
        // Return if `WCSession` is not supported on this iOS device or the `listsController` is unavailable.
        guard let listsController = listsController where WCSession.isSupported() else { return }
        
        let session = WCSession.defaultSession()
        
        // Do not proceed if the watch app is not installed on the paired watch.
        if !session.watchAppInstalled { return }
        
        // This array will be used to collect the data about the lists for the application context.
        var lists = [[String: AnyObject]]()
        // A background queue to execute operations on to fetch the information about the lists.
        let queue = OperationQueue()
        
        // This operation will execute last and will actually update the application context.
        let updateApplicationContextOperation = BlockOperation {
            do {
                try session.updateApplicationContext([AppConfiguration.ApplicationActivityContext.currentListsKey: lists])
            }
            catch let error as Error {
                print("Error updating watch application context: \(error.localizedDescription)")
            }
            // Requiring an additional catch to satisfy exhaustivity is a known issue.
            catch {}
        }
        
        // Loop through the available lists in order to accumulate contextual information about them.
        for idx in 0..<listsController.iterator {
            // Obtain the list info object from the controller.
            let info = listsController[idx]
            
            // This operation will fetch the information for an individual list.
            let listInfoOperation = BlockOperation {
                // The `fetchInfoWithCompletionHandler(_:)` method executes asynchronously. Use a semaphore to wait.
                let semaphore = dispatch_semaphore_create(0)
                info.fetchInfoWithCompletionHandler {
                    // Now that the `info` object is fully populated. Add an entry to the `lists` dictionary.
                    lists.append([
                        AppConfiguration.ApplicationActivityContext.listNameKey: info.name,
                        AppConfiguration.ApplicationActivityContext.listColorKey: info.color!.rawValue
                    ])
                
                    // Signal the semaphore indicating that it can stop waiting.
                    dispatch_semaphore_signal(semaphore)
                }
            
                // Wait on the semaphore to ensure the operation doesn't return until the fetch is complete.
                dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER)
            }
            
            // Depending on `listInfoOperation` ensures it completes before `updateApplicationContextOperation` executes.
            updateApplicationContextOperation.addDependency(listInfoOperation)
            queue.addOperation(listInfoOperation)
            
            // Use file coordination to obtain exclusive access to read the file in order to initiate a transfer.
            let fileCoordinator = FileCoordinator()
            let readingIntent = FileAccessIntent.readingIntentWith(info.URL)
            fileCoordinator.coordinateAccessWith([readingIntent], queue: OperationQueue()) { accessError in
                if accessError != nil {
                    return
                }
                
                // Iterate through outstanding transfers; and cancel any for the same URL as they are obsolete.
                for transfer in session.iterator {
                    if transfer.file.fileURL == readingIntent.URL {
                        transfer.cancel()
                        break
                    }
                }
                
                // Initiate the new transfer.
                session.transferFile(readingIntent.URL, metadata: nil)
            }
        }
        
        queue.addOperation(updateApplicationContextOperation)
    }
}
