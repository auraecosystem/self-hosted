const db = {
  users: [],
  projects: [],
  wallets: [],
  ai_agents: []
};

export const get = (collection) => db[collection];

export const insert = (collection, record) => {
  db[collection].push(record);
  return record;
};

export const update = (collection, id, updates) => {
  const item = db[collection].find(r => r.id === id);
  if (item) Object.assign(item, updates);
  return item;
};

export const remove = (collection, id) => {
  db[collection] = db[collection].filter(r => r.id !== id);
};

export default db;
