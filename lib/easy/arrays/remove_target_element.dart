// Problem: Remove Element
// Pattern: Two Pointers
// Difficulty: Easy
// Time Complexity: O(n)
// Space Complexity: O(1)
// What I learned:
// - How to remove specific values in-place.
// - How to use one pointer for reading and another for writing.
// - Not every element should be copied.
// - Return the number of remaining elements.

// link :https://leetcode.com/problems/remove-element/description/?envType=problem-list-v2&envId=array

//المطلوب
//
// لديك:
//
// مصفوفة أرقام nums
// رقم معين val
//
// المطلوب:
//
// إزالة كل ظهور للرقم val.
// تعديل نفس المصفوفة (In-place).
// إرجاع عدد العناصر المتبقية k.

//ex :
//nums = [0,1,2,2,3,0,4,2]
// val = 2

//[0,1,3,0,4,_,_,_]

//k = 5
void main() {
  List<int> nums = [1,1,2,7,2,3];

  int k = Solution.removeElement(nums,2 );

  print(k); // 3
  print(nums.sublist(0, k)); // [1, 2, 3]
}

class Solution {
 static int removeElement(List<int> nums, int val) {
    int i = 0;

    for (int j = 0; j < nums.length; j++) {
      if (nums[j] != val) {
        nums[i] = nums[j];
        i++;
      }
    }

    return i;
  }
}