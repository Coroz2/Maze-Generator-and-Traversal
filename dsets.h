/* Your code here! */
#pragma once

#include <vector>

class DisjointSets {
public:
	void addelements(int num); 
	int find(int elem);  
	void setunion(int x, int y);  
	int size(int elem);  
	
private:
	std::vector<int> elements; 
};