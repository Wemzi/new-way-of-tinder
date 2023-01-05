const assert = require('assert');
const app = require('../../src/app');

describe('\'tasklists\' service', () => {
  it('registered the service', () => {
    const service = app.service('tasklists');

    assert.ok(service, 'Registered the service');
  });
});
