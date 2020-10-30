page 86004 PopdockIframeCardPart
{
    PageType = CardPart;
    InsertAllowed = false;
    ModifyAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            usercontrol(Sidebar; PopdockRoleCenter)
            {
                ApplicationArea = All;

            }
        }
    }
}

pageextension 86005 "Popdock Role Center" extends "Business Manager Role Center"
{
    layout
    {
        addbefore(Control55)
        {

            part(IframeFactBox; PopdockIframeCardPart)
            {
                ApplicationArea = all;
                Caption = 'Popdock Details';
            }
        }
    }
}

