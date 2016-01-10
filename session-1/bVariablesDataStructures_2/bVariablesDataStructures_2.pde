/* Variables and Data Structures 2 */

/* Lists: ArrayLists support dynamic arrays that can grow and shrink as needed. */
ArrayList myList = new ArrayList(); /* create a new List */

void setup() {
  size(960,540,P3D);
  
  /* fill the list with values.
   * by default and if not specified, Processing/Java adds values with the
   * default type Object to a List */
  myList.add(1);
  myList.add(2);
  myList.add(3);
  myList.add(4);
  println(myList); /* print the content of myList into the console */
}

void draw() {
  background(50);
  fill(0,255,128);
  noStroke();
  for(Object o:myList) {
    int n = (int)(o); /* in order to use an element of myList as int, we need to cast it */
    rect(n*20,200,15,50);
  }
}


void keyPressed() {
  if(key=='1') {
    
    if(myList.isEmpty()==false) { /* check if myList is empty and only remove the first element if it is not empty */
      println("removing the first element of myList", myList.get(0),". Current size is",myList.size());
      myList.remove(0); /* removes the first element of the list*/
    } else {
      println("The List is empty, can't remove any elements.");
    }
  } else if(key=='2') {
    myList.add(int(random(1,40))); /* adds a random int to the end of list */
    int indexOfLastElement = myList.size()-1;
    println("adding an element to myList", myList.get(indexOfLastElement),". Current size is",myList.size());
  }
}

/* Follow-up
 * 1. look up the ArrayList documentation and API
 * 2. important ArrayList functions: add, get, size, remove 
 * 3. familiarize yourself with the concept of casting
 */
 