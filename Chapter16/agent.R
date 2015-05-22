######################################################################
# Create the base Agent class
#
# This is used to represent the most basic agent in a simulation.
Agent <- setClass(# Set the name for the class
                  Class = "Agent",  
                  
                  # Define the slots
                  # Similar to C++ fields declaration
                  # double location
                  # double velocity
                  # bool active
                  slots = c(location = "numeric", 
                            velocity = "numeric", 
                            active = "logical"),
                  
                  # Set the default values for the slots. (optional)
                  # Similar to C++ default constructor
                  # Agent() {
                  #   this->location = 0.0;
                  #   this->velocity = 0.0;
                  #   this->active = true;
                  # }
                  prototype = list(location = c(0.0, 0.0), 
                                   velocity = c(0.0, 0.0), 
                                   active = TRUE),
                  
                  # Make a function that can test to see 
                  # if the data is consistent.
                  # This is not called 
                  # if you have an initialize function defined
                  validity = function(object) {
                    if (sum(object@velocity^2) > 100.0) {
                      return("The velocity level is out of bounds.")
                    }
                    return(TRUE)
                  }
                )
