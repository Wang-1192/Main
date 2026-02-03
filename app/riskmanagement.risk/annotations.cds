using RiskManagementService as service from '../../srv/service';
annotate service.Risk with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'priority',
                Value : priority,
            },
            {
                $Type : 'UI.DataField',
                Label : 'description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'impact',
                Value : impact,
            },
            {
                $Type : 'UI.DataField',
                Label : 'criticility',
                Value : criticility,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BusinessPartner_BusinessPartner',
                Value : BusinessPartner_BusinessPartner,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'GeneralInformation',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'priority',
            Value : priority,
        },
        {
            $Type : 'UI.DataField',
            Label : 'description',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Label : 'impact',
            Value : impact,
        },
        {
            $Type : 'UI.DataField',
            Label : 'criticility',
            Value : criticility,
        },
        {
            $Type : 'UI.DataField',
            Value : BusinessPartner_BusinessPartner,
            Label : 'BusinessPartner_BusinessPartner',
        },
    ],
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : description,
        },
        TypeName : '',
        TypeNamePlural : '',
    },
);

annotate service.Risk with {
    BusinessPartner @(
        Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'BusinessPartner',
        Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : BusinessPartner_BusinessPartner,
                    ValueListProperty : 'BusinessPartner',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'BusinessPartnerFullName',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'BusinessPartnerIsBlocked',
                },
            ],
    },
        Common.ValueListWithFixedValues : true,
    )
};

