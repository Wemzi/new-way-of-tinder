// Use this hook to manipulate incoming or outgoing data.
// For more information on hooks see: http://docs.feathersjs.com/api/hooks.html

// eslint-disable-next-line no-unused-vars
module.exports = (options = {}) => {
  return async (context) => {
    const { tasks } = context.data;
    if (!tasks) return context;

    const sequelize = context.app.get("sequelizeClient");
    const { tasklists } = sequelize.models;
    const id = context.result.id;
    const tasklist = await tasklists.findByPk(id);
    await tasklist.setTasks([]);
    for (const task of tasks) {
      await tasklist.addTasks(task.id, {
        through: { notes: task.notes, points: task.points },
      });
    }
    context.result.tasks = context.data.tasks;

    return context;
  };
};
