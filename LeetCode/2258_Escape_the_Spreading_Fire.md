You are given a 0-indexed 2D integer array grid of size m x n which represents a field. Each cell has one of three values:
- 0 represents grass,
- 1 represents fire,
- 2 represents a wall that you and fire cannot pass through.
You are situated in the top-left cell, (0, 0), and you want to travel to the safehouse at the bottom-right cell, (m - 1, n - 1). 
Every minute, you may move to an adjacent grass cell. After your move, every fire cell will spread to all adjacent cells that are not walls.  

Return the maximum number of minutes that you can stay in your initial position before moving while still safely reaching the safehouse. 
If this is impossible, return -1. If you can always reach the safehouse regardless of the minutes stayed, return `10^9`.  

Note that even if the fire spreads to the safehouse immediately after you have reached it, it will be counted as safely reaching the safehouse.  

A cell is adjacent to another cell if the former is directly north, east, south, or west of the latter (i.e., their sides are touching).  

![image](https://user-images.githubusercontent.com/17162465/166126330-8577bbe6-a3dd-477c-ab4a-80a3aa27d43d.png)

![image](https://user-images.githubusercontent.com/17162465/166126338-80f4440c-ae1d-48ce-8af8-b683f1bcb641.png)

Constraints:
- m == grid.length
- n == grid[i].length
- 2 <= m, n <= 300
- 4 <= m * n <= 2 * 104
- grid[i][j] is either 0, 1, or 2.
- grid[0][0] == grid[m - 1][n - 1] == 0

My Solution:
```
class Solution {
public:
    vector<pair<int, int>> dirs = {{0,1}, {1,0}, {-1,0}, {0,-1}};
    int maximumMinutes(vector<vector<int>>& grid) {
        int m = grid.size(), n = grid[0].size();
        queue<pair<int, int>> q;
        vector<vector<int>> fire_times(m, vector<int>(n, INT_MAX));
        for(int i = 0; i < grid.size(); i++){
            for(int j = 0; j < grid[0].size(); j++){
                if(grid[i][j]==1) {
                    q.push({i, j});
                    fire_times[i][j] = 0;
                }
            }
        }
        
        int mnt = 1;
        while(!q.empty()){
            int qsize = q.size();
            while(qsize--){
                auto pr = q.front(); q.pop();
                for(auto dir: dirs){
                    int x = pr.first + dir.first;
                    int y = pr.second + dir.second;
                    if(x >= 0 && y >= 0 && x < m && y < n 
                       && grid[x][y] == 0 && fire_times[x][y]== INT_MAX){
                        fire_times[x][y] = min(fire_times[x][y], mnt);
                        q.push({x,y});
                    }
                }
            }
            mnt++;
        }
        
        queue<tuple<int, int, int>> qp;
        qp.push({0,0,1e9});
        mnt =1;
        int res = -1;
        while(!qp.empty()){
            int qpsize = qp.size();
            while(qpsize--){
                auto [i, j, min_] = qp.front(); qp.pop();
                grid[i][j] = 1;
                for(auto dir: dirs){
                    int x = i + dir.first;
                    int y = j + dir.second;
                    if(x == m-1 && y == n-1 && fire_times[x][y] >= mnt) {
                        int next_min = (fire_times[x][y] == INT_MAX) ? min_ : min(min_, fire_times[x][y] - mnt);
                        grid[i][j] = 1;
                        res = max(res, next_min);
                    }
                    else if(x >= 0 && y >= 0 && x < m && y < n && grid[x][y] == 0 && fire_times[x][y] > mnt){
                        int next_min = (fire_times[x][y] == INT_MAX) ? min_ : min(min_, fire_times[x][y] - mnt - 1);
                        grid[i][j] = 1;
                        qp.push({x,y, next_min});
                    }
                }
            }
            mnt++;
        }
        
        return res;
    }
};
```
