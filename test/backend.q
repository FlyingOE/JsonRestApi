\l ../jsonrestapi.q

.get.serve["/";
  .res.ok {[req]
    raze "Hello there, my favourite browser:  ", raze req[`headers;`$"User-Agent"]}]

.get.serve["/hello";
  .res.ok {[req]
    "hello"}]

.get.serve["/json";
  .res.ok {[req]
    `a`b`c!1 2 3}]

.post.serve["/goodbye";
  .res.ok {[req]
    raze "Goodbye now ",raze req[`body;`name]}]

.get.serve["/cookie";
  .res.okWithAuthCookie["s355IonT0k3n";] {[req]
    "Check your cookies!"}]

.jra.listen 8000
