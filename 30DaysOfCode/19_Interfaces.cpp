//Write your code here
class Calculator : public AdvancedArithmetic {
    public : int divisorSum ( int n ) {
        
        int sumSoFar = 0;
        
        for (int i = 1; i <= n; i++) {
            
            if (0 == n % i) {
                sumSoFar += i;
            }
            
        }  
        
        return sumSoFar;
    }
};
