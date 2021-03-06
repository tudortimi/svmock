class objtype;
endclass

class call;
  //----------------
  // Void functions
  //----------------
  function void functionNoArgReturnVoid();
  endfunction

  function void functionIntArgReturnVoid(logic[31:0] x);
  endfunction

  function void functionIntStringArgsReturnVoid(int x = 1, string y);
  endfunction

  function void functionObjBitLogicArgsReturnVoid(objtype x, bit y, logic [31:0] z);
  endfunction


  //-----------------------------------------
  // Void functions with aggregate arg types
  //-----------------------------------------

  function void functionAssocArgReturnVoid(int x [string]);
  endfunction

  function void functionQueueArgReturnVoid(int x [$]);
  endfunction

  function void functionAssocQueueArgReturnVoid(int x [string], int y [$]);
  endfunction

  function void functionFixedArrayArgReturnVoid(string x [10], int y);
  endfunction

  function void functionDynamicArrayArgReturnVoid(string x, objtype y [], int z);
  endfunction

  // struct
  // union
  // multi-dimensional array
  // refs
  // outputs(?)



  //--------------------------------------
  // functions with non-void return types
  //--------------------------------------
  function int functionNoArgReturnInt();
    return 1;
  endfunction

  function string functionNoArgReturnString();
    return "nothing";
  endfunction

  function int functionIntArgReturnInt(int y = 14);
    return y;
  endfunction


  //-------
  // tasks
  //-------
  virtual task taskNoArg();
  endtask

  virtual task taskOneOutArg(output bit z);
  endtask

  virtual task taskTwoOutArg(output bit y, output string z);
  endtask
endclass
