function m = fun_m_q4(c)
    %pass in c(i) and it will send out m(i)

m = [] ;
%gg
for i = 1:28 
   m = [m; c(i,i:i+1)' ]  ;
end 
   m = [ m ; c(29,29)'] ; 
%hh
for i = 30:57 
   m = [m; c(i,i:i+1)' ]  ;
end
   m = [ m ; c(58,58)'] ;
   
% gh
for i = 1:28 
   m = [m; c(i,29+i:29+i+1)' ]  ;
end
   m = [ m ; c(29,58)'] ;

% hg
   m = [ m ; c(2,1)'] ; %1st auto 
for i = 1:27 
   m = [m; c(i+2,i+1)' ]  ; % 1st 
end
 
end