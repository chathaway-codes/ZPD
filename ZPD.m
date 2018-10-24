ZPD(str1,str2,delim) ; Returns a string with the $P numbers that are different between str1 and str2
  NEW i,ret,str1len,str2len
  SET i=1,ret=""
  SET str1len=$LENGTH(str1,delim),str2len=$LENGTH(str2,delim)
  FOR  SET p1=$P(str1,delim,i),p2=$P(str2,delim,i) QUIT:(i>str1len)&(i>str2len)  DO
  . SET diff=(p1'=p2)!((i>str1len)!(i>str2len))
  . SET:diff&(ret'="") ret=ret_","
  . SET:diff ret=ret_i
  . IF $I(i)
  QUIT ret
