# create a method to assign the value of the location
setGeneric(name = "setLocation", 
           def = function(theObject, position) {
             standardGeneric("setLocation")
           })

setMethod(f = "setLocation", 
          signature = "Agent", 
          definition = function(theObject, position) {
            theObject@location <- position
            validObject(theObject)
            return(theObject)
          })

# create a method to get the value of the location
setGeneric(name = "getLocation",
           def = function(theObject) {
             standardGeneric("getLocation")
           })

setMethod(f = "getLocation", 
          signature = "Agent", 
          definition = function(theObject) {
            return(theObject@location)
          })

# create a method to assign the value of active
setGeneric(name = "setActive", 
           def = function(theObject, active) {
            standardGeneric("setActive")
          })

setMethod(f = "setActive", 
          signature = "Agent", 
          definition = function(theObject, active) {
            theObject@active <- active
            validObject(theObject)
            return(theObject)
          })

# create a method to get the value of active
setGeneric(name = "getActive", 
           def = function(theObject) {
             standardGeneric("getActive")
           })

setMethod(f = "getActive", 
          signature = "Agent", 
          definition = function(theObject) {
            return(theObject@active)
          })

# create a method to assign the value of velocity
setGeneric(name = "setVelocity", 
           def = function(theObject, velocity) {
            standardGeneric("setVelocity")
          })

setMethod(f = "setVelocity", 
          signature = "Agent", 
          definition = function(theObject, velocity) {
            theObject@velocity <- velocity
            validObject(theObject)
            return(theObject)
          })

# create a method to get the value of the velocity
setGeneric(name = "getVelocity", 
           def = function(theObject) {
            standardGeneric("getVelocity")
          })

setMethod(f = "getVelocity", 
          signature = "Agent", 
          definition = function(theObject) {
            return(theObject@velocity)
          })

# create a method to reset the velocity and the activity
# method overloading
setGeneric(name = "resetActivity", 
           def = function(theObject, value) {
             standardGeneric("resetActivity")
           }
)

setMethod(f = "resetActivity", 
          signature = c("Agent", "logical"), 
          definition = function(theObject, value) {
            theObject <- setActive(theObject, value)
            theObject <- setVelocity(theObject, c(0.0, 0.0))
            return(theObject)
          }
)

setMethod(f = "resetActivity", 
          signature = c("Agent", "numeric"), 
          definition = function(theObject, value) {
            theObject <- setActive(theObject, TRUE)
            theObject <- setVelocity(theObject, value)
            return(theObject)
          }
)