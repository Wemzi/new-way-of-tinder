const users = require("./users/users.service.js");
const tasks = require("./tasks/tasks.service.js");
const tasklists = require("./tasklists/tasklists.service.js");
// eslint-disable-next-line no-unused-vars
module.exports = function (app) {
  app.configure(users);
  app.configure(tasks);
  app.configure(tasklists);
};
