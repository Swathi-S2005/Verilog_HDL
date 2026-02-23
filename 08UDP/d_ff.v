primitive d_ff (q, d, clk, rst);
output q;
reg q;
input d, clk, rst;

initial q= 0;

table
// d  clk   rst : q : q+
   ?   ?     1  : ? : 0;  
   1  (01)   0  : ? : 1;  
   0  (01)   0  : ? : 0; 
   ?  (10)  0  : ? : -;
   ?  (0?)  0  : ? : -;   
   ?  (1?)  0  : ? : -;   
   ? ? 0: ? : -;
endtable
endprimitive
