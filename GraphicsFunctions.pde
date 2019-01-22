class GraphicsFunctions
{
  // Slider sliderOne, sliderTwo, sliderThree;

  GraphicsFunctions()
  {
    // sliderOne = new Slider(width - 180.0, height / 4.0 , 150.0, 10.0, 1.0, 100.0);
    // sliderTwo = new Slider(width - 180, height / 3, 150, 10, 1, 100);
    // sliderThree = new Slider(width - 180, height / 2, 150, 10, 1, 100);
  }

  void New(PGraphics layer, Button button)
  {
    layer.clear();
    button.localState = false;
  }

  void Save(PGraphics layer, Button button, File newFile)
  {
    selectOutput("Select Output", "fileSelected", newFile);
    button.localState = false;
  }

  void Load(PGraphics layer, Button button, File newFile)
  {
    selectInput("Select An Image To Edit", "fileChosen", newFile);
    button.localState = false;
  }

  void Undo()
  {

  }

  void Redo()
  {

  }

  void Blur()
  {

  }

  void Sharpen()
  {

  }

  void Greyscale()
  {

  }

  void Monochrome()
  {

  }

  void Pencil(PGraphics layer, ColourPicker colourPicker, float sVOne, float sVTwo)
  {
    layer.beginDraw();
    layer.colorMode(HSB);
    if (mousePressed)
    {
      if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height)
      {
        layer.stroke(colourPicker._hueVal, colourPicker._satVal, colourPicker._briVal, sVTwo);
        layer.strokeWeight(sVOne);
        layer.line(mouseX - 20, mouseY - 40, pmouseX - 20, pmouseY - 40);
      }
    }
    layer.endDraw();
  }

  void Eraser(PGraphics layer)
  {
    layer.beginDraw();
    layer.colorMode(HSB);
    if (mousePressed)
    {
      if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height)
      {
        layer.stroke(255);
        layer.strokeWeight(10);
        layer.line(mouseX - 20, mouseY - 40, pmouseX - 20, pmouseY - 40);
      }
    }
    layer.endDraw();
  }

  void Line(PGraphics layer, boolean clicked, int xFirst, int xSecond,
            int yFirst, int ySecond, ColourPicker colour)
  {
    if (xFirst < 10 || yFirst < 30 || xSecond > width - 200 || ySecond > height - 10)
    {
      return;
    }
    else if (clicked)
    {
      stroke(colourPicker._hueVal, colourPicker._satVal, colourPicker._briVal);
      line(xFirst - 20, yFirst - 40, mouseX - 20, mouseY - 40);
      return;
    }

    layer.beginDraw();
    layer.colorMode(HSB);
    layer.stroke(colourPicker._hueVal, colourPicker._satVal, colourPicker._briVal);
    layer.strokeWeight(10);
    layer.line(xFirst - 20, yFirst - 40, xSecond - 20, ySecond - 40);
  }

  void Rectangle()
  {

  }

  void Circle()
  {

  }

  void Polygon()
  {

  }

  void Duplicate()
  {

  }

  void ScaleShape()
  {

  }

  void RotateShape()
  {

  }

  void ClearLayer(PGraphics layer, Button button)
  {
    layer.clear();
    button.localState = false;
  }

  void Resize()
  {

  }

  void EdgeDetect()
  {

  }

  void Rotate()
  {

  }

  void Hue()
  {

  }

  void Saturation()
  {

  }

  void Brightness()
  {

  }

  void Contrast()
  {

  }

}
