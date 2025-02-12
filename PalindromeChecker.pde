public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public boolean palindrome(String word)
{
  //your code here

  // If a char isn't "[^a-zA-Z0-9]" (eg. '!', ','), it will be replaced w/ blank
  String cleanedWord = word.replaceAll("[^a-zA-Z0-9]", "").toLowerCase();
  // Check if the cleaned word is the same as its reverse
  return cleanedWord.equals(reverse(cleanedWord));

  //return false;
}

public String reverse(String str)
{
    String sNew = new String();

    //your code here
    // Loop through the string in reverse order and add alphanumeric characters
    for (int i = str.length() - 1; i >= 0; i--) {
        char c = str.charAt(i);
        // only add alphanumeric charas to the reversed string
        if (Character.isLetterOrDigit(c)) {
            sNew += c;
        }
    }
    return sNew.toLowerCase();
}
