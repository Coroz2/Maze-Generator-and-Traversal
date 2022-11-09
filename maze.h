#pragma once

#include "dsets.h"
#include <vector>
#include "cs225/PNG.h"
using namespace std;
using namespace cs225;
class SquareMaze{
public:
  SquareMaze();
  void makeMaze(int width, int height);
  void setWall(int x, int y, int dir, bool exists);
  bool canTravel(int x, int y, int dir) const;
  vector<int> solveMaze();
  PNG* drawMaze() const;
  PNG* drawMazeWithSolution();
  private:
	int width_;
	int height_;
    vector<bool> dWalls; 
    vector<bool> rWalls;

    // class Node {
	// public:
	// 	Node(bool d, bool r) {
	// 		down = d;
	// 		right = r;
	// 	}
	// 	// Each node only needs to store 2 bits
	// 	bool down;
	// 	bool right;
	// };
	DisjointSets sets;
	
};

