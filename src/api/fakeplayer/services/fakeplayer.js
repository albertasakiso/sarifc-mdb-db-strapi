'use strict';

/**
 * fakeplayer service.
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::fakeplayer.fakeplayer');
