import Data.Array

myArray = array (1, 3) [(1, "a"), (2, "b"), (3, "c")]

showBounds = bounds myArray
showIndices = indices myArray
showElems = elems myArray
showAssocs = assocs myArray