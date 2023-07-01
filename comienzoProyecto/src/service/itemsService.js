const items = require('../models/item');

const getItems = async (params) => {
  return items.getItems(params);
};

module.exports = {
  getItems
}