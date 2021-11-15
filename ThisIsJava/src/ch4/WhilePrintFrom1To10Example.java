package ch4;

public class WhilePrintFrom1To10Example {

	public static void main(String[] args) {
		int i = 1;
		
		while(i<=10) {
			System.out.println(i);
			i++; //부재 시 무한루프
		}
	}

}
