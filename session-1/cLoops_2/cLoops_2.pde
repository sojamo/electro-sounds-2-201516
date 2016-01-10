/* Loops 2 */

/* create an ArrayList with elements of type Float */ 
ArrayList<Float> numbers;



void setup() {
  size(960, 540, P3D);
  /* initialize ArrayList numbers */ 
  numbers = new ArrayList<Float>();
  /* use a loop to fill numbers with random numbers */
  for(int i=0;i<1000;i++) {
    numbers.add(random(0,1));
  }
  stroke(255,0,0);
}

void draw() {
  background(50);
  /* iterate ArrayList numbers, for each iteration f will be another element 
   * of ArrayList numbers - starting from index 0 and ending at index numbers.size()-1 */
  for(Float f:numbers) {
    rect(f*width, f*height, 10,10);
  }
}

/* Follow-up
 * 1. look up the ArrayList documentation
 * 2. familiarize yourself with the concept of loops and nested loops
 * 3. familiarize yourself with the difference between for(int i=0;i<1000;i++) and for(Float f:numbers)
 */
 
 