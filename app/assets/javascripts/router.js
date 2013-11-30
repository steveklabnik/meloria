// For more information see: http://emberjs.com/guides/routing/

Meloria.Router.map(function() {
  this.resource("customers", function() {
    this.resource("customer", { path: ":customer_id" });
  });
});
