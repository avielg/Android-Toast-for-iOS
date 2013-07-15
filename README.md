Android-Toast-for-iOS
=====================

This is a simple Class that adds an easy option to create android-like toasts for iOS.
All the normal settings (size, color. margin etc...) can be changed via the h file in one of the #define lines.

To use it define a new <tt>Toast</tt> object with <tt>toastWithMessage:</tt> method (no alloc init needed), then call <tt>showOnView:</tt> from the Toast object.
Example:
<br><code>
 Toast *passT = [Toast toastWithMessage:@"Passwords don't match"];<br>
 [passT showOnView:self.view];
</code>


This is my first rep on git, feel free to comment, fork, and crit (:

Aviel.
