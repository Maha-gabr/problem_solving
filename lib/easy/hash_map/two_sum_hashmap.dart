// Problem: Two Sum
// Pattern: Hash Map
// Difficulty: Easy
// Time Complexity: O(n)
// Space Complexity: O(n)
// What I learned:
// - How to use Map<int, int> to store values and their indices.
// - How to reduce a nested-loop solution from O(n²) to O(n).
// - How to check if a key exists using containsKey().
// - Why we search for the complement (target - currentNumber).
// - Why the current number is added to the map after checking for the complement.
// - Hash Maps trade extra memory for faster lookup.

//link:  https://leetcode.com/problems/two-sum/?envType=problem-list-v2&envId=array&

//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

// Example 1:

// Input: nums = [2,7,11,15], target = 9
// Output: [0,1]
// Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

void  main(){
  print (twoSum([3,3,4,6], 6));
}

List<int> twoSum (List<int> nums, int target){
  Map<int , int> map ={};
  for(int i =0 ; i <nums.length ; i++){
    int complement = target - nums[i];

    if(map.containsKey(complement)){
      return [map[complement]! , i];
    }
    map[nums[i]] = i;

  }
  return [];
}