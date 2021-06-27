# MaterialApp class

An application that uses material design.

A convenience widget that wraps a number of widgets that are commonly required for material design applications.

- It builds upon a WidgetsApp by adding material-design specific functionality, such as AnimatedTheme and GridPaper.

## Scaffold class

Implements the basic material design visual layout structure.

This class provides APIs for showing drawers and bottom sheets.

### appBar → PreferredSizeWidget?

An app bar to display at the top of the scaffold.

### backgroundColor → Color?

The color of the Material widget that underlies the entire Scaffold. [...]

### body → Widget?

The primary content of the scaffold. [...]

### bottomNavigationBar → Widget?

A bottom navigation bar to display at the bottom of the scaffold. [...]

### bottomSheet → Widget?

The persistent bottom sheet to display. [...]

### drawer → Widget?

A panel displayed to the side of the body, often hidden on mobile devices. Swipes in from either left-to-right (TextDirection.ltr) or right-to-left (TextDirection.rtl) [...]

### drawerDragStartBehavior → DragStartBehavior

Determines the way that drag start behavior is handled. [...]

### drawerEdgeDragWidth → double?

The width of the area within which a horizontal swipe will open the drawer. [...]

### drawerEnableOpenDragGesture → bool

Determines if the Scaffold.drawer can be opened with a drag gesture. [...]

### drawerScrimColor → Color?

The color to use for the scrim that obscures primary content while a drawer is open. [...]

### endDrawer → Widget?

A panel displayed to the side of the body, often hidden on mobile devices. Swipes in from right-to-left (TextDirection.ltr) or left-to-right (TextDirection.rtl) [...]

### endDrawerEnableOpenDragGesture → bool

Determines if the Scaffold.endDrawer can be opened with a drag gesture. [...]

### extendBody → bool

If true, and bottomNavigationBar or persistentFooterButtons is specified, then the body extends to the bottom of the Scaffold, instead of only extending to the top of the bottomNavigationBar or the persistentFooterButtons. [...]

### extendBodyBehindAppBar → bool

If true, and an appBar is specified, then the height of the body is extended to include the height of the app bar and the top of the body is aligned with the top of the app bar. [...]

### floatingActionButton → Widget?

A button displayed floating above body, in the bottom right corner. [...]

### floatingActionButtonAnimator → FloatingActionButtonAnimator?

Animator to move the floatingActionButton to a new floatingActionButtonLocation. [...]

### floatingActionButtonLocation → FloatingActionButtonLocation?

Responsible for determining where the floatingActionButton should go. [...]

### hashCode → int

The hash code for this object. [...]
@nonVirtual, read-only, inherited
key → Key?
Controls how one widget replaces another widget in the tree. [...]
, inherited

### onDrawerChanged → DrawerCallback?

Optional callback that is called when the Scaffold.drawer is opened or closed.

### onEndDrawerChanged → DrawerCallback?

Optional callback that is called when the Scaffold.endDrawer is opened or closed.

### persistentFooterButtons → List<Widget>?

A set of buttons that are displayed at the bottom of the scaffold. [...]

primary → bool
Whether this scaffold is being displayed at the top of the screen. [...]

### resizeToAvoidBottomInset → bool?

If true the body and the scaffold's floating widgets should size themselves to avoid the onscreen keyboard whose height is defined by the ambient MediaQuery's MediaQueryData.viewInsets bottom property. [...]

### restorationId → String?

Restoration ID to save and restore the state of the Scaffold. [...]

### runtimeType → Type

A representation of the runtime type of the object.
read-only, inherited
