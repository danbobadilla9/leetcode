// Se inicia la siguiente tarea de realizar al menos 2 tipos de ejercicios, utilizando el reto de Leetcode 75 

// ############################# LeetCode 75: 1768. Merge Strings Alternately 

// ------------------------------ SOLUCIÓN 1 

// Basicamente nos piden alternar dos strings, sin embargo, siempre nos piden que el word1 va a ser el que se inicia como intercalador, para ello primero lo tomamos para recorrer el for 
// de esta manera el segundo lo utilizamos como un if, primero preguntamos si el word1 es menor al word2 en este caso deberemos agregar todo el resto de palabras de word2 al resultado final, para ello, el indice i debe de ser el ultimo recorrido,
// en el caso contrario cuando el word1 es mayor, unicamente preguntamos en el if si i es mayor a nuestra longitud de word2 de esta manera sabemos que ya no hay que agregar mas valores 
// el caso default es basicamente agregar valores de nuestra word2


public class 20240825 {
    public String mergeAlternately(String word1, String word2) {
          String result = "";
        for (int i = 0; i < word1.length(); i++) {
            result += word1.charAt(i);
            
            if( word1.length() < word2.length() && i == ( word1.length() -1 ) ){
                result += word2.substring(i);
            }else if ( i > ( word2.length() -1 ) ){
            }else{
                result += word2.charAt(i);
           }
        }

        return result;
    }
}

// ------------------------------ SOLUCIÓN 2


class Solution {
    public String mergeAlternately(String word1, String word2) {
        StringBuilder result = new StringBuilder();
        int i = 0, j = 0;

        while (i < word1.length() && j < word2.length()) {
            result.append(word1.charAt(i++));
            result.append(word2.charAt(j++));
        }

        while (i < word1.length()) {
            result.append(word1.charAt(i++));
        }

        while (j < word2.length()) {
            result.append(word2.charAt(j++));
        }

        return result.toString();
    }
}


