// For more information see: http://emberjs.com/guides/routing/

Meloria.Router.map(function() {
  this.resource("customers", function() {
    this.route("new");
  });
  this.resource("customer", { path: "customers/:customer_id" });
});

Meloria.Router.reopen({
  location: 'history'
});
