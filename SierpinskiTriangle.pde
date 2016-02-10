public void setup()
{
	size(350, 350);
	background(0);
}
public void draw()
{
		sierpinskiTriangle(60, 300, 250);
}
public void sierpinskiTriangle(int x, int y, int len)
{
	if(len <= 20)
	{
		fill(255);
		triangle(x, y, x+len/2, y-len, x+len, y);
	}
	else
	{
		sierpinskiTriangle(x, y, len/2);
		sierpinskiTriangle(x+len/2, y, len/2);
		sierpinskiTriangle(x+len/4, y-len/2, len/2);
	}
}