(* Workhorse function, which [main] will call *)
fun counter n = return <xml><body>
  Current counter: {[n]}<br/>
  <a link={counter (n + 1)}>Increment</a><br/>
  <a link={counter (n - 1)}>Decrement</a>
</body></xml>
(*
fun square x = return <xml><body>
  Current value: {[x]}<br/>
  <a link={square (x * x)}>Square</a><br/>
</body></xml>
 *)
fun acounter z = return <xml><body>
  Current acounter: {[z]}<br/>
  <a link={acounter (z + 1)}>Increment</a><br/>
  <a link={acounter (z - 1)}>Decrement</a>
</body></xml>
fun main () =  counter (0)
