sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'RiskManagement/Risk/test/integration/FirstJourney',
		'RiskManagement/Risk/test/integration/pages/RiskList',
		'RiskManagement/Risk/test/integration/pages/RiskObjectPage'
    ],
    function(JourneyRunner, opaJourney, RiskList, RiskObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('RiskManagement/Risk') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRiskList: RiskList,
					onTheRiskObjectPage: RiskObjectPage
                }
            },
            opaJourney.run
        );
    }
);