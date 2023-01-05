// See https://sequelize.org/master/manual/model-basics.html
// for more of what you can do here.
const Sequelize = require("sequelize");
const DataTypes = Sequelize.DataTypes;

module.exports = function (app) {
  const sequelizeClient = app.get("sequelizeClient");
  const tasklists_tasks = sequelizeClient.define(
    "tasklists_tasks",
    {
      // id: {
      //   type: DataTypes.INTEGER,
      //   primaryKey: true,
      //   autoIncrement: true,
      //   allowNull: false,
      // },
      notes: {
        type: DataTypes.STRING,
      },
      points: {
        type: DataTypes.INTEGER,
        allowNull: false,
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
  tasklists_tasks.associate = function (models) {
    // Define associations here
    // See https://sequelize.org/master/manual/assocs.html
    const { tasklists } = models;
    tasklists_tasks.belongsTo(tasklists);
  };

  return tasklists_tasks;
};
