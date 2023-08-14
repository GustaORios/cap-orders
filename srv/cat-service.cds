using my.orders as my from '../db/data-model';

service MainService
{
    annotate Orders with @Aggregation.ApplySupported : 
    {
        $Type : 'Aggregation.ApplySupportedType',
        GroupableProperties :
        [
            ShipCountry,
            OrderStatus
        ],
        AggregatableProperties :
        [
            {
                Property : OrderID,
                SupportedAggregationMethods :
                [
                    'countdistinct'
                ]
            }
        ]
    };

    annotate MainService.Orders with @odata.draft.enabled;
    annotate my.Orders with @fiori.draft.enabled;

    @Capabilities: { Insertable, Deletable, Updatable, Readable}
    entity Orders as
        projection on my.Orders;

    @Capabilities: { Insertable, Deletable, Updatable, Readable}
    annotate MainService.OrdersDetails with @odata.draft.enabled;
    annotate my.OrdersDetails with @fiori.draft.enabled;
    entity OrdersDetails as
        projection on my.OrdersDetails;

    @Capabilities: { Readable}
    entity Products as
        projection on my.Products;
}
