fun target () = return <xml><body>
  Welcome!
</body></xml>
fun target2 () = return <xml><body>
 Another target
 </body></xml>
fun main () = return <xml><body>
    <p><a link={target ()}>Go there</a></p>
    <a link={target2 ()}>Go here</a>
</body></xml>
