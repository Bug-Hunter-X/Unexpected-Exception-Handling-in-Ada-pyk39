procedure Example is
   X : Integer := 1;
   Y : Integer := 0;
   Result : Integer;
begin
   begin
      if Y /= 0 then
         Result := X / Y;
      else
         raise Constraint_Error with "Division by zero";
      end if;
   exception
      when Constraint_Error =>
         Put_Line("Exception caught: " & Exception_Message);
   end;
   Put_Line("Execution continues after exception handling");
exception
   when others =>
      Put_Line("Unhandled exception");
end Example;