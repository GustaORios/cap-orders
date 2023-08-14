sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ordensfiori/test/integration/FirstJourney',
		'ordensfiori/test/integration/pages/OrdersList',
		'ordensfiori/test/integration/pages/OrdersObjectPage',
		'ordensfiori/test/integration/pages/OrdersDetailsObjectPage'
    ],
    function(JourneyRunner, opaJourney, OrdersList, OrdersObjectPage, OrdersDetailsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ordensfiori') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheOrdersList: OrdersList,
					onTheOrdersObjectPage: OrdersObjectPage,
					onTheOrdersDetailsObjectPage: OrdersDetailsObjectPage
                }
            },
            opaJourney.run
        );
    }
);