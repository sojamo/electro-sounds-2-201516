/* Variables and Data Structures 3 */

/* Maps */
HashMap myMap = new HashMap(); /* create a new List */

void setup() {
  size(960, 540, P3D);

  /* fill the list with values.
   * by default and if not specified, Processing/Java adds values with the
   * default type Object to a List */
  myMap.put("a", 100);
  myMap.put("b", 200);
  myMap.put("c", 300);
  myMap.put("d", 400);
  println(myMap); /* print the content of myList into the console */
}

void draw() {
  background(50);
  fill(0, 255, 128);
  noStroke();
  int x = (int)(myMap.get("b"));
  rect(x, 200, 120, 50);
}

/* Follow-up
 * 1. look up the HashMap documentation
 * 2. familiarize yourself with the concept of casting
 * 3. important HashMap functions are put, get, entrySet, keySet, values, containsKey
 */