class parent;
  int p_a;
  
 virtual function void display();
    $display("This is Parent");
  endfunction
endclass

class child extends parent;
  function void display();
    $display("This is Child");
  endfunction
endclass

class child_1 extends child;
  int p_a;
  function void display();
    $display("This is Child_1");
  endfunction
endclass

module tb;
  initial begin
    parent P;
    child C;
    child_1 C_1;
    
    //P = new();
    //C = new();
    //P = C;
    C_1 = new();
    P = C_1;
    C = C_1;
    
    P.p_a = 20;
    C_1.p_a = 10;
    $display("Value of P.p_a = %0d", P.p_a);
    
    $display("Value of C.p_a = %0d", C.p_a);
    
    $display("Value of C_1.p_a = %0d", C_1.p_a);
    
    P.display();
    C.display();
    C_1.display();
  end
endmodule
