#include "maze.h"
#include "cs225/PNG.h"
#include "dsets.h"
#include <vector>
#include <cstdlib>
#include <iostream>
#include <queue>
#include <utility>
#include <map>
#include <algorithm>

using namespace std;
using namespace cs225;

SquareMaze::SquareMaze() {
	
}
void SquareMaze::makeMaze(int width, int height) {
    width_ = width;
    height_ = height;
    sets.addelements(width * height); 
    for (int i = 0; i < (width * height); i++) {
        rWalls.push_back(true);
        dWalls.push_back(true);
    }
    int x; 
    int y; 
    while (sets.size(0) < (width * height)) {
        x = rand() % width_;
        y = rand() % height_; 
        if (rand() % 2 == 0) {
            if (y != height_ - 1){
                if (sets.find(y * width_ + x) != sets.find(y * width_ + x + width_)){
                    setWall(x, y, 1, false);
                    sets.setunion(y * width_ + x, y * width_ + x + width_);
                }
            }
        } else {
            if (x != width_ - 1) {
                if(sets.find(y * width_ + x) != sets.find(y * width_ + x + 1)) {
                    setWall(x, y, 0, false);
                    sets.setunion(y * width_ + x, y * width_ + x + 1);
                }
            }
        }   
    }
}

void SquareMaze::setWall(int x, int y, int dir, bool exists) {
    if(dir == 1){ //set below
        dWalls[y * width_ + x] = exists;
    }   else if(dir == 0){ // set to the right
        rWalls[y * width_ + x] = exists;
    }
}

bool SquareMaze::canTravel(int x, int y, int dir) const {
  if (dir == 0) { // check right
    return rWalls[y * width_ + x] == false;
  } else if (dir == 1) { // check down
    return dWalls[y * width_ + x] == false;
  } else if (dir == 2) { // check left 
    return (x != 0) && (rWalls[y * width_ + x - 1] == false);
  } else if (dir == 3) { // check up
    return (y != 0) && (dWalls[y * width_ + x - width_] == false);  
  }
  return false; 
}

vector<int> SquareMaze::solveMaze() {
    vector<bool> visited; 
    vector<int> bottomRow;
    map<int, int> path; 
    queue<int> q;
    vector<int> solution; 
    for (int i = 0; i < (width_ * height_); i++) { //make sure that we set all to be not visited
        visited.push_back(false); 
    }
    visited[0] = true; // set that we visited the origin
    q.push(0); //
    while (!q.empty()) {
        int z = q.front();
        q.pop();
        int x = z % width_; // calculate coordinates 
        int y = z / width_;
        if (y == height_ - 1) bottomRow.push_back(z); // pushback any coordinates that could be in the bottom row
        
        if (canTravel(x, y, 0) && !visited[z + 1]) {
          path.insert(pair<int, int> (z + 1, z)); //insert where the next step is 
          visited[z + 1] = true; // mark as visited 
          q.push(z + 1); 
        }
        if (canTravel(x, y, 1) && !visited[z + width_]) {
          path.insert(pair<int, int> (z + width_, z));
          visited[z + width_] = true;
          q.push(z + width_);
        }
        if (canTravel(x, y, 2) && !visited[z - 1]) {
          path.insert(pair<int, int> (z - 1, z));
          visited[z - 1] = true;
          q.push(z - 1);
        }
        if (canTravel(x, y, 3) && !visited[z - width_]) {
          path.insert(pair<int, int> (z - width_, z));
          visited[z - width_] = true;
          q.push(z - width_);
        }
    }
    int last = width_ - 1;
    while(bottomRow[last] == bottomRow[last - 1]) { // calculate our destination 
        last -= 1;
    }
    int var = bottomRow[last]; //set our start for building the path at the end 
    while (var != 0) { // iterate through the path backwards adding to to the solution we will return
        int prev = path[var];
        if (var == prev + 1) {
            solution.push_back(0); 
        } else if (var == prev + width_) {
            solution.push_back(1);
        } else if (var == prev - 1) {
            solution.push_back(2);
        } else if (var == prev - width_) {
            solution.push_back(3);
        }
        var = prev;
    }
    reverse(solution.begin(),solution.end()); //reverse since we added to vector starting at end of path
    return solution; 

}

PNG* SquareMaze::drawMaze() const {
 int canvWidth = width_ * 10 + 1;
 int canvHeight = height_ * 10 + 1;
 PNG* canvas = new PNG(canvWidth, canvHeight);
 // blacken the top row and left column
 for(int i = 10; i < canvWidth; i++) {
    canvas->getPixel(i, 0).l = 0;
 }
 for(int j = 0; j < canvHeight; j++){
    canvas->getPixel(0, j).l = 0;
 }
 for (int x = 0; x < width_; x++) { // blacken the right walls 
    for (int y = 0; y < height_; y++) {
        if(rWalls[y * width_ + x]) {
            for(int k = 0; k <= 10; k++) {
                canvas->getPixel((x + 1) * 10, y * 10 + k).l = 0;
            }
        }
    }
 }
 for (int x = 0; x < width_; x++) { // blacken the down walls
    for (int y = 0; y < height_; y++) {
        if(dWalls[y * width_ + x]) {
            for(int f = 0; f <= 10; f++) {
                canvas->getPixel(x * 10 + f, (y + 1) * 10).l = 0;
            }
        }
    }
 }
 return canvas; 
}
PNG* SquareMaze::drawMazeWithSolution() {
  PNG* canvas = drawMaze(); // start with maze just w/out solutionj
  vector<int> solution = solveMaze(); //get vector with needed path
  int x = 5;
  int y = 5;
  for (size_t i = 0; i < solution.size(); i++) { //change the colors of those found to be part of path and iterate 
    for (int j = 0; j < 10; j++) {
      canvas->getPixel(x, y).h = 0;
      canvas->getPixel(x, y).s = 1;
      canvas->getPixel(x, y).l = 0.5;
      canvas->getPixel(x, y).a = 1;
      if (solution[i] == 0) {
        x++;
      }
      if (solution[i] == 1) {
        y++;
      } 
      if (solution[i] == 2) {
        x--;
      }
      if (solution[i] == 3) {
        y--;
      } 
    }
  }
  canvas->getPixel(x, y).h = 0;
  canvas->getPixel(x, y).s = 1;
  canvas->getPixel(x, y).l = 0.5;
  canvas->getPixel(x, y).a = 1;
  x -= 4;
  y += 5;
  for (int i = 0; i < 9; i++) {
    HSLAPixel & pixel = canvas->getPixel(x + i, y);
    pixel.l = 1;
  }
  return canvas;
}
