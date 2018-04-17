# StackViewTest
This project programmatically creates nested stackviews.
An extension to the UIView is added to help apply constraints to the stackViews in a more simple and intuitive way.

1. Initially 5 views and 2 stack views are created. 
2. Views: rec1, rec2, rec3, are added to stackView1.
3. StackView1 is constrained to fill vertically, fill equally, and to a height of 250 and on top of stackView2.
4. Views: rec4, rec5 are added to stackView2.
5. StackView2 is constrained below StackView1 to fill the bottom part of the view horizontally, and fill equally.
6. An extension on UIView was created with 2 functions: anchorSize() and anchor().
7. AnchorSize() constrains the view to a height and width.
8. Anchor() constrains the stackViews to the main views and adds optional padding to top, left, right bottom.
9. Finally, 2 UILabels are added to each view to see how the contents of all the views are displayed.
