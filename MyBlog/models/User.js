var mongoose = require('mongoose');
var userSchema = require('../schemas/users');

/*
*   User
*
**/

module.exports = mongoose.model('User',userSchema);