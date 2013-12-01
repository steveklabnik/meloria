// For more information see: http://emberjs.com/guides/routing/

Meloria.Router.map(function() {
  this.resource("customers");
  this.resource("customer", { path: "customers/:customer_id" });
});

Meloria.Router.reopen({
  location: 'history'
});
