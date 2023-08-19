package body signal.dirac is
    eps : float := 0.005;
   function Value (g : in out Generator; arg : Float) return Float is
        deltax : float := 1.0 / g.frequency ;
        idx : float ;
   begin
        if abs(arg) <= eps
        then
            return g.amplitude;
        end if;
        idx := float'floor(arg/deltax);
        if abs(idx*deltax - arg) < eps
        then
            return g.amplitude;
        end if ;
        return 0.0; 
   end Value;

end signal.dirac;
