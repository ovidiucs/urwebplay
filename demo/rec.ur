fun main () = return <xml><body>
  <a link={other ()}>Go to the other one!</a>
  <a link={others ()}>Go to the others page!</a>
</body></xml>

and other () = return <xml><body>
  <a link={main ()}>Return to <tt>main</tt>!</a>
</body></xml>

and others () = return <xml><body>
  <a link={other ()}>Return to <tt>other</tt></a>
  </body></xml>
