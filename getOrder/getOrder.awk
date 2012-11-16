BEGIN{
	n = 0;
	srand();
}
{
	line[NR] = $0;
}
END{
	while(n != NR){
		l = randint(NR);
		if(line[l] != 0){
			n++;
			print n "番目：" line[l];
			delete line[l];
		}
	}
}
function randint(n){
	return int(n * rand()) + 1;
}
