page 86000 PopdockVendCardFactBoxPart
{
    PageType = CardPart;
    InsertAllowed = false;
    ModifyAllowed = false;
    DeleteAllowed = false;
    SourceTable = "Vendor";

    layout
    {
        area(Content)
        {
            usercontrol(Sidebar; PopdockFactBox)
            {
                ApplicationArea = All;
            }
        }
    }

    trigger OnAfterGetRecord()
    var
        Url: Text;
    begin
        //Initialize Factbox
        Url := 'https://widget-weu.popdock.com/embed/hy-4WSxDZk-SzssWMll40A?theme=dynamics_bc&number=' + rec."No.";
        CurrPage.Sidebar.CreateSidebar(Url);
    end;
}

pageextension 86001 "Popdock Vendor Card" extends "Vendor Card"
{
    layout
    {
        addfirst(factboxes)
        {
            part(PopdockVendCardFactBoxPart; PopdockVendCardFactBoxPart)
            {
                ApplicationArea = all;
                caption = 'CRM Vendor Detail';
                SubPageLink = "No." = FIELD("No.");
            }
        }

    }
}