
# This is used to represent a coordinate in the first quadrant.
FirstQuadrant <- setClass(
  # Set the name for the class
  Class = "FirstQuadrant",
  
  # Define the slots
  # similar to type field of Java language
  slots = c(x = "numeric", y = "numeric"),
  
  # Set the default values for the slots. (optional)
  # similar to default constructor of Java language
  prototype = list(x = 0.0, y = 0,0),
  
  # Make a function that can test to see if the data is consistent.
  # This is not called if you have an initialize function defined!
  validity = function(object) {
    if ((object@x < 0) || (object@y < 0)) {
      return("A negative number for one of the coordinates was given.")
    }
    return(TRUE)
  }
)