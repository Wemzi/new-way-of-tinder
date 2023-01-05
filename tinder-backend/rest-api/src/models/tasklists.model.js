// See https://sequelize.org/master/manual/model-basics.html
// for more of what you can do here.
const Sequelize = require("sequelize");
const DataTypes = Sequelize.DataTypes;

module.exports = function (app) {
  const sequelizeClient = app.get("sequelizeClient");
  const tasklists = sequelizeClient.define(
    "tasklists",
    {
      title: {
        type: DataTypes.STRING,
        allowNull: false,
      },
      description: {
        type: DataTypes.STRING,
        allowNull: false,
      },
      status: {
        type: DataTypes.ENUM,
        allowNull: false,
        values: ["draft", "published"],
        default: "draft",
      },
    },
    {
      hooks: {
        beforeCount(options) {
          options.raw = true;
        },
      },
    }
  );

  // eslint-disable-next-line no-unused-vars
  tasklists.associate = function (models) {
    // Define associations here
    // See https://sequelize.org/master/manual/assocs.html
    const { users, tasklists_tasks, tasks } = models;
    tasklists.belongsTo(users);
    tasklists.belongsToMany(tasks, { through: tasklists_tasks });
  };

  return tasklists;
};
