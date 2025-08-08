public class Vetor5{
    public static void main(String[] args) {
        int[] vetor = new int[10];
        for(int i = 0; i < vetor.length; i++){
            vetor[i] = i + 1;
            System.out.println("Número original: " + vetor[i]);

            int[] vetor2 = new int[1];
            for(int j = 0; j < vetor2.length; j++){
                vetor2[j] = vetor[i] * i;
                System.out.println("Valor modificado: " + vetor2[j]);
    }
    
}
}
}