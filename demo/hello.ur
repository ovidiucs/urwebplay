
fun tomain () = return <xml><body>
     Another function
    </body></xml>
fun main () = return <xml>
  <head>
    <title>Hello world!</title>
  </head>
  <body>
    <h1>This is a test page!</h1>
    <h2>This is a header 2 font</h2>
    <h3>This is a header 3 font</h3>
    <a link={tomain ()}>Click</a>
  </body>
</xml>
