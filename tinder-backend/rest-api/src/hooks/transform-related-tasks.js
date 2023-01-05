// Use this hook to manipulate incoming or outgoing data.
// For more information on hooks see: http://docs.feathersjs.com/api/hooks.html

const transformTasklist = (tasklist) => ({
  ...tasklist,
  tasks: tasklist.tasks.map((task) => ({
    id: task.id,
    notes: task.tasklists_tasks.notes,
    points: task.tasklists_tasks.points,
  })),
});

// eslint-disable-next-line no-unused-vars
module.exports = (options = {}) => {
  return async (context) => {
    if (context.method === "find") {
      const tasklists = context.result.data.map((tasklist) => {
        const tasklistJSON = tasklist.toJSON();
        return transformTasklist(tasklistJSON);
      });
      context.result = {
        ...context.result,
        data: tasklists,
      };
    } else if (context.method === "get") {
      const tasklistJSON = context.result.toJSON();
      context.result = transformTasklist(tasklistJSON);
    }
    return context;
  };
};
