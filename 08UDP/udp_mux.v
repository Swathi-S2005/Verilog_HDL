primitive mux(out,a,b,c,d,s0,s1);
output out;
input a,b,c,d,s0,s1;
table 
// a b c d s0 s1 : out;
  1 ? ? ? 0 0 : 1;
  0 ? ? ? 0 0 : 0;
  ? 1 ? ? 0 1 : 1;
  ? 0 ? ? 0 1 : 0;
  ? ? 1 ? 1 0 : 1;
  ? ? 0 ? 1 0 : 0;
  ? ? ? 1 1 1 : 1;
  ? ? ? 0 1 1 : 0;
endtable
endprimitive
