namespace RiskManagement;

using { BusinessPartnerA2X } from '../srv/external/BusinessPartnerA2X.cds';

entity Risk
{
    key ID : UUID;
    title : String(100);
    priority : String(5);
    description : String(100);
    impact : Integer;
    criticility : Integer;
    mitigations : Association to many Mitigations on mitigations.risk = $self;
    BusinessPartner : Association to one BusinessPartnerA2X.A_BusinessPartner;
}

entity Mitigations
{
    key ID : UUID;
    createAt : String(100);
    createBy : String(100);
    description : String(100);
    owner : String(100);
    timeline : String(100);
    risk : Association to one Risk;
}
