
import Graphics.UI.GLUT 
import Graphics.Rendering.OpenGL

main = do
  getArgsAndInitialize
  myWindow "Artix Linux"
  mainLoop

myWindow name = do
  createWindow name 
  windowSize $= Size 400 400
  displayCallback $= display

display = do 
  clear [ColorBuffer]

  currentColor $= Color4 0.18 0.69 0.83 1
  displayPoints
  flush

displayPoints = do 
  clear [ColorBuffer]
  renderPrimitive Triangles
    $mapM_ (\(x, y, z)->vertex$Vertex3 x y z) myPoints

myPoints :: [(GLfloat,GLfloat,GLfloat)]
myPoints =
  [(0, 0.9, 0.0)
  ,(-0.3, 0.25, 0.0)
  ,(0.5, -0.2, 0.0)
  ,(-0.4, 0.05, 0)
  ,(-0.9, -0.9, 0)
  ,(0.5, -0.3, 0)
  ,(0.6, -0.4, 0)
  ,(0.2, -0.65, 0)
  ,(0.9, -0.9, 0)]