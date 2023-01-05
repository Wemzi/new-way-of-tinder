// Initializes the `tasklists` service on path `/tasklists`
const { Tasklists } = require("./tasklists.class");
const createModel = require("../../models/tasklists.model");
const createModelPivotTable = require("../../models/tasklists_tasks.model");
const hooks = require("./tasklists.hooks");

module.exports = function (app) {
  createModelPivotTable(app);
  const options = {
    Model: createModel(app),
    paginate: app.get("paginate"),
  };

  // Initialize our service with any options it requires
  app.use("/tasklists", new Tasklists(options, app));

  // Get our initialized service so that we can register hooks
  const service = app.service("tasklists");

  service.hooks(hooks);
};
