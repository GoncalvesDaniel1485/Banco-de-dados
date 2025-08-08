public class Vetor3{
    public static void main(String[] args) {
        int[] vetor = new int[15];
        for(int i = 0; i < vetor.length; i++){
        vetor[i] = i + 1;
        System.out.println("Corte seco");
       

        System.out.println(vetor[i]);

        int[] vetor2 = new int[1];
        for(int j = 0; j < vetor2.length; j++){
            vetor2[j] = vetor[i] * vetor[i];

            System.out.println(vetor2[j]);
       
    
}
}
    }
}