const { authenticate } = require("@feathersjs/authentication").hooks;
const { setField } = require("feathers-authentication-hooks");
const { disallow } = require("feathers-hooks-common");

const syncTasklistsTasks = require("../../hooks/sync-tasklists-tasks");
const addTasks = require("../../hooks/add-tasks");
const transformRelatedTasks = require("../../hooks/transform-related-tasks");

module.exports = {
  before: {
    all: [authenticate("jwt")],
    find: [
      setField({ from: "params.user.id", as: "params.query.userId" }),
      addTasks(),
    ],
    get: [
      setField({ from: "params.user.id", as: "params.query.userId" }),
      addTasks(),
    ],
    create: [setField({ from: "params.user.id", as: "data.userId" })],
    update: [
      disallow(),
      setField({ from: "params.user.id", as: "params.query.userId" }),
    ],
    patch: [setField({ from: "params.user.id", as: "params.query.userId" })],
    remove: [setField({ from: "params.user.id", as: "params.query.userId" })],
  },

  after: {
    all: [],
    find: [transformRelatedTasks()],
    get: [transformRelatedTasks()],
    create: [syncTasklistsTasks()],
    update: [syncTasklistsTasks()],
    patch: [syncTasklistsTasks()],
    remove: [],
  },

  error: {
    all: [],
    find: [],
    get: [],
    create: [],
    update: [],
    patch: [],
    remove: [],
  },
};
