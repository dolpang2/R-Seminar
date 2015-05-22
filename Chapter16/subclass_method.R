# create a method to move the agent.
setGeneric(name="move",
           def=function(theObject)
           {
             standardGeneric("move")
           }
)

setMethod(f="move",
          signature="Agent",
          definition=function(theObject)
          {
            print("Move this Agent dude")
            theObject <- setVelocity(theObject,c(1,2))
            validObject(theObject)
            return(theObject)
          }
)

setMethod(f="move",
          signature="Prey",
          definition=function(theObject)
          {
            print("Check this Prey before moving this dude")
            theObject <- callNextMethod(theObject)
            print("Move this Prey dude")
            validObject(theObject)
            return(theObject)
          }
)

setMethod(f="move",
          signature="Bobcat",
          definition=function(theObject)
          {
            print("Check this Bobcat before moving this dude")
            theObject <- setLocation(theObject,c(2,3))
            theObject <- callNextMethod(theObject)
            print("Move this Bobcat dude")
            validObject(theObject)
            return(theObject)
          }
)

setMethod(f="move",
          signature="Lynx",
          definition=function(theObject)
          {
            print("Check this Lynx before moving this dude")
            theObject <- setActive(theObject,FALSE)
            theObject <- callNextMethod(theObject)
            print("Move this Lynx dude")
            validObject(theObject)
            return(theObject)
          }
)