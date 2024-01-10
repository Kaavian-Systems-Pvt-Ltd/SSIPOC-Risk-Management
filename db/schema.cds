namespace RiskManagement;

using { BusinessPartnerA2X } from '../srv/external/BusinessPartnerA2X.cds';

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    extensible,
    managed,
    temporal
}
from '@sap/cds/common';

/**
 * Risk Entity
 */
entity Risk : managed
{
    key title : String(100)
        @Core.Description : 'Its a Title';
    prio : String(5);
    descr : String(100);
    impact : Integer;
    criticality : Integer;
    ID : UUID;
    muti : Association to one Mitigation;
    supplier : Association to one BusinessPartnerA2X.A_BusinessPartner;
}

entity Mitigation : managed
{
    key ID : UUID;
    description : String(100);
    owner : String(100);
    timeline : String(100);
    risks : Association to many Risk on risks.muti = $self;
}
