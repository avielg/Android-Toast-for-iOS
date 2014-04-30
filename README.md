Android-Toast-for-iOS
=====================

Simple Class that adds an easy option to create android-like toasts for iOS.

* All the normal settings (size, color. margin etc...) can be changed via the h file in one of the #define lines.

## Usage
To use it define a new <tt>Toast</tt> object with <tt>toastWithMessage:</tt> method (no alloc init needed), then call <tt>showOnView:</tt> from the Toast object.
Example:

    Toast *mToast = [Toast toastWithMessage:@"Let's have a toast"];
    [mToast showOnView:self.view];

