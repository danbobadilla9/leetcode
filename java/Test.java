package java;

public class Test {
    public static void main(String args[]) {
        String word1 = "abc";
        String word2 = "pqr";
        String result = "";

        for (int i = 0; i < word1.length(); i++) {
            result += word1.charAt(i);
            
            if( word1.length() < word2.length() && i == ( word1.length() -1 ) ){
                result += word2.substring(i);
            }else if ( word1.length() > word2.length() && i == ( word2.length() -1 ) ){
            }else{
                result += word2.charAt(i);
           }

        }

        System.out.println(result);
    }
}
