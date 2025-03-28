"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const useController_1 = require("../controllers/useController");
const router = (0, express_1.Router)();
router.get("/", useController_1.getUsers);
exports.default = router;
