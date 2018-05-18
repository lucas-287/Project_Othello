package jeu;

public class plateau
	{
	char plateau[][] = new char[8][8];
		{
			// initialisation du plateau (que des cases vides; v= vide; b= pion blanc; n= pion noir)
		for(int i=0; i<8; i++)
		{
			for(int j=0; j<8; j++)
			{
			plateau[i][j] = 'v';
	    	println("(" + i + "; " + j + ") = " + plateau[i][j]);
	  		}
		}
	}
	private void println(String string) {}
	
	public static void jeton(String[] args)
		{
			String[] plateau = {"v", "n", "b"};
			tableau(tab);
			System.out.println(toString(tab));
		}
	static void tableau(String[] tab)
	{
		for(String str : tab)
			System.out.println(str);
	}
	static String toString(String[] tab)
	{
		System.out.println("");
		String ret = "";
	}
	for(String str : tab)
		ret += str + ;
}