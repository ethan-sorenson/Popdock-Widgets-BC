page 86006 PopdockVendListFactBoxPart
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

pageextension 86007 "Popdock Vendor List" extends "Vendor List"
{
    layout
    {
        addfirst(factboxes)
        {
            part(PopdockVendListFactBoxPart; PopdockVendListFactBoxPart)
            {
                ApplicationArea = all;
                caption = 'CRM Vendor Detail';
                SubPageLink = "No." = FIELD("No.");
            }
        }

    }
}