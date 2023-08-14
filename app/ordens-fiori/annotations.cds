using MainService as service from '../../srv/cat-service';


annotate service.Orders with @UI.Facets : 
[
    {
        $Type : 'UI.ReferenceFacet',
        Label : 'General Information',
        ID : 'GeneratedFacet1',
        Target : '@UI.FieldGroup#GeneratedGroup1'
    },
    {
        $Type : 'UI.ReferenceFacet',
        Label : 'Detalhes da ordem',
        ID : 'Detalhesdoproduto',
        Target : 'OrdersDetails/@UI.LineItem#Detalhesdoproduto'
    }
];

annotate service.Orders with @UI.FieldGroup#GeneratedGroup1 : 
{
    Data :
    [
        {
            $Type : 'UI.DataField',
            Value : RequiredDate
        },
        {
            $Type : 'UI.DataField',
            Value : ShippedDate
        },
        {
            $Type : 'UI.DataField',
            Value : Freight
        },
        {
            $Type : 'UI.DataField',
            Value : ShipName
        },
        {
            $Type : 'UI.DataField',
            Value : ShipCountry
        },
        {
            $Type : 'UI.DataField',
            Value : OrderStatus,
            Criticality : OrderID,
            CriticalityRepresentation : #WithIcon,
        }
    ]
};

annotate service.Orders with @UI.LineItem : 
[
    {
        $Type : 'UI.DataField',
        Value : OrderID
    },
    {
        $Type : 'UI.DataField',
        Value : RequiredDate
    },
    {
        $Type : 'UI.DataField',
        Value : ShippedDate
    },
    {
        $Type : 'UI.DataField',
        Value : ShipName
    },
    {
        $Type : 'UI.DataField',
        Value : ShipCountry
    },
    {
        $Type : 'UI.DataField',
        Value : Freight
    },
    {
        $Type : 'UI.DataField',
        Value : OrderStatus,
    }
];

annotate service.OrdersDetails with @UI.Facets : 
[
    {
        $Type : 'UI.ReferenceFacet',
        Label : 'Detalhes do produto',
        ID : 'Detalhesdoproduto',
        Target : 'Prdocuts/@UI.LineItem#Detalhesdoproduto'
    }
];

annotate service.OrdersDetails with @UI.LineItem#Detalhesdoproduto : 
[
    {
        $Type : 'UI.DataField',
        Value : Discount
    },
    {
        $Type : 'UI.DataField',
        Value : OrderID
    },
    {
        $Type : 'UI.DataField',
        Value : ProductID
    },
    {
        $Type : 'UI.DataField',
        Value : Quantity
    },
    {
        $Type : 'UI.DataField',
        Value : UnitPrice
    },
    {
        $Type : 'UI.DataField',
        Value : Prdocuts.ProductName
    }
];

annotate service.Products with @UI.LineItem#Detalhesdoproduto : 
[
    {
        $Type : 'UI.DataField',
        Value : Discontinued
    },
    {
        $Type : 'UI.DataField',
        Value : ProductName
    },
    {
        $Type : 'UI.DataField',
        Value : QuantityPerUnit
    },
    {
        $Type : 'UI.DataField',
        Value : UnitPrice
    },
    {
        $Type : 'UI.DataField',
        Value : UnitsInStock
    },
    {
        $Type : 'UI.DataField',
        Value : UnitsOnOrder
    },
    {
        $Type : 'UI.DataField',
        Value : ProductID
    }
];
annotate service.Orders with @(
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Table View',
    },
    Analytics.AggregatedProperty #OrderID_countdistinct : {
        $Type : 'Analytics.AggregatedPropertyType',
        Name : 'OrderID_countdistinct',
        AggregatableProperty : OrderID,
        AggregationMethod : 'countdistinct',
        ![@Common.Label] : 'Quantidade de ordens',
    },
    UI.Chart #chartView : {
        $Type : 'UI.ChartDefinitionType',
        ChartType : #Column,
        Dimensions : [
            ShipCountry,
        ],
        DynamicMeasures : [
            '@Analytics.AggregatedProperty#OrderID_countdistinct',
        ],
    },
    UI.SelectionPresentationVariant #chartView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.Chart#chartView',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Chart View',
    }
);
annotate service.Orders with @(
    UI.Chart #alpChart : {
        $Type : 'UI.ChartDefinitionType',
        ChartType : #Column,
        Dimensions : [
            ShipCountry,
        ],
        DynamicMeasures : [
            '@Analytics.AggregatedProperty#OrderID_countdistinct',
        ],
        Title : 'Quantidade de ordens por país',
    }
);
annotate service.Orders with @(
    UI.Chart #visualFilter : {
        $Type : 'UI.ChartDefinitionType',
        ChartType : #Bar,
        Dimensions : [
            OrderStatus,
        ],
        DynamicMeasures : [
            '@Analytics.AggregatedProperty#OrderID_countdistinct',
        ],
    },
    UI.PresentationVariant #visualFilter : {
        $Type : 'UI.PresentationVariantType',
        Visualizations : [
            '@UI.Chart#visualFilter',
        ],
    },
    UI.SelectionFields : [
        OrderStatus,
    ]
);
annotate service.Orders with {
    OrderStatus @Common.ValueList #visualFilter : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Orders',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : OrderStatus,
                ValueListProperty : 'OrderStatus',
            },
        ],
        PresentationVariantQualifier : 'visualFilter',
    }
};
