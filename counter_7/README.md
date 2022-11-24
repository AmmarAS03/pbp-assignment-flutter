Weekly Assignment 7
1. Explain what is meant by stateless widget and stateful widget and explain the difference between them.
	
	- Stateful = It’s a widget that can change when a user interacts with it. It can change its appearance in response to events triggered by user interactions or when it receives data
	- Stateless = It’s a widget that never changes. Its appearance and properties remain unchanged throughout the lifetime of the widget
2. Mention what widgets you use in this project and explain their functions.
	- Assets, Images, Icon = These widgets take charge of assets such as display images and show icons
	-  Async = These provide async functionality in the flutter application i.e. setState()
	- Text = Displays text
	- Styling = This deals with the theme, responsiveness, and sizing of the app.
	- Interaction Models = These widgets are here to manage touch events and route users to different views in the application.
	- Layout = This bundle of widgets helps in placing the other widgets on the screen as needed.

3. What is the function of setState()? Explain what variables can be affected by the function.
setState is the Flutter way to issue a rebuild of the current widget and its descendants. During a rebuild, the most recent variable values will be used to create the user interface. So basically, setState is a way to dynamically change the UI.

4. Explain the difference between const and final
	The final keyword is used to hardcode the values of the variable and it cannot be altered in future, neither any kind of operations performed on these variables can alter its value (state).The Const keyword in Dart behaves exactly like the final keyword. The only difference between final and const is that the const makes the variable constant from compile-time only.

5. Explain how you implement the checklist above.
	1. Create a new folder and go to the terminal. Go into the directory and then type ‘flutter create counter_7’ and run the project by typing ‘flutter run’
	1. the + button already increment the number by one unit from the start
	2. make a new function (can be copied from _IncrementCounter() and edit it so it will handle if the counter is zero and from _counter++ to _counter—) named _decrementCounter() and then add it so it’ll look like as the requested
	3. make a new function named _numDecider() to decide the counter number is either odd or even using the if else condition. and add it as a Text widget
	4. In _evenOdd() , I make the _counter as if it is modulo by 2 the result is 0 then it’s even, so 0 is even
	

Weekly Assignment 8
1. Explain the difference between Navigator.push and Navigator.pushReplacement.
Navigator.push = The push() method adds a Route to the stack of routes managed by the Navigator
Navigator.pushReplacement = Replace the current route of the navigator that most tightly encloses the given context by pushing the given route and then disposing the previous route once the new route has finished animating in

2. List all the widgets you used in this project and explain their functions.
	- Text = Displays text
	- Styling = This deals with the theme, responsiveness, and sizing of the app.
	- Interaction Models = These widgets are here to manage touch events and route users to different views in the application.
	- Form = Container for grouping together multiple form field widgets.
	- Scaffold = Implements the basic Material Design visual layout structure. This class provides APIs for showing drawers, snack bars, and bottom sheets.
3. Name the types of events that exist in flutter
There are a lot of events that exists in flutter. These are some example : 
PointerDownEvent, PointerMoveEvent, PointerUpEvent, PointerCancelEvent. Gestures can also dispatch multiple events, such as onTap, onTapDown, onTapUp, onHover, onFocusChange, onDoubleTap, onPressed, onLongPress, onHover, onVerticalDragStart, onHorizontalDragStart, onPanStart, and many more.

4. Explain how the Navigator works in "switching" pages of a Flutter application.
The stack data structure is used by the Navigator. The Navigator.push() method can be used to change to a different path. A Route is added to the stack of routes that the Navigator manages using the push() method. What is the origin of the Route? Use a MaterialPageRoute instead of making your own because it transitions to the new route with a platform-specific animation. Using the pop() method, which removes the current Route from the stack of routes controlled by the Navigator, you can close the second route and go back to the first.

5. Explain How you implemented the checklist Above
1. Create two more dart files and also add a drawer to 3 files that existed
2. Create a form on the Add Budget Info page with input for title, amount and also a save button
3. Create a list to store the result where they will be a list
4. In budget data, iterate through data from the list and show the result


Weekly Assignment 9
1. Can we retrieve JSON data without creating a model first? If yes, is it better than creating a model before retrieving JSON data?

There are two options to fetch Json data which are: 1. Write all the Json manually 2. Automate the process with code generation
Ofcoure it is better for us to create a model before retrieveng Json data because it will save us so much time
2. List the widgets that you used in this project and explain their functions.
	- Text = Displays text
	- Styling = This deals with the theme, responsiveness, and sizing of the app.
	- Interaction Models = These widgets are here to manage touch events and route users to different views in the application.
	- Form = Container for grouping together multiple form field widgets.
	- Scaffold = Implements the basic Material Design visual layout structure. This class provides APIs for showing drawers, snack bars, and bottom sheets.
	- ListTile = Contains one to three lines of text optionally flanked by icons or other widgets, such as check boxes

3. Explain the mechanism of retrieving data from json so it can be shown in Flutter.

First, we must build a model for the JSON data and put it to a dart file. This data can be found on various sources, like Quicktype. The http package must then be added in order to execute the HTTP request. Run the command "flutter pub add http" on the project terminal to add it, then in the AndroidManifest.xml, add "" after the application tag to allow for internet access.

Import the http package, dart:convert, and the model dart file into the page from which you wish to retrieve the data. Utilizing the Future widget and http, create a stateful widget and retrieve the JSON data. utilize the data-containing url to obtain. Use the model class's fromJson method to convert the data, then add the result to a list. Use the FutureBuilder function to show the data, where the future is the function that contains the data, and ListView.builder to produce the data representation for the builder.
4. Explain how you implemented the checklist above.
1. Input the Json data into quicktype and copy the code to a new model dart file in a separate folder
2. Create another dart file in a different folder from the other new file to be the page
3. Create MyWatchListPage class and the contain is the same as the previous lab
4. Create another new file for detail
5. Create a new DetailsPage class with accepting parameter to pass the data
