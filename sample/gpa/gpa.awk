BEGIN{
	FS = ""
}
($0>0&&$0<101){
	n = $0;
}
/[ABCDF]+/{
	for(i=1;i<=n;i++){
		if($i == "A"){
			s += 4;
		}
		else if($i == "B"){
			s += 3;
		}
		else if($i == "C"){
			s += 2;
		}
		else if($i == "D"){
			s += 1;
		}
	}
}
END{
	print s/n;
}

