function m_q1 = fun_m_q1(c_q1)
    %pass in c(i) and it will send out m(i)

m_q1 = [] ;
%gg
for i = 1:26 
   m_q1 = [m_q1; c_q1(i,3+i:29)' ]  ;
end
%hh
for i = 1:26 
   m_q1 = [m_q1; c_q1(29+i,32+i:58)' ] ;
end 
% gh
for i = 1:26 
   m_q1 = [m_q1; c_q1(i,32+i:58)' ]  ;
end

% hg
 for i = 1:26 
    m_q1 = [m_q1; c_q1(30-i,30:56-i)' ] ;
 end 


 
end
