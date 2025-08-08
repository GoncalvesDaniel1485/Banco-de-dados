public class Vetor4{
    public static void main(String[] args) {
        int[] vetor = new int[15];
        for(int i = 0; i < vetor.length; i++){
            vetor[i] = i + 1;
            System.out.println("Número original: " + vetor[i]);

            double[] vetor2 = new double[1];
            for(int j = 0; j < vetor2.length; j++){
                vetor2[j] = Math.sqrt(vetor[i]);

                System.out.println("Raiz quadrada: " + vetor2[j]);
    
}
}
}
}