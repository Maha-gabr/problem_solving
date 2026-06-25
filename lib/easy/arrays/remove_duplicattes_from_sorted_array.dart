// Problem: Remove Duplicates from Sorted Array
// Pattern: Two Pointers
// Difficulty: Easy
// Time Complexity: O(n)
// Space Complexity: O(1)
// What I learned:
// - How to use two pointers on a sorted array.
// - How to modify an array in-place.
// - How to keep only unique elements.
// - Why sorted arrays make duplicate detection easier.

//هذه من أشهر مسائل Two Pointers في LeetCode، لذلك احفظ الفكرة أكثر من الكود نفسه. عندما ترى:
//
// Sorted Array
// Remove duplicates
// In-place
//
// فغالبًا أول شيء يجب أن يخطر ببالك هو Two Pointers.

//link : https://leetcode.com/problems/remove-duplicates-from-sorted-array/description/?envType=problem-list-v2&envId=array

void main() {
  List<int> nums = [1,1,2,2,3];

  int k = Solution.removeDuplicates(nums);

  print(k); // 3
  print(nums.sublist(0, k)); // [1, 2, 3]
}


class Solution {
  static int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) return 0;

    int i = 0;

    for (int j = 1; j < nums.length; j++) {
      if (nums[j] != nums[i]) {
        i++;
        nums[i] = nums[j];
      }
    }

    return i + 1;
  }
}