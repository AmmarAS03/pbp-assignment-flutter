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
	- Scaffold -> Implements the basic Material Design visual layout structure. This class provides APIs for showing drawers, snack bars, and bottom sheets.
3. Name the types of events that exist in flutter
There are a lot of events that exists in flutter. These are some example : 
PointerDownEvent, PointerMoveEvent, PointerUpEvent, PointerCancelEvent. Gestures can also dispatch multiple events, such as onTap, onTapDown, onTapUp, onHover, onFocusChange, onDoubleTap, onPressed, onLongPress, onHover, onVerticalDragStart, onHorizontalDragStart, onPanStart, and many more.

4. Explain how the Navigator works in "switching" pages of a Flutter application.
The stack data structure is used by the Navigator. The Navigator.push() method can be used to change to a different path. A Route is added to the stack of routes that the Navigator manages using the push() method. What is the origin of the Route? Use a MaterialPageRoute instead of making your own because it transitions to the new route with a platform-specific animation. Using the pop() method, which removes the current Route from the stack of routes controlled by the Navigator, you can close the second route and go back to the first.

Explain How you implemented the checklist Above
1. Create two more dart files and also add a drawer to 3 files that existed
2. Create a form on the Add Budget Info with input title
3. ...
4. ...

