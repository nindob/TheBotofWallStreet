public void pauseButtonClicked(GButton source, GEvent event) { //_CODE_:pauseButton:443939:
  paused =!paused;
  
  if(paused)
    pauseButton.setText("Resume");
    
  else
    pauseButton.setText("Pause");
    
} //_CODE_:pauseButton:443939:

public void clearButtonClicked(GButton source, GEvent event) { //_CODE_:clearButton:271273:
  clear();} //_CODE_:clearButton:271273:
