// Problem: Longest Common Prefix
// Pattern: String Traversal
// Difficulty: Easy
// Time Complexity: O(n * m)
// Space Complexity: O(1)
// What I learned:
// - How to compare multiple strings.
// - How to use startsWith().
// - How to shrink a candidate prefix until it matches all strings.
// - How to use substring() to remove characters.
// - The common prefix can only get shorter, never longer.
//link : https://leetcode.com/problems/longest-common-prefix/description/?envType=problem-list-v2&envId=array

// Write a function to find the longest common prefix string amongst an array of strings.
//
// If there is no common prefix, return an empty string "".
//
//
//
// Example 1:
//
// Input: strs = ["flower","flow","flight"]
// Output: "fl"

//Input: strs = ["flower","flow","flight"]
// Output: "fl"
void main(){
  print(longestCommonPrefix(["flower","flow","flight"]));
}
String? longestCommonPrefix(List<String> strs) {
 String prefix = strs[0];
 for(int i = 1; i < strs.length; i++){
   while (!strs[i].startsWith(prefix)) {
     prefix= prefix.substring(0, prefix.length-1);
 }

 }
 return prefix;
}