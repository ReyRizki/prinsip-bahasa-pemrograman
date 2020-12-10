import Graphics.UI.GLUT 
import Graphics.Rendering.OpenGL

main = do
    getArgsAndInitialize
    myWindow "Creeper? Aww, man!"
    mainLoop

myWindow name = do
    createWindow name 
    windowSize $= Size 400 400
    displayCallback $= display

display = do
    -- background color
    clearColor $= Color4 0.46 1 0.01 1
    clear [ColorBuffer]

    -- black color for face
    currentColor $= Color4 0 0 0 0
    displayFace

    flush

displayFace = do 
    clear [ColorBuffer]
    renderPrimitive Quads
        $mapM_ (\(x, y)->vertex$Vertex2 x y) facePoints

facePoints :: [(GLfloat,GLfloat)]
facePoints =
  [(-0.75, 0)
  ,(-0.25, 0)
  ,(-0.25, 0.5)
  ,(-0.75, 0.5)
  ,(0.25, 0)
  ,(0.25, 0.5)
  ,(0.75, 0.5)
  ,(0.75, 0)
  ,(-0.5, -1)
  ,(-0.5, -0.25)
  ,(-0.25, -0.25)
  ,(-0.25, -1)
  ,(-0.25, -0.75)
  ,(-0.25, 0)
  ,(0.25, 0)
  ,(0.25, -0.75)
  ,(0.5, -1)
  ,(0.5, -0.25)
  ,(0.25, -0.25)
  ,(0.25, -1)]