public void setup(){
	size(300,300);
	background(0);
}
public void draw(){
	fractal(150,150,100);

}
public void fractal(int x, int y, int len){
	stroke(x,y,255);
	if (len <= 10){
		rect(x,y,len,len);
		rect(x,y,len+20,len+20);
		fill(x+10,y+20,255);
	}else{
		fractal(x-len, y, len/2);
		fractal(x+len, y, len/2);
		fractal(x, y-len, len/2);
		fractal(x, y+len, len/2);
	}
}
