using { BusinessPartnerA2X } from './external/BusinessPartnerA2X.cds';

using { RiskManagement as my } from '../db/schema.cds';

@path : '/service/RiskManagementService'
service RiskManagementService
{
    annotate BusinessPartner with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'Manager' ] },
        { grant : [ 'READ' ], to : [ 'Viewer' ] },
        { grant : [ '*' ], to : [ 'authenticated-user' ] }
    ];

    annotate Mitigations with @restrict :
    [
        { grant : [ '*' ], to : [ 'Manager' ] },
        { grant : [ 'READ' ], to : [ 'Viewer' ] },
        { grant : [ '*' ], to : [ 'authenticated-user' ] }
    ];

    annotate Risk with @restrict :
    [
        { grant : [ '*' ], to : [ 'Manager' ] },
        { grant : [ 'READ' ], to : [ 'Viewer' ] },
        { grant : [ '*' ], to : [ 'authenticated-user' ] }
    ];

    @cds.redirection.target
    @odata.draft.enabled
    entity Risk as
        projection on my.Risk;

    @cds.redirection.target
    @odata.draft.enabled
    entity Mitigations as
        projection on my.Mitigations;

    @cds.redirection.target
    entity BusinessPartner as
        projection on BusinessPartnerA2X.A_BusinessPartner
        {
            BusinessPartner,
            Customer,
            Supplier,
            BusinessPartnerCategory,
            BusinessPartnerFullName,
            BusinessPartnerIsBlocked
        };
}

annotate RiskManagementService with @requires :
[
    'authenticated-user',
    'Viewer',
    'Manager'
];
