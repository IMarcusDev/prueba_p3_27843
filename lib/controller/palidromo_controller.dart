bool isPalindrome(String word) {
  final s = word.toLowerCase();

  for (int i = 0; i < s.length; i++) {
    if (s[i] != s[s.length - i]) return false;
  }

  return true;
}