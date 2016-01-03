table user : { Id : int, Username : string, Password : string, Email : string }
	PRIMARY KEY Id

cookie userSession : {Username : string, Password : string}

(* gol
fun displayIfAuthenticated page = page

fun loginHandler row = return <xml><head/><body/></xml> 

fun loginHandler row = 
	re' <- oneOrNoRows1(SELECT user.Id
						FROM user
						WHERE user.Username = {{row.Username}}
						AND user.Password   = {{row.Password}});
	case re' of
		None => error <xml>Invalid Login</xml>
	   | Some re =>
				setCookie userSession
					{Value = row,
					 Expires = None,
					 Secure = False};
		return <xml>
			<head><title>Logged In</title></title>
			<body>
				<h1>Logged In</h1>
			</body>
			</xml>
*)
fun ifAuthenticated page row = 
	re' <- oneOrNoRows1(SELECT user.Id
						FROM user
						WHERE user.Username = {[row.Username]}
						AND user.Password   = {[row.Password]});

	case re' of
		None => error <xml>Invalid Login</xml>
	  | Some re =>
			setCookie userSession
					{Value = row,
					 Expires = None,
					 Secure = False};
					 page

fun loginHandler row = 
	ifAuthenticated (return <xml>
					<head><title>Logged In!</title></head>
					<body>
						<h1>Logged In</h1>
					</body>
				</xml>) row

fun login () = return
	<xml>
		<head><title>Login to UrBlog</title></head>
		<body>
			<form>
				<p>Username:<br/><textbox{#Username}/><br/>
				   Password:<br/><textbox{#Password}/><br/>
				   <submit value="Login" action={loginHandler}/>
				</p>
			</form>
		</body>
	</xml>
fun displayIfAuthenticated page = 
	c <- getCookie userSession;
	case c of
		None => return 
			<xml><head/>
				<body>
					<h1>Not Logged In</h1>
					<p><a link={login()}>Login</a></p>
				</body>
			</xml>
		| Some c' => ifAuthenticated page c'

