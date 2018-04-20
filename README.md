# StackViewTest
This project programmatically creates a single UIStackView with a purple background and displays 3 UILabels with text of varying lengths.  Also, an extension to the UIView with a function anchor() is added to help apply constraints to the stackViews in a more simple and intuitive way.

1. Initially 4 labels, a bkgView with a purple background, a separator line, and a stackView are created.
2. labels1, labels2, and labels3 are added to the stackView.
3. StackView is constrained to fill vertically.
4. An extension on UIView was created with 2 functions: anchorSize() and anchor().
5. AnchorSize() constrains the view to a height and width.
6. Anchor() constrains the stackViews to the main views and allows optional padding to top, left, right bottom.
7. The labels, bkgView, and stackView are constrained using the anchor() function in the UIView extension.
8. label4 is created, added to the view, and is constrained outside and below the stackView.
9. A separator line is created, in red, and is added to the view below label4, and spanning the width of the view.

