(* Workhorse function, which [main] will call *)
fun counter' n = <xml>
  Current counter: {[n]}<br/>
  <a link={counter (n + 1)}>Increment</a><br/>
  <a link={counter (n - 1)}>Decrement</a><br/>
</xml>
and square' z = <xml>
  Current value: {[z]}<br/>
  <a link={square (z * 2)}>Square</a><br/>
</xml>
and divide' p = <xml>
  Current value = {[p]}<br/>
  <a link={divide (p / 2)}>Divide</a><br/>
</xml>
and counter n = return <xml><body>{counter' n}</body></xml>

and square z = return <xml><body>{square' z}</body></xml>

and divide p = return <xml><body>{divide' p}</body></xml>


fun main () = return <xml><body>{counter' 0}{square' 2}{divide' 100}{url} </body></xml>

