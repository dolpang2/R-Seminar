######################################################################
# Create the Prey class
#
# This is used to represent a prey animal
Prey <- setClass(
  # Set the name for the class
  "Prey",
  
  # Define the slots - in this case it is empty...
  slots = character(0),
  
  # Set the default values for the slots. (optional)
  prototype = list(),
  
  # Make a function that can test to see if the data is consistent.
  # This is not called if you have an initialize function defined!
  validity = function(object) {
    if(sum(object@velocity^2) > 70.0) {
      return("The velocity level is out of bounds.")
    }
    return(TRUE)
  },
  
  # Set the inheritance for this class
  contains = "Agent"
)