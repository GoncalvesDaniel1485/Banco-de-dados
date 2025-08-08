public class Vetor2{
    public static void main(String[] args){
        int[] vetor = new int[8];
        for(int i = 0; i < vetor.length; i++){
            vetor[0] = 1;
            vetor[1] = 2;
            vetor[2] = 3;
            vetor[3] = 4;
            vetor[4] = 5;
            vetor[5] = 6;
            vetor[6] = 7;
            vetor[7] = 8;

            System.out.println(vetor[i]);

             int[] vetor2 = {8};
            for(int j = 0; j < vetor2.length; j++){
                vetor2[j] = vetor[i] * 2;
                
                System.out.println(vetor2[j]);
    }

           
    
}
}
}