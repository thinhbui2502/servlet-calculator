public class Calculator {
    public static int calculate(int firstOperand, int secondOperand, char operator) {
        switch (operator) {
            case '+':
                return firstOperand + secondOperand;
            case '-':
                return firstOperand - secondOperand;
            case '*':
                return firstOperand * secondOperand;
            case '/':
                if (secondOperand!=0) {
                    return firstOperand / secondOperand;
                } else
                    throw new RuntimeException("Học chưa? làm sao àm chia 0 được???");
            default:
                throw new RuntimeException("Điền vớ va vớ vẩn!!");
        }
    }
}
