class Slider
{
  float xBarPos, yBarPos, barWidth, barHeight, mapValueLow, mapValueHigh,
        retValue;
  String sliderName, sNameValue;

  Slider(float xPos, float yPos, float barW, float barH, float mVL, float mVH,
         String sName, String sNValue)
  {
    xBarPos = xPos;
    yBarPos = yPos;
    barWidth = barW;
    barHeight = barH;
    mapValueLow = mVL;
    mapValueHigh = mVH;
    sliderName = sName;
    sNameValue = sNValue;
  }

  int DrawSlider(float retValue)
  {
    float sliderPos = map(retValue, mapValueLow, mapValueHigh, 0.0, barWidth);

    stroke(80);
    fill(100);
    rect(xBarPos, yBarPos, barWidth, barHeight);

    if(mousePressed && mouseX >=  xBarPos && mouseX <= (xBarPos + barWidth)
       && mouseY >= yBarPos && mouseY <= yBarPos + barHeight)
    {
      sliderPos = mouseX - xBarPos;
      retValue = map(sliderPos, 0.0, barWidth, mapValueLow, mapValueHigh);
    }

    if (sliderName == "Size")
    {
      textSize(14);
      fill(1);
      text(sliderName + ": " + (int)retValue + " " + sNameValue, xBarPos + 10, yBarPos - 10);
    }
    else if (sliderName == "Opacity")
    {
      textSize(14);
      fill(1);
      text(sliderName + ": " + (int)((retValue / mapValueHigh) * 100) + " " + sNameValue, xBarPos + 10, yBarPos - 10);
    }

    stroke(1);
    fill(50);
    rect(sliderPos + xBarPos - 3, yBarPos - 5, 6, barHeight + 10);

    return (int)retValue;
  }
}
