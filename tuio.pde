void addTuioObject(TuioObject tobj) {
  
}
  
// called when an object is moved
void updateTuioObject (TuioObject tobj) {
 
}

// called when an object is removed from the scene
void removeTuioObject(TuioObject tobj) {
  
}

// --------------------------------------------------------------
// called when a cursor is added to the scene
void addTuioCursor(TuioCursor tcur) {
  println("add\tcursor" + tcur.getCursorID());
}

// called when a cursor is moved
void updateTuioCursor (TuioCursor tcur) {
  
}

// called when a cursor is removed from the scene
void removeTuioCursor(TuioCursor tcur) {
  println("del\tcursor" + tcur.getCursorID());
}

// --------------------------------------------------------------
// called when a blob is added to the scene
void addTuioBlob(TuioBlob tblb) {
  
}

// called when a blob is moved
void updateTuioBlob (TuioBlob tblb) {
  
}

// called when a blob is removed from the scene
void removeTuioBlob(TuioBlob tblb) {
  
}

// --------------------------------------------------------------
// called at the end of each TUIO frame
void refresh(TuioTime frameTime) {
  
}
