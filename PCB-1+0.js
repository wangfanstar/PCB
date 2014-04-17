activeCamera=scene.cameras.getByIndex(0);
function asyProjection() {activeCamera.projectionType=activeCamera.TYPE_PERSPECTIVE;
activeCamera.viewPlaneSize=0;
activeCamera.binding=activeCamera.BINDING_VERTICAL;
}

asyProjection();

handler=new CameraEventHandler();
runtime.addEventHandler(handler);
handler.onEvent=function(event) 
{
  asyProjection();
  scene.update();
}