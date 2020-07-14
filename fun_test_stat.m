function [omd,ewmd] = fun_test_stat(f_a, sigma_hat_e,sigma_hat_o, F, V,V_inv, m_q2, n)

P = eye(length(m_q2)) - F*pinv(F'*eye(length(m_q2))*F)*F'*eye(length(m_q2)) ; 
Rinv = pinv(P*V*P');

P2 = eye(length(m_q2)) - F*pinv(F'*V*F)*F'*V ;
Rinv2 = pinv(P2*V*P2');
%testing a new omd 
%omd = n*(m_q2 - f_a(sigma_hat_o))'*V_inv*(m_q2 - f_a(sigma_hat_o)) ; 
omd = n*(m_q2 - f_a(sigma_hat_o))'*Rinv2*(m_q2 - f_a(sigma_hat_o)) ; 

ewmd = n*(m_q2-f_a(sigma_hat_e))'*Rinv*(m_q2-f_a(sigma_hat_e)) ; 
%ewmd = n*(m_q2-f_a(sigma_hat))'*eye(length(m_q2))*(m_q2-f_a(sigma_hat)) ;   

end