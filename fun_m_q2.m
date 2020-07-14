function m = fun_m_q2(c)
    %pass in c(i) and it will send out m(i)

m = [] ;
%gg
for i = 1:27 
   m = [m; c(i,i:i+2)' ]  ;
end
   m = [ m ; c(28,28:29)'] ; 
   m = [ m ; c(29,29)'] ; 
%hh
for i = 30:56 
   m = [m; c(i,i:i+2)' ]  ;
end
   m = [ m ; c(57,57:58)'] ;
   m = [ m ; c(58,58)'] ;
   
% gh
for i = 1:27 
   m = [m; c(i,29+i:29+i+2)' ]  ;
end
   m = [ m ; c(28,57:58)'] ;
   m = [ m ; c(29,58)'] ;

% hg
   m = [ m ; c(2,1)'] ; %1st auto 
for i = 1:27 
   m = [m; c(i+2,i:i+1)' ]  ; %2nd, 1st 
end
 
end
