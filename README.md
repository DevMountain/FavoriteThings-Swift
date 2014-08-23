FavoriteThings-Swift
==============

A simple iOS app that displays a list of favorite things in a table view.

### Step 1: Add a view controller in a navigation controller to the app
- Create a UIViewController called FavoriteThingsViewController
- In the AppDelegate didFinishLaunching method initialize a UINavigationController with a scoreViewController instance as the rootViewController
- Make the navigationController the rootViewController of the window.

### Test Step 2: Add a button that changes text
*Note: This is just for the test. We're going to delete this code once we're done*
- Add a UIButton and UILabel as properties on the new viewcontroller class
- Initialize and put the button and label on the screen
- Set the button's title to "Press me" for control state normal
- Set the label's text to "Change me"
- Add a function that changes the label's text to "Thanks for changing me"
- Add self as target to the button with the new method as the selector

### Step 3: Clean up the view controller
- Remove the button and label from the view

### Step 4: Add a tableview to the view
- Add a UITableView as a property on the viewController class
- Initialize and add the tableView as a subview of the main view

### Step 5: Create a new tableViewDatasource
- Create a NSObject subclass called FavoriteThingsTableViewDataSource
- In the header file, adopt the UITableViewDataSource protocol 
- Add the required UITableViewDataSource methods to the implementation file
- Write a method that returns an array of strings (these can be your favorite things)
- In numberOfRows return the count of your array method
- in cellForRowAtIndexPath return a cell with the textLabel.text set to the string at indexPath.row from the array method 
