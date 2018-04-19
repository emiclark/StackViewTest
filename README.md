# StackViewTest
This project programmatically creates a single UIStackView with a purple background and displays 3 UILabels with text of varying lengths.  Also, an extension to the UIView with a function anchor() is added to help apply constraints to the stackViews in a more simple and intuitive way.

1. Initially 3 labels, a view with a purple background and a stack are created.
2. labels1, labels2, and labels3 are added to the stackView.
3. StackView is constrained to fill vertically, fill equally.
4. An extension on UIView was created with 2 functions: anchorSize() and anchor().
5. AnchorSize() constrains the view to a height and width.
6. Anchor() constrains the stackViews to the main views and allows optional padding to top, left, right bottom.
7. The labels, rect1, and stackView are constrained using the anchor() function in the UIView extension.

