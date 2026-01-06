const express = require('express');
const router = express.Router();
const authController = require('../controllers/authControllers');
const userAuth = require('../middleware/userAuth');
const { getUserRegistrations,getVesselStatusCounts } = require('../controllers/registrationControllers');
const {
    getUnsettledVessels,getActiveAnnouncements,getUserTransactions
} = require('../controllers/fisherFolkControllers');
// fisherfolk
router.get('/currentApplicant',userAuth, authController.getCurrentApplicant);
// fisherfolks
router.get('/user/registrations', userAuth, getUserRegistrations);
// User dashboard route
router.get('/userDashboard', userAuth, authController.getUserDashboard);
router.get('/unsettled-vessels', userAuth, getUnsettledVessels );

router.get('/vessels/status-count',userAuth, getVesselStatusCounts);

router.get('/dashboard-announcements', userAuth, getActiveAnnouncements);
router.get('/user/transactions',userAuth,getUserTransactions);

module.exports = router;