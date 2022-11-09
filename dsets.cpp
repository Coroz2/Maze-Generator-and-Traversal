/* Your code here! */
#include "dsets.h"

using namespace std;

void DisjointSets::addelements(int num) {
	//add elements to the vector
	for (int i = 0; i < num; i++) {
        elements.push_back(-1);
    }
    return; 		
}

int DisjointSets::find(int elem) {
    if (elements[elem] >= 0) {
        //case where we are not at the root and we just recurse
        elements[elem] = find(elements[elem]);
        return elements[elem];
    }
    //otherwise we just return
    return elem; 
}

int DisjointSets::size(int elem){
  return -1 * elements[find(elem)];
}

void DisjointSets::setunion(int x, int y) {
    int x_ = find(x); 
    int y_ = find(y);
    //this is the case when they are not in union 
    if (x_ != y_) {
        //if x is less than y
        if (x_ < y_) {
            elements[x_] = elements[x_] + elements[y_];
            elements[y_] = x_;
        } else {
            elements[y_] = elements[x_] + elements[y_];
            elements[x_] = y_;
        }
    }
    //otherwise nothing will happen since it is already unioned

}