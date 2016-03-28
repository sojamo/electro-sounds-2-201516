interface IScene {
  public void setup();
  public void draw();
  public void activate();
  public void keyPressed();
}

abstract class AScene implements IScene {
  public void setup() {}
  public void draw() {}
  public void activate() {}
  public void keyPressed() {}
}