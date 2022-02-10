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
  word = word.toLowerCase();
  word = noSpaces(word);
  word = onlyLetters(word);
  
  return word.equals(reverse(word));
}
public String reverse(String str)
{
    String sNew = new String();
    for (int i = str.length(); i > 0; i--){
      sNew = sNew + str.substring(i-1,i);
    }
    return sNew;
}

public String noSpaces(String sWord){
  String output = "";
  for (int i =0; i<sWord.length(); i++){
    if(sWord.substring(i,i+1).equals(" ")){
    } else {
      output = output + sWord.substring(i,i+1);
    }
  }
  return output;
}

public String onlyLetters(String sString){
  String output = "";
  for (int i=0; i<sString.length(); i++){
    if(Character.isLetter(sString.charAt(i))){
      output = output + sString.charAt(i);
    }
  }
  return output;
}
