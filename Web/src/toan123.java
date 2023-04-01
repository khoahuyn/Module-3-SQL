public class toan123 {
    public boolean trochoi(int n) {
        if (n < 0) {
            return false;
        } else {
            if (n % 2 != 0) {
                System.out.println("BACH");
            } else {
                System.out.println("KHOA");
            }
        }
        return true;
    }

    public static void main(String[] args) {
        toan123 test=new toan123();
        test.trochoi(4);
    }
}
