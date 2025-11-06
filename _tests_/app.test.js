const request = require('supertest');
const app = require('../index');

describe('GET /', () => {
  it('should return Hello from new one fdsgfhhgbfv   CI/CD!', async () => {
    const res = await request(app).get('/');
    expect(res.statusCode).toEqual(200);
    expect(res.text).toBe('Hello CI/CD!');
  });
});
