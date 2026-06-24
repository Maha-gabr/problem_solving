// Problem: Two Sum
// Pattern: Brute Force
// Difficulty: Easy
// Time Complexity: O(n²)
// Space Complexity: O(1)
// What I learned:
// - How to search pairs in an array.
// - Why nested loops are expensive.
// - Why HashMap can optimize lookups.
//link:  https://leetcode.com/problems/two-sum/?envType=problem-list-v2&envId=array&

//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

// Example 1:

// Input: nums = [2,7,11,15], target = 9
// Output: [0,1]
// Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].


void  main(){
 print (twoSum([3,2,4,6], 6));
}

List<int> twoSum(List<int> nums, int target) {
  for(int i =0 ; i < nums.length ; i++){
    int secondNum= target - nums[i];
    for(int j =i+1 ; j < nums.length ; j++){
      if(secondNum == nums[j]){
        return [i ,j];
      }
    }
  }
  return [];

}


