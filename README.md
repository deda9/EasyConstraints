# EasyConstraints
This is just a wrapper for writing native Auto Layout constraints with easy way

<img src="https://github.com/deda9/EasyConstraints/blob/master/image.png" height="568" width="280">

in native constraints, you can set width = 100 & height = 100 by
```Swift
view.translatesAutoresizingMaskIntoConstraints = false
let widthConstraint = view.widthAnchor.constraint(equalToConstant: 100)
let heightConstraint = view.widthAnchor.constraint(equalToConstant: 100)
NSLayoutConstraint.activate([widthConstraint, heightConstraint])

````


but by EasyConstraints, you can write this syntax
````Swift
view.setConstraint(.width(100) + .height(100))
````


and in native constraints, you can center the view in the superView by
````Swift
view.translatesAutoresizingMaskIntoConstraints = false
let centerXConstraint = view.centerXAnchor.constraint(equalTo: parent.centerXAnchor, constant: 0)
let centerYConstraint = view.centerYAnchor.constraint(equalTo: parent.centerYAnchor, constant: 0)
NSLayoutConstraint.activate([centerXConstraint, centerYConstraint])
````


but by EasyConstraints, you can write this syntax:
````Swift
view.center(in: self)
````


and in native constraints, to set view left to other view with margin 20 

````Swift
view.translatesAutoresizingMaskIntoConstraints = false
let constraint = view.leftAnchor.constraint(equalTo: parent.leftAnchor, constant: 20)
NSLayoutConstraint.activate([constraint])

````



EasyConstraints 
````Swift
view.left(of: self, offset: 20)
````
