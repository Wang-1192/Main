sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"riskmanagement/risk/test/integration/pages/RiskList",
	"riskmanagement/risk/test/integration/pages/RiskObjectPage"
], function (JourneyRunner, RiskList, RiskObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('riskmanagement/risk') + '/test/flpSandbox.html#riskmanagementrisk-tile',
        pages: {
			onTheRiskList: RiskList,
			onTheRiskObjectPage: RiskObjectPage
        },
        async: true
    });

    return runner;
});

